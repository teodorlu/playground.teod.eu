# DO NOT EDIT directly -- THIS MAKEFILE IS GENERATED
# SEE `make clean` TARGET


# Generate target for root index
index.html: index.clj a-perfect-day/index.html aphorisms/index.html attention-design/index.html bb-install/index.html bimodal-strategies/index.html bitemporal-worldview/index.html burnout-meaning-deep-work/index.html c-journal/index.html capability-feature-assembly/index.html clojure-interactive/index.html curious/index.html deliverable/index.html discover-difference/index.html document-transform-pandoc-clojure/index.html documentation/index.html emacs/index.html existensialism/index.html feedback-interface-implementation/index.html fuse/index.html git-commit-messages/index.html grow-knowlege-together/index.html heterarchies/index.html how-to-build-ideas/index.html inspiration-howto/index.html intention-relation-action/index.html interaction-value-differential/index.html interface-perception-design/index.html iterate-knowledge-archipelago/index.html journal/index.html knowledge-worker/index.html kosekoding/index.html learn-design/index.html literature-notes/index.html lost-in-specificity/index.html makefile-edn/index.html maksimal-opsjonalitet/index.html many-small-functions-bad/index.html narrow-statements/index.html narrow-waist/index.html nix/index.html oggpo/index.html okrs-are-scale-invariant/index.html open-problems/index.html orthogonality-enables-optionality/index.html perception-reality/index.html phenomenology/index.html play.teod.eu-retrospective/index.html practice-deliberately-with-journals/index.html precise-general-novel/index.html product-for-developers/index.html purposeful-software-development/index.html rdf-intro/index.html sannhet-deskriptiv-preskriptiv/index.html shabakka/index.html software-architecture/index.html software-architecture-as-language-construction/index.html solarpunk-designs/index.html sterility-mess-utility/index.html strong-relations/index.html terminalen-motorsag/index.html thesis-antithesis-synthesis/index.html twitter-howto/index.html unix-signals-intro/index.html watchexec-make-dev/index.html why-dont-we-have-a-strategy/index.html wip/index.html xml-on-the-web/index.html a-perfect-day/play.edn aphorisms/play.edn attention-design/play.edn bb-install/play.edn bimodal-strategies/play.edn bitemporal-worldview/play.edn burnout-meaning-deep-work/play.edn c-journal/play.edn capability-feature-assembly/play.edn clojure-interactive/play.edn curious/play.edn deliverable/play.edn discover-difference/play.edn document-transform-pandoc-clojure/play.edn documentation/play.edn emacs/play.edn existensialism/play.edn feedback-interface-implementation/play.edn fuse/play.edn git-commit-messages/play.edn grow-knowlege-together/play.edn heterarchies/play.edn how-to-build-ideas/play.edn inspiration-howto/play.edn intention-relation-action/play.edn interaction-value-differential/play.edn interface-perception-design/play.edn iterate-knowledge-archipelago/play.edn journal/play.edn knowledge-worker/play.edn kosekoding/play.edn learn-design/play.edn literature-notes/play.edn lost-in-specificity/play.edn makefile-edn/play.edn maksimal-opsjonalitet/play.edn many-small-functions-bad/play.edn narrow-statements/play.edn narrow-waist/play.edn nix/play.edn oggpo/play.edn okrs-are-scale-invariant/play.edn open-problems/play.edn orthogonality-enables-optionality/play.edn perception-reality/play.edn phenomenology/play.edn play.teod.eu-retrospective/play.edn practice-deliberately-with-journals/play.edn precise-general-novel/play.edn product-for-developers/play.edn purposeful-software-development/play.edn rdf-intro/play.edn sannhet-deskriptiv-preskriptiv/play.edn shabakka/play.edn software-architecture/play.edn software-architecture-as-language-construction/play.edn solarpunk-designs/play.edn sterility-mess-utility/play.edn strong-relations/play.edn terminalen-motorsag/play.edn thesis-antithesis-synthesis/play.edn twitter-howto/play.edn unix-signals-intro/play.edn watchexec-make-dev/play.edn why-dont-we-have-a-strategy/play.edn wip/play.edn xml-on-the-web/play.edn
	./index.clj


