TP := Object clone
forMyBunghole := TP clone
Cornholio := Object clone
Cornholio speak := method (" I AM THE GREAT CORNHOLIO!\n    .-------------.\n   /               \\\n  / .-----.         \\\n  |/ --`-`-\          \\\n  |         \         |\n   |   _--   \        |\n   _| =-.     |      |\n   o|/o/      |      |\n   /  ~       |      |\n (____@)  ___ |      |\n     _===~~~.`|      |\n _______.--~  |      |\n  \\_______    |      |\n       |  \\   |      |\n        \\_/__/       |\n      /            __\\\n      -| Metallica|| |\n      ||          || |\n" println q)


Cornholio isThereTp := method (" In the Lobby? Is there TP in the lobby?" print)
Cornholio tpForMyBunghole := method (" TP for my bunghole?\n" println q)
Cornholio bungholio := method (" Bungholio!" println)

Guide := Object clone
Guide umSir := method (" Um Sir, Would you mind waiting in the Lobby?\n" println q)
q := method(wait(2))

Object exist := method (
Lobby println
q
if(
  ?TP, 
  " Yes, Actually there is:\n" println 
    q
    Cornholio bungholio, 
  " Umm, No\n" println)
)

Cornholio speak

Guide umSir

Cornholio isThereTp
q
Cornholio tpForMyBunghole
q

Object exist
