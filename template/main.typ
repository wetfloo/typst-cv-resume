#import "@local/cv:0.0.1": entrypoint

#let (
	generic-top-item,
	contact-items,
	invisible-text,
	invisible-paragraph,
	template,
) = entrypoint(
	dark-mode: true,
	debug: true,
)

#show: template

#contact-items(
	(text: "GitHub", url: "https://github.com/wetfloo"),
	(text: "Example", url: "https://example.com"),
)

#generic-top-item[GMT+0]

= this is a header text
== this is a lower level header text

this is some content with #invisible-text[invisible text] and some other text on top of that

#invisible-paragraph[invisible text shouldn't be able to take up much space otherwise]

and this is another paragraph