# Generate target for each page
a-perfect-day/index.html: a-perfect-day/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i a-perfect-day/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o a-perfect-day/index.html --standalone --toc -H header-default-include.html

aphorisms/index.html: aphorisms/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i aphorisms/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o aphorisms/index.html --standalone --toc -H header-default-include.html

attention-design/index.html: attention-design/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i attention-design/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o attention-design/index.html --standalone --toc -H header-default-include.html

bb-install/index.html: bb-install/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i bb-install/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o bb-install/index.html --standalone --toc -H header-default-include.html

bimodal-strategies/index.html: bimodal-strategies/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i bimodal-strategies/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o bimodal-strategies/index.html --standalone --toc -H header-default-include.html

bitemporal-worldview/index.html: bitemporal-worldview/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i bitemporal-worldview/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o bitemporal-worldview/index.html --standalone --toc -H header-default-include.html

burnout-meaning-deep-work/index.html: burnout-meaning-deep-work/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i burnout-meaning-deep-work/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o burnout-meaning-deep-work/index.html --standalone --toc -H header-default-include.html

c-journal/index.html: c-journal/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i c-journal/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o c-journal/index.html --standalone --toc -H header-default-include.html

capability-feature-assembly/index.html: capability-feature-assembly/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i capability-feature-assembly/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o capability-feature-assembly/index.html --standalone --toc -H header-default-include.html

clojure-interactive/index.html: clojure-interactive/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i clojure-interactive/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o clojure-interactive/index.html --standalone --toc -H header-default-include.html

curious/index.html: curious/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i curious/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o curious/index.html --standalone --toc -H header-default-include.html

deliverable/index.html: deliverable/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i deliverable/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o deliverable/index.html --standalone --toc -H header-default-include.html

discover-difference/index.html: discover-difference/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i discover-difference/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o discover-difference/index.html --standalone --toc -H header-default-include.html

document-transform-pandoc-clojure/index.html: document-transform-pandoc-clojure/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i document-transform-pandoc-clojure/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o document-transform-pandoc-clojure/index.html --standalone --toc -H header-default-include.html

documentation/index.html: documentation/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i documentation/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o documentation/index.html --standalone --toc -H header-default-include.html

emacs/index.html: emacs/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i emacs/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o emacs/index.html --standalone --toc -H header-default-include.html

existensialism/index.html: existensialism/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i existensialism/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o existensialism/index.html --standalone --toc -H header-default-include.html

feedback-interface-implementation/index.html: feedback-interface-implementation/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i feedback-interface-implementation/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o feedback-interface-implementation/index.html --standalone --toc -H header-default-include.html

fuse/index.html: fuse/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i fuse/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o fuse/index.html --standalone --toc -H header-default-include.html

git-commit-messages/index.html: git-commit-messages/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i git-commit-messages/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o git-commit-messages/index.html --standalone --toc -H header-default-include.html

grow-knowlege-together/index.html: grow-knowlege-together/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i grow-knowlege-together/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o grow-knowlege-together/index.html --standalone --toc -H header-default-include.html

heterarchies/index.html: heterarchies/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i heterarchies/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o heterarchies/index.html --standalone --toc -H header-default-include.html

how-to-build-ideas/index.html: how-to-build-ideas/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i how-to-build-ideas/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o how-to-build-ideas/index.html --standalone --toc -H header-default-include.html

inspiration-howto/index.html: inspiration-howto/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i inspiration-howto/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o inspiration-howto/index.html --standalone --toc -H header-default-include.html

intention-relation-action/index.html: intention-relation-action/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i intention-relation-action/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o intention-relation-action/index.html --standalone --toc -H header-default-include.html

interaction-value-differential/index.html: interaction-value-differential/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i interaction-value-differential/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o interaction-value-differential/index.html --standalone --toc -H header-default-include.html

interface-perception-design/index.html: interface-perception-design/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i interface-perception-design/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o interface-perception-design/index.html --standalone --toc -H header-default-include.html

iterate-knowledge-archipelago/index.html: iterate-knowledge-archipelago/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i iterate-knowledge-archipelago/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o iterate-knowledge-archipelago/index.html --standalone --toc -H header-default-include.html

journal/index.html: journal/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i journal/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o journal/index.html --standalone --toc -H header-default-include.html

