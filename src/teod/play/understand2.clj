(ns teod.play.understand2
  (:require
   [nextjournal.clerk :as clerk]
   [nextjournal.clerk.viewer :as v]
   [teod.play.cli :as cli]
   [datascript.core :as d]))

(set! *print-namespace-maps* false)

;; # Building a reflective understanding—part 2

(defn big-table [x]
  (v/with-viewer (dissoc v/table-viewer :page-size)
    x))

(defn conform-relation [page]
  (cond-> page
    (:slug page) (assoc :page/slug (:slug page))
    (:uuid page) (assoc :page/uuid (:uuid page))))

(defn relations []
  (->> (cli/files->relations {})
       vals
       (map conform-relation)
       (sort-by :page/slug)))


^{::clerk/width :full}
(big-table
 (->> (relations)
      (take 4)))

(clerk/table
 (->> (relations)
      (filter (fn [rel]
                (re-matches #".*Simple.*" (:title rel))))))

;; I currently do not have any metadata for:
;;
;; - The fact that Simple Made Easy is by Rich Hickey
;; - The fact that Simple Made Easy is a talk with a youtube link

;; How about `:author/uuid` ... ?

;; This is when I probably want a datascript database of my stuff.
;; ... and I (think) I want to keep my current file storage system, just add an index.

(defn grep-title [re xs]
  (filter #(re-matches re (:title %)) xs))

^{:nextjournal.clerk/auto-expand-results? true}
(->> (relations)
     (grep-title #".*[Cc]lerk.*"))

(comment
  (->> (relations)
       shuffle
       first)
  ;; =>
  {:slug "the-commons",
   :title "The Commons",
   :readiness :wtf-is-this,
   :uuid "3eab9578-dec5-4c21-b5b6-7c18d6258d62",
   :author-url "https://teod.eu",
   :created "2022-09-03",
   :lang :en})
;; observations:
;;
;; - `:slug` is unique
;; - `:uuid` is unique
;;
;; (for a given point in time)
;;
;; could have opted for ns qualified keywords like
;;
;;     :teod.play/slug
;;     :teod.play/uuid
;;
;; ... but ... I didn't!

(def schema
  "A schema for Teodor's play.

  Who plays with schemas? Better not wonder too deeply about that question."
  {;; we already have a bunch of unqualified :slug and :uuid
   ;; keep them for now!
   ;; we can fixup later if we want to.
   :slug {:db/unique :db.unique/identity}
   :uuid {:db/unique :db.unique/identity}
   ;; But use namespace qualified name for new properties.
   ;;
   ;; NOTE. I'm not sure I _want_ this key. It's a bit ... too much.
   ;;
   ;; Alternatives:
   ;;
   ;; - `:doc/authors`
   :teod.play/authors {:db/cardinality :db.cardinality/many
                       :db/valueType   :db.type/ref}})

(defn relations->datascript-db [rels]
  (let [conn (d/create-conn schema)]
    (d/transact! conn rels)
    @conn))

(defonce db (relations->datascript-db (relations)))

(comment
  ;; the sole purpose of (do ,, nil) is to avoid slowdown from printing the
  ;; whole db to the repl.
  (do (alter-var-root #'db (constantly (relations->datascript-db (relations)))) :done)
  )

(type db)

;; I've got a real datascript db.
;; Nice!

(into {} (:teod.play/authors (d/entity db [:slug "simple-made-easy"])))

(into {} (d/entity db [:slug "simple-made-easy"]))

^{:nextjournal.clerk/auto-expand-results? true}
(into {}
      (-> (d/entity db [:slug "simple-made-easy"])
          :teod.play/authors))

^{:nextjournal.clerk/auto-expand-results? true}
(d/pull db '[*] [:slug "simple-made-easy"])

^{:nextjournal.clerk/auto-expand-results? true}
(d/pull db
        '[:db/id :slug {:teod.play/authors [*]}]
        [:slug "simple-made-easy"])
(comment
  ;; gir:
  {:slug "simple-made-easy",
   :teod.play/authors
   [{:db/id 267,
     :created "2023-03-10",
     :form :remote-reference,
     :lang :en,
     :readiness :wtf-is-this,
     :slug "rich-hickey",
     :title "Rich Hickey",
     :uuid "a172782b-bceb-4b44-afdf-7a2348d02970"}]})

;; GØY!

;; hvor mange dokumenter i databasen?

(d/q '[:find (count ?e) .
       :where [?e :slug ?slug]]
     db)

;; per 2024-02-25, 368.
;; Nice!

(into {}
      (d/entity db [:slug "journal"]))


(d/q '[:find (count ?e) .
       :where [?e :db/id]]
     db)

^{:nextjournal.clerk/visibility {:code :hide}}
(clerk/html [:div {:style {:height "50vh"}}])
