extends Node2D

var five_letter_words = [
	"cheer", "pulse", "match", "pedal", "basil", "quest", "lives", "march", "sport", "flare",
	"dance", "queen", "couch", "price", "nasal", "plush", "blues", "chain", "nanny", "hyena",
	"Apple", "Bread", "Cloud", "Dance", "Earth", "Fruit", "Grape", "Horse", "Insect", "Juice",
	"Knife", "Lemon", "Music", "Night", "Ocean", "Peach", "Quiet", "Rainy", "Snake", "Train",
	"Umbra", "Viper", "Water", "Xenon", "Yearn", "Zebra", "Amber", "Black", "Coral", "Diver",
	"Emote", "Flute", "Gloom", "Haste", "Jolly", "Karma", "Latch", "Mango", "Nymph", "Audio",
	"Adore", "Audit", "Aroma", "Oread", "Urate", "Sauce", "Adieu", "Arise", "Louie", "Above",
	"Acute", "Alive", "Alone", "Angry", "Aware", "Awful", "Basic", "Black", "Blind", "Brave",
	"Brief", "Broad", "Brown", "Cheap", "Chief", "Civil", "Clean", "Clear", "Close", "Crazy",
	"Daily", "Dirty", "Early", "Empty", "Equal", "Exact", "Extra", "Faint", "False", "Final"
]

var seven_letter_words = [
	"Ability", "Absence", "Academy", "Account", "Accused", "Achieve", "Acquire", "Address", "Advance", "Adverse",
	"Advised", "Adviser", "Backing", "Balance", "Banking", "Barrier", "Battery", "Bearing", "Beating", "Because",
	"Bedroom", "Believe", "Cabinet", "Caliber", "Calling", "Capable", "Capital", "Captain", "Caption", "Capture",
	"Careful", "Carrier", "Dealing", "Decided", "Decline", "Default", "Defence", "Deficit", "Deliver", "Eastern",
	"Economy", "Edition", "Elderly", "Element", "Engaged", "Enhance", "Factory", "Faculty", "Failing", "Failure",
	"Fashion", "General", "Greater", "Gallery", "Genuine", "Genetic", "However", "Himself", "History", "Holding",
	"Helping", "Hundred", "Include", "Improve", "Involve", "Initial", "Justice", "Journal", "Journey", "Jointly",
	"Kingdom", "Keeping", "Kitchen", "Knowing", "Machine", "Manager", "Natural", "Neither", "Network", "Neutral",
	"Officer", "Outside", "Overall", "Passage", "Passing", "Qualify", "Railway", "Readily", "Reading", "Science",
	"Section", "Traffic", "Trouble", "Teacher", "Unknown", "Unusual", "Yellows", "Waiting", "Walking", "Working"
]

var eleven_letter_words = [
	"Actinometer", "Actinometry", "Actinomycin", "Actualistic", "Acumination", "Acupressure", "Acupuncture", "Babyishness",
	"Bacchanalia", "Bacciferous", "Baccivorous", "Bachelordom", "Bachelorism", "Bacilliform", "Calligraphy", "Collocation",
	"Complicated", "Cabbagehead", "Cabbagelike", "Cabbagetown", "Cackleberry", "Dacarbazine", "Dacryorrhea", "Dactylogram",
	"Dactylology", "Dangleberry", "Daredevilry", "Elephantine", "Elephantoid", "Elicitation", "Eligibility", "Elimination",
	"Eliminative", "Eliminatory", "Fabrication", "Facilitator", "Factorylike", "Gallerylike", "Gallimaufry", "Gallinacean",
	"Gallowglass", "Habituation", "Habitudinal", "Haggadistic", "Ichnography", "Ichthyoidal", "Ichthyolite", "Kabbalistic",
	"Kailyardism", "Kamelaukion", "Katamorphic", "Labefaction", "Labiodental", "Labradorite", "Labyrinthic", "Machicolate",
	"Machination", "Machineable", "Naggingness", "Nameability", "Nannofossil", "Nanomachine", "Oarsmanship", "Obfuscation",
	"Obfuscatory", "Paraselenic", "Parasensory", "Parasitical", "Quacksalver", "Quadraphony", "Quadrasonic", "Quadrennial",
	"Radioactive", "Radiocarbon", "Radiocesium", "Reallotment", "Realpolitik", "Realterable", "Sacculation", "Sacramental",
	"Sacrificial", "Sacrolumbar", "Saddlecloth", "Tachygraphy", "Taciturnity", "Taeniacidal", "Tagliatelle", "Temperament",
	"Temperature", "Tempestuous", "Teletherapy", "Ulcerogenic", "Ulotrichous", "Ultraviolet", "Vacuolation", "Valentinite",
	"Warrantable", "Whichsoever", "Zealousness", "Zestfulness"
]


func get_word() -> String:
	var wordindex = randi()%five_letter_words.size()
	
	var words = five_letter_words[wordindex]
	
	return words 
	
	
