#! /bin/bash

# ECHO OR PRINT OUT SOMETHING
echo Hi there!

#CREATE VARIAVLES
  ## Uppercase by convention - letters, numbers or underscores

NAME="Nure"
echo "I am $NAME"
 or 
 echo "I am ${NAME}"

# USER INPUT
read -p "What is your age: " AGE
echo "Your age is $AGE"

# CONDITIONS 
#IF STATEMENT
NAME="Nure"
if [ $NAME == "Nure" ]  # or if [ "$NAME" == "Nure" ]
then
  echo "Your name is Nure"
fi

#IF - ELSE STATEMENT
NAME="Nure"
if [ $NAME == "Nure" ]; then
  echo "Your are Nure"
else
  echo "You are not Nure"
fi

# ELSE - IF:
NAME="Joy"
if [ $NAME == "Nure" ]; then
  echo "Your are Nure"
elif [ $NAME == "Alam" ]; then
  echo "You are Alam"
else
  echo "You are not Nure or Alam"
fi

# COMPARISON OPERATORS
########################### Notes  #################################

## Val1 -eq val2 Returns true if the values are equal
## Val1 -ne val2 Returns true if the values are not equal
## Val1 -gt val2 Returns true if val1 is greater than val2
## Val1 -ge val2 Returns true if val1 is greater than or equal to val2
## Val1 -lt val2 Returns true if val1 is less than val2
## Val1 -le val2 Returns true if val1 is less than or equal to val2

########################### Notes  #################################

NUM1=5
NUM2=10

if [ $NUM1 -gt $NUM2 ]; then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi

#FILE CONDITIONS
############# Notes ####################################
# -d file   True if the file is a directory
# -e file   True if the file exists (not portable, -f is better to use)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########## Notes ########################################
FILE="my_file.txt"
if [ -e $FILE ]; then
  echo "$FILE is a file"
else
  echo "$FILE is not a file"
fi

#CASE/CHECK STATEMENT (SIMILAR TO SWITCH)
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
  [yY] | [yY][eE][sS])
    echo "You can enter in the bar"
    ;;
  [nN] | [nN][oO])
    echo "Sorry, no entry"
    ;;
  *)
    echo "Please type y/yes or n/no"
    ;;
esac

#FOR LOOP
NAMES="Nure Joy Kabvir"
for NAME in $NAMES
  do
    echo "Welcome $NAME"
done


# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES  
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done



# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"

# FUNCTION
function greet() {
  echo "Hello World"
}
greet

# FUNCTION WITH PARAMS
function greet() {
  echo "Hello, I am $1 and My age is $2"
}
greet "Nure" "35"

# CREATE FOLDER AND WRITE TO A FILE
mkdir myfolder
touch "myfolder/my_file.txt"
echo "Good job Nure" >> "myfolder/my_file.txt"
echo "Created myfolder/my_file.txt"
