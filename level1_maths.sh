#!/bin/bash
#Task: Ek calculator script banao jo user se do numbers maange, aur un dono ka Substraction (Minus -) aur Division (Divide /) karke output dikhaye.

read -p "num1: " num1 
read -p "num2: " num2
Substraction=$((num1 - num2))
Divide=$((num1 / num2))

echo "Substraction of both numbers are  $Substraction"
echo "Divide of both numbers are $Divide"