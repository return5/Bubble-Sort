#!/bin/bash

#github: return5
#license: MIT
#script is an example of Bubble Sort implemented in Bash

declare -a var=(22 9 8 7 6 5 4 3 2 1 4 6 3 7) #create unsorted array

#function which does the sorting
function sortArray {
swap=1 #
readonly limit=${#var[@]}-1 #limit = number of items in array -1
while (("$swap" == 1)); do #loop through until swap = 0;
	swap=0
	for(( i=0;i < limit ;i++ )); do #iterate through the loop starting at 0 and ending at the index before last. 
		if (( "${var[i]}" > "${var[i+1]}" )); then #if previous element is larger than next element
			swap=1	#when two elements of array are swapped, set swap = 1
			temp="${var[i]}" #set temp = larger element 
			var[i]="${var[i+1]}" #set element at index i to the smaller value 
			var[i+1]="$temp"  #set element at i+1 index to temp, which is the larger of the two values
		fi
	done
done
}

#function which prints out each element of array
function printArray {
	for i in "${var[@]}"; do #iterates through array, i = element in the array
		printf "%s " "$i" #for the element i, print out the value
	done
	printf "\n"	#print new line
}

printf "the unsorted array is: "
printArray #call printArray function

sortArray #call sortArray function

printf "array has been sorted using Bubble Sort.  \nthe sorted array is: "
printArray


