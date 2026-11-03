#let contact-items(
	separator: " :: ",
	align-direction: right,
	link-underline: true,
	..pairs,
) = {
	set text(
		font: "Avenir Next",
		size: 8pt,
		style: "normal",
		weight: "regular",
	)

	set block(
		spacing: 1.3em,
	)

	set align(align-direction)

	let link-style = if link-underline {
		underline
	} else {
		text
	}
	show link: link-style

	pairs
		.pos()
		.map(
			item => {
				let url = item.at("url", default: none)
				let text = item.at("text", default: none)

				assert(url != none and url.len() > 0)
				assert(text != none and text.len() > 0)

				link(url)[#item.text]
			}
		)
		.join(separator)
}

#let invisible-text(
	bg: none,
	debug: false,
	content,
) = {
	let style = if debug {
		text.with(
			fill: red,
		)
	} else {
		text.with(
			fill: bg,
			size: 1pt,
		)
	}

	show: style

	content
}
