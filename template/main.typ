#let cv-template(
	dark-mode: true,
	debug: false,
	doc,
) = {
	let bg = rgb(0xFF, 0xFF, 0xFF, 0xFF)
	let fg = rgb(0x00, 0x00, 0x00, 0xFF)
	if dark-mode {
		bg = rgb(0x00, 0x00, 0x00, 0xFF)
		fg = rgb(0xFF, 0xFF, 0xFF, 0xFF)
	}

	let invisible-text(content) = {
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

		[content]
	}

	set page(
		paper: "a4",
		fill: bg,
	)
	set text(
		font: "Iosevka",
		size: 10pt,
		style: "normal",
		weight: 500,
		fill: fg,
	)
	set par(
		justify: true,
	)

	doc
}
