ponyville_ponies = [
	village_ponies = [
		'Lyra Heartstrings', 'Mr & Mrs Cake', 'Cheerilee'
	],
	reformed_villains = {
		discord: "bringer of chaos and disharmony",
		starlight: "communist extremist",
		trixie: "magically corrupt"
	},
	ponies_with_pets = [
		['Fluttershy', 'Angel'],
		['Rainbow Dash', 'Tank'],
		['Apple Jack', 'Winona']
	]
]

puts "Angel = #{ponyville_ponies[2][0][1]}"
puts "magically corrupt = #{ponyville_ponies[1][:trixie]}"
puts "Lyra Heartstrings = #{ponyville_ponies[0][0]}"