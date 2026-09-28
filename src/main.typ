#import "../template/lib.typ": entrypoint as cv-template-entrypoint

#let entrypoint = cv-template-entrypoint(
	dark-mode: true,
	debug: true,
)

#show: entrypoint.template

= this is a header text

this is some content with (#entrypoint.invisible-text)([invisible text])
