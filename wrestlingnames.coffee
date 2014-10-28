fNames = ["Masked",
"Kurt",
"Golden",
"Sir Ferdinand",
"Chief Jacque",
"Blitz",
"Don",
"The Governess",
"Loincloth",
"Sister Margaret",
"Kettles",
"Slim",
"Hezekiah",
"Skid",
"Dieter",
"Flagellum",
"Gemini",
"Dremel",
"Lariat",
"Detestero",
"Tampa",
"Murkin",
"Lavish",
"Sergey",
"Type II",
"Disco",
"His Highness Lord",
"Soylent",
"Haystacks"
]

lNames = ['The Earl of Keel Haul',
'of the Universe',
'Manmason',
'Wonder Delts',
'Silver Dollar Paincakes',
'Tyson de Grasse',
'Bendingapples',
'Scorchbrines',
'Megareps',
'Butterchurn',
'Corknuckle MD',
'Broadwelts',
'Skinsizzle',
'Teapot Dome',
'Godot',
'Blisterchew',
'Lovehandles',
'Blunderbuss, Esquire',
'Fasciitis',
'Yard Hoist',
'Carnegie-Vanderbilt',
'Pelecanos',
'Winterscud',
'Molarstomper',
'Kidneybrine',
'Perpwalk',
'Thunder',
'Stallion',
'Codpiece'
]

descriptions = ["is wearing his best red chaps",
"doesn't really need that cane",
"is donning the purple shorts",
"hails from Parts Unknown",
"is led to the ring by the inscrutable",
"is weird about being touched",
"wishes he'd got his GED",
"keeps a taser in that ukelele case",
"y lucha con machismo",
"claims to be a jack of all deviances",
"won't be so easily fooled by your effete manner",
"was denied a loan earlier today",
"weighs in at 348 lbs and is in breach of any number of restraining orders",
"he just had his cape dry cleaned",
"isn't really an Austrian prince",
"his breath smells like methodone",
"has a license for that harpoon",
"lost his championship belt to a pawn shop",
"takes stallion growth hormones"]


module.exports = (robot) ->
	robot.respond /give ([\w]+) a wrestling name/i, (msg) ->
		first = fNames[Math.floor(Math.random() * fNames.length)]
		last = lNames[Math.floor(Math.random() * lNames.length)]
		desc = descriptions[Math.floor(Math.random() * descriptions.length)]
		sentence = " wrestles as #{first} #{last} and #{desc}!"		
		name = escape(msg.match[1])
		
		msg.send name + sentence