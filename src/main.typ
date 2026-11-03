#import "../template/lib.typ": entrypoint as cv-template-entrypoint

#let entrypoint = cv-template-entrypoint(
	dark-mode: true,
	debug: true,
)

#show: entrypoint.template

#entrypoint.at("contact-items")(
	(text: "GitHub", url: "https://github.com/wetfloo"),
	(text: "Modworkshop", url: "https://modworkshop.net/user/inertia"),
)

= this is a header text
== this is a lower level header text

this is some content with #entrypoint.at("invisible-text")()[invisible text]

and this is another paragraph