knowledge-worker/index.html: knowledge-worker/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i knowledge-worker/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o knowledge-worker/index.html --standalone --toc -H header-default-include.html

kosekoding/index.html: kosekoding/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i kosekoding/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o kosekoding/index.html --standalone --toc -H header-default-include.html

learn-design/index.html: learn-design/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i learn-design/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o learn-design/index.html --standalone --toc -H header-default-include.html

literature-notes/index.html: literature-notes/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i literature-notes/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o literature-notes/index.html --standalone --toc -H header-default-include.html

lost-in-specificity/index.html: lost-in-specificity/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i lost-in-specificity/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o lost-in-specificity/index.html --standalone --toc -H header-default-include.html

makefile-edn/index.html: makefile-edn/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i makefile-edn/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o makefile-edn/index.html --standalone --toc -H header-default-include.html

maksimal-opsjonalitet/index.html: maksimal-opsjonalitet/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i maksimal-opsjonalitet/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o maksimal-opsjonalitet/index.html --standalone --toc -H header-default-include.html

many-small-functions-bad/index.html: many-small-functions-bad/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i many-small-functions-bad/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o many-small-functions-bad/index.html --standalone --toc -H header-default-include.html

narrow-statements/index.html: narrow-statements/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i narrow-statements/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o narrow-statements/index.html --standalone --toc -H header-default-include.html

narrow-waist/index.html: narrow-waist/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i narrow-waist/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o narrow-waist/index.html --standalone --toc -H header-default-include.html

nix/index.html: nix/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i nix/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o nix/index.html --standalone --toc -H header-default-include.html

oggpo/index.html: oggpo/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i oggpo/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o oggpo/index.html --standalone --toc -H header-default-include.html

okrs-are-scale-invariant/index.html: okrs-are-scale-invariant/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i okrs-are-scale-invariant/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o okrs-are-scale-invariant/index.html --standalone --toc -H header-default-include.html

open-problems/index.html: open-problems/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i open-problems/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o open-problems/index.html --standalone --toc -H header-default-include.html

orthogonality-enables-optionality/index.html: orthogonality-enables-optionality/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i orthogonality-enables-optionality/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o orthogonality-enables-optionality/index.html --standalone --toc -H header-default-include.html

perception-reality/index.html: perception-reality/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i perception-reality/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o perception-reality/index.html --standalone --toc -H header-default-include.html

phenomenology/index.html: phenomenology/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i phenomenology/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o phenomenology/index.html --standalone --toc -H header-default-include.html

play.teod.eu-retrospective/index.html: play.teod.eu-retrospective/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i play.teod.eu-retrospective/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o play.teod.eu-retrospective/index.html --standalone --toc -H header-default-include.html

practice-deliberately-with-journals/index.html: practice-deliberately-with-journals/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i practice-deliberately-with-journals/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o practice-deliberately-with-journals/index.html --standalone --toc -H header-default-include.html

precise-general-novel/index.html: precise-general-novel/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i precise-general-novel/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o precise-general-novel/index.html --standalone --toc -H header-default-include.html

product-for-developers/index.html: product-for-developers/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i product-for-developers/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o product-for-developers/index.html --standalone --toc -H header-default-include.html

purposeful-software-development/index.html: purposeful-software-development/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i purposeful-software-development/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o purposeful-software-development/index.html --standalone --toc -H header-default-include.html

rdf-intro/index.html: rdf-intro/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i rdf-intro/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o rdf-intro/index.html --standalone --toc -H header-default-include.html

sannhet-deskriptiv-preskriptiv/index.html: sannhet-deskriptiv-preskriptiv/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i sannhet-deskriptiv-preskriptiv/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o sannhet-deskriptiv-preskriptiv/index.html --standalone --toc -H header-default-include.html

shabakka/index.html: shabakka/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i shabakka/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o shabakka/index.html --standalone --toc -H header-default-include.html

software-architecture/index.html: software-architecture/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i software-architecture/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o software-architecture/index.html --standalone --toc -H header-default-include.html

software-architecture-as-language-construction/index.html: software-architecture-as-language-construction/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i software-architecture-as-language-construction/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o software-architecture-as-language-construction/index.html --standalone --toc -H header-default-include.html

