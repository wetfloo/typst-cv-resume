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

	show heading
		.where(level: 1): content => {
			set align(center)
			set text(
				font: "Publico Headline",
				size: 20pt,
				style: "normal",
				weight: "bold",
			)
			set block(
				spacing: 1.3em,
				inset: (
					top: 1pt,
				),
			)

			content
		}

	show heading
		.where(level: 2): content => {
			set align(start)
			set text(
				font: "Avenir Next",
				size: 11pt,
				style: "normal",
				weight: "semibold",
			)
			set block(
				spacing: 1.2em,
			)

			upper(content)
		}

	set par(
		justify: true,
	)

	content
}
