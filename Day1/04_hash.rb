inst_section = {
	'cello' => 'string',
	'clarinet' => 'woodwiind',
	'drum' => 'percussion',
	'oboe' => 'woodwind',
	'trumpet' => 'brass',
	'violin' => 'string'
}

puts inst_section

# p 메서드는 puts와 동일하지만, 객체의 값이 없을 떄 puts와 달리 명시적으로 nil 출력
p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']

histogram = Hash.new(0)
p histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']
p histogram['go']