solarpunk-designs/index.html: solarpunk-designs/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i solarpunk-designs/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o solarpunk-designs/index.html --standalone --toc -H header-default-include.html

sterility-mess-utility/index.html: sterility-mess-utility/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i sterility-mess-utility/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o sterility-mess-utility/index.html --standalone --toc -H header-default-include.html

strong-relations/index.html: strong-relations/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i strong-relations/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o strong-relations/index.html --standalone --toc -H header-default-include.html

terminalen-motorsag/index.html: terminalen-motorsag/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i terminalen-motorsag/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o terminalen-motorsag/index.html --standalone --toc -H header-default-include.html

thesis-antithesis-synthesis/index.html: thesis-antithesis-synthesis/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i thesis-antithesis-synthesis/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o thesis-antithesis-synthesis/index.html --standalone --toc -H header-default-include.html

twitter-howto/index.html: twitter-howto/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i twitter-howto/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o twitter-howto/index.html --standalone --toc -H header-default-include.html

unix-signals-intro/index.html: unix-signals-intro/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i unix-signals-intro/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o unix-signals-intro/index.html --standalone --toc -H header-default-include.html

watchexec-make-dev/index.html: watchexec-make-dev/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i watchexec-make-dev/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o watchexec-make-dev/index.html --standalone --toc -H header-default-include.html

why-dont-we-have-a-strategy/index.html: why-dont-we-have-a-strategy/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i why-dont-we-have-a-strategy/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o why-dont-we-have-a-strategy/index.html --standalone --toc -H header-default-include.html

wip/index.html: wip/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i wip/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o wip/index.html --standalone --toc -H header-default-include.html

xml-on-the-web/index.html: xml-on-the-web/index.org
	pandoc -s --shift-heading-level-by=1 --from=org+smart -i xml-on-the-web/index.org -t json | ./play.clj filter resolve-links | pandoc -f json -o xml-on-the-web/index.html --standalone --toc -H header-default-include.html


# Note: generating the makefile with the makefile is sometimes problematic.
.PHONY: makefile
makefile:
	./play.clj makefile


# Rengenerate the index
# Note: we don't remove the makefile, as that gets us ... stuck.
.PHONY: clean
clean:
	rm -f index.html


# Regenerate everything
.PHONY: ultraclean
ultraclean: clean
	rm -f index.html a-perfect-day/index.html aphorisms/index.html attention-design/index.html bb-install/index.html bimodal-strategies/index.html bitemporal-worldview/index.html burnout-meaning-deep-work/index.html c-journal/index.html capability-feature-assembly/index.html clojure-interactive/index.html curious/index.html deliverable/index.html discover-difference/index.html document-transform-pandoc-clojure/index.html documentation/index.html emacs/index.html existensialism/index.html feedback-interface-implementation/index.html fuse/index.html git-commit-messages/index.html grow-knowlege-together/index.html heterarchies/index.html how-to-build-ideas/index.html inspiration-howto/index.html intention-relation-action/index.html interaction-value-differential/index.html interface-perception-design/index.html iterate-knowledge-archipelago/index.html journal/index.html knowledge-worker/index.html kosekoding/index.html learn-design/index.html literature-notes/index.html lost-in-specificity/index.html makefile-edn/index.html maksimal-opsjonalitet/index.html many-small-functions-bad/index.html narrow-statements/index.html narrow-waist/index.html nix/index.html oggpo/index.html okrs-are-scale-invariant/index.html open-problems/index.html orthogonality-enables-optionality/index.html perception-reality/index.html phenomenology/index.html play.teod.eu-retrospective/index.html practice-deliberately-with-journals/index.html precise-general-novel/index.html product-for-developers/index.html purposeful-software-development/index.html rdf-intro/index.html sannhet-deskriptiv-preskriptiv/index.html shabakka/index.html software-architecture/index.html software-architecture-as-language-construction/index.html solarpunk-designs/index.html sterility-mess-utility/index.html strong-relations/index.html terminalen-motorsag/index.html thesis-antithesis-synthesis/index.html twitter-howto/index.html unix-signals-intro/index.html watchexec-make-dev/index.html why-dont-we-have-a-strategy/index.html wip/index.html xml-on-the-web/index.html