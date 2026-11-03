#import "../template/entrypoint.typ": entrypoint as cv-template-entrypoint

#let entrypoint = cv-template-entrypoint(
	dark-mode: true,
	debug: true,
)

#let (
	generic-top-item,
	contact-items,
	invisible-text,
	invisible-paragraph,
	template,
) = entrypoint

#show: template

#contact-items(
	(text: "GitHub", url: "https://github.com/wetfloo"),
	(text: "Modworkshop", url: "https://modworkshop.net/user/inertia"),
)

= this is a header text
== this is a lower level header text

this is some content with #invisible-text[invisible text] and some other text on top of that

#invisible-paragraph[invisible text shouldn't be able to take up much space otherwise]

and this is another paragraph
