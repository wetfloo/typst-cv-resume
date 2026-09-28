#let cv-template(
	dark-mode: true,
	doc,
) = {
	let bg = if dark-mode {
		rgb(0x00, 0x00, 0x00, 0xFF)
	} else {
		rgb(0xFF, 0xFF, 0xFF, 0xFF)
	}
	let fg = if dark-mode {
		rgb(0xFF, 0xFF, 0xFF, 0xFF)
	} else {
		rgb(0x00, 0x00, 0x00, 0xFF)
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
