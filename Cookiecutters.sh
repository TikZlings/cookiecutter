#!/bin/bash
for i in "anteater" "chicken" "moles" "sheep" "ape" "coati" "mouse" "sloth" "bat" "elephant" "owl" "snowman" "bear" "hippo" "panda" "squirrel" "bee" "koala" "penguin" "wolf" "bug" "marmot" "pig" "cat" "meerkat" "rhino"
do
 echo "$i"
  param1="-o '\"./stls/$i.stl\"'"
  param2="-D 'filepath=\"./svgs/$i.svg\"'"
  command="openscad -o ./stls/$i.stl Cookiecutters.scad $param2"
  eval $command
done

for i in "anteater" "chicken" "moles" "sheep" "ape" "coati" "mouse" "sloth" "bat" "elephant" "owl" "snowman" "bear" "hippo" "panda" "squirrel" "bee" "koala" "penguin" "wolf" "bug" "marmot" "pig" "cat" "meerkat" "rhino"
do
 echo "$i"
  param1="-o '\"./pngs/$i.pngs\"'"
  param2="-D 'filepath=\"./svgs/$i.svg\"'"
  command="openscad -o ./pngs/$i.png Cookiecutters.scad $param2 --camera=10,30,210,-2,6,0,5 --colorscheme Tomorrow --rende"
  eval $command
done
