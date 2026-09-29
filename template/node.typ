#let contact-items(
	separator: " :: ",
	..pairs,
) = {
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
