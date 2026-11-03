#let template(
	bg: none,
	fg: none,
	content,
) = {
	assert.eq(type(bg), color)

	set page(
		paper: "a4",
		fill: bg,
		margin: (
			x: 1.2cm,
			y: 0.5cm,
		),
	)

	set text(
		font: "Publico Text",
		size: 10pt,
		style: "normal",
		weight: "regular",
		fill: fg,
	)

	set par(
		justify: true,
	)

	content
}
