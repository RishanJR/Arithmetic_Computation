#!/bin/bash

echo -e "\nWelcome to Arithmetic Computation and sorting"
echo -e "This program computes different arithmetic expressions and sorts the results\n"

#Input three numbers
echo "Enter three numbers (giving enter after each number)"
read num1
read num2
read num3

echo -e "\nThe numbers entered are:"
echo $num1 $num2 $num3

#Declaring a dictionary
declare -A RESULT

#Computation 1 ( a+b*c )
computation="a+b*c"
RESULT[$computation]=$(( $num1+$num2*$num3 ))		#Storing computation 1 in Dictionary RESULT

#Computation 2 ( a*b+c )
computation="a*b+c"
RESULT[$computation]=$(( $num1*$num2+$num3 ))		#Storing computation 2 in Dictionary RESULT

#Computation 3 ( c*a/b )
computation="c*a/b"
RESULT[$computation]=$(( $num3+$num1/$num2 ))		#Storing computation 3 in Dictionary RESULT

#Computation 4 ( a%b+c )
computation="a%b+c"
RESULT[$computation]=$(( $num1%$num2+$num3 ))		#Storing computation 4 in Dictionary RESULT

echo -e "\nThe computations are"
echo -e "\n${!RESULT[@]}"                              #Displays the computation type
echo ${RESULT[@]}        	                       #Displays the result

#Declaring an array
declare -a a

#Variables
count=0

#Shifting from dictionary to array
for computation in ${!RESULT[@]}
do
        a[count]=${RESULT[$computation]}        #count starting from 0
        ((count++))
done

echo -e "\nThe array is: ${a[@]}"
