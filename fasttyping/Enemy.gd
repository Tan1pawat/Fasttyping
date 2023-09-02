extends AnimatedSprite2D

@export var blue:Color = Color("#000000") 
@export var red:Color = Color("#fafafa") 
@export var green:Color = Color("#639765") 

@onready var promt = get_node("/root/Node2D/CharacterBody2D/Promt")
@onready var promt_text = promt.text

var cpoutput = ""

func  _ready()->void:
	promt_text = PromptList.get_word()
	promt.parse_bbcode(set_tag_center(promt_text))

func parseBBCode(input: String) -> String:
	var insideTag = false
	var output = ""
	for char in input:
		if char == "[":
			insideTag = true
		elif char == "]":
			insideTag = false
		elif insideTag == false:
			output += char.to_upper()
	cpoutput = output
	return output

func get_promt() -> String:
	return parseBBCode(promt_text)
	
func set_next_chr(next_chr:int):
	var blue_text = set_tag_color(blue)+cpoutput.substr(0,next_chr)+set_endtag()
	var green_text = set_tag_color(green)+cpoutput.substr(next_chr,1)+set_endtag()
	var red_text = ""
	if next_chr != cpoutput.length():
		red_text = set_tag_color(red)+cpoutput.substr(next_chr+1,cpoutput.length()-next_chr+1)+set_endtag()
	promt.parse_bbcode("[center]"+blue_text+green_text+red_text+"[/center]")

func set_tag_center(centertag:String):
	return "[center]" + centertag +"[/center]"
	
func set_tag_color(color:Color) ->String:
	return "[color=#" + color.to_html(false) +"]"

func set_endtag() ->String:
	return "[/color]"
