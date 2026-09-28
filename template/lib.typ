#import "./invisible.typ": invisible-text
#import "./template.typ": template

#let entrypoint(
	dark-mode: true,
	debug: false,
) = {
	let bg = rgb(0xFF, 0xFF, 0xFF, 0xFF)
	let fg = rgb(0x00, 0x00, 0x00, 0xFF)
	if dark-mode {
		bg = rgb(0x00, 0x00, 0x00, 0xFF)
		fg = rgb(0xFF, 0xFF, 0xFF, 0xFF)
	}

	let template = template.with(
		bg: bg,
		fg: fg,
	)
	let invisible-text = invisible-text.with(
		bg: bg,
		debug: debug,
	)

	return (
		template: template,
		invisible-text: invisible-text,
	)
}
