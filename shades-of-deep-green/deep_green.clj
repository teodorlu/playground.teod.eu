(ns deep-green
  (:require [mikera.image.core :as i]
            [mikera.image.colours :as c]
            [img]))

(let [img (img/new 1920 1080)]
  (img/fill! img (img/random-color))
  (img/show img))
