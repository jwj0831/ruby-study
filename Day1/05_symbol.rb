inst_section = {
	:cello => 'string',
	:clarinet => 'woodwind',
	:drum => 'percussion',
	:oboe => 'woodwind',
	:trumpet => 'brass',
	:violin => 'string'
}

p inst_section[:cello]
p inst_section[:drum]
p inst_section["trumpet"]



inst_section2 = {
	cello: 'string',
	clarinet: 'woodwind',
	drum: 'percussion',
	oboe: 'woodwind',
	trumpet: 'brass',
	violin: 'string'
}

p inst_section2[:oboe]
p inst_section2[:violin]
puts "An trumpet is a #{inst_section2[:trumpet]} instrument"
