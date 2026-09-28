#let template(
	bg: none,
	fg: none,
	content,
) = {
	assert.eq(type(bg), color)

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

	content
}
