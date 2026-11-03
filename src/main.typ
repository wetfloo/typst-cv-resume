#import "../template/lib.typ": entrypoint as cv-template-entrypoint

#let entrypoint = cv-template-entrypoint(
	dark-mode: true,
	debug: true,
)

#let (
	contact-items,
	invisible-text,
	template,
) = entrypoint

#show: template

#contact-items(
	(text: "GitHub", url: "https://github.com/wetfloo"),
	(text: "Modworkshop", url: "https://modworkshop.net/user/inertia"),
)

= this is a header text
== this is a lower level header text

this is some content with #invisible-text[invisible text]

and this is another paragraph
