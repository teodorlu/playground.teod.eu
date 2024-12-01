(ns day1
  (:require [clojure.string :as str]
            [nextjournal.clerk :as clerk]))

(def example-input
  "
3   4
4   3
2   5
1   3
3   9
3   3
")

;; > Maybe the lists are only off by a small amount! To find out, pair up the
;; > numbers and measure how far apart they are. Pair up the smallest number in
;; > the left list with the smallest number in the right list, then the
;; > second-smallest left number with the second-smallest right number, and so
;; > on.

;; It appears we want each list as a column!

(defn parse [s]
  (let [cells
        (->> (str/trim s)
             (str/split-lines)
             (map #(str/split % #"\s+"))
             (map (partial map parse-long)))]
    [(map first cells)
     (map second cells)]))

(parse example-input)

;; > Within each pair, figure out how far apart the two numbers are; you'll need
;; > to add up all of those distances. For example, if you pair up a 3 from the
;; > left list with a 7 from the right list, the distance apart is 4; if you
;; > pair up a 9 with a 3, the distance apart is 6.

(def distance (comp abs -))

(defn solve [problem]
  (let [[left right] (parse problem)]
    (reduce + (map distance (sort left) (sort right)))))

(solve example-input)

(assert (= 2086478
           (solve (slurp "input/day1.txt")))
        "Avoid regressions when refactoring!")

;; Finished at 16:29

^{::clerk/visibility {:code :hide}}
(clerk/html [:div {:style {:height "40vh"}}])

^{::clerk/visibility {:code :hide :result :hide}}
(comment
  (clerk/clear-cache!)
  (clerk/halt!)
  (clerk/serve! {}))
