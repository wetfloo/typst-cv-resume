#let invisible-text(
	bg: fuchsia,
	debug: false,
	content,
) = {
	set text(
		fill: bg,
		size: 1pt,
	)

	if debug {
		set text(
			fill: red,
			size: auto,
		)
	}

	content
}

