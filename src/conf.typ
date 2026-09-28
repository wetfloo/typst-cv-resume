#let conf(
	dark_mode: true,
	doc,
) = {
	set page(
		paper: "a4",
	)
	set text(
		font: "Iosevka",
		size: 10pt,
		style: "normal",
		weight: 500,
	)
	set par(
		justify: true,
	)

	doc
}
