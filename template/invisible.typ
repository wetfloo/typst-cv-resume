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
