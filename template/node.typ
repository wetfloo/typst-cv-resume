#let generic-top-item(
	align-direction: right,
	content,
) = {
	set text(
		font: "Avenir Next",
		size: 8pt,
		style: "normal",
		weight: "regular",
	)
	set align(align-direction)

	content
}

#let contact-items(
	separator: " :: ",
	align-direction: right,
	link-underline: true,
	..pairs,
) = {
	generic-top-item(
		align-direction: align-direction,
		{
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
	)
}

#let invisible-text(
	bg: none,
	fg: none,
	debug: false,
	content,
) = {
	if debug {
		set text(fill: fg)

		content
	} else {
		set text(
			size: 1pt,
			fill: bg,
		)

		box(place[#content])
	}
}

#let invisible-paragraph(
	bg: none,
	fg: none,
	debug: false,
	content,
) = {
	if debug {
		set text(fill: fg)

		content
	} else {
		block(
			width: 100%,
			above: 0pt,
			// commenting this argument out to make sure invisible
			// paragraph doesn't collapse paragraphs following it
			//
			// below: 0pt,
			inset: 0pt,
		)[
			#set text(
				size: 1pt,
				fill: bg,
				hyphenate: false,
			)
			#set par(
				leading: 0pt,
				spacing: 0pt,
				justify: false,
			)

			#content
		]
	}
}
