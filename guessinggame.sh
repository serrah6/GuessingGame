
#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the number of files
number_of_files=$(count_files)

# Display the welcome message
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Start the guessing loop
while true
do
    read -p "Enter your guess: " guess

    # Check if the input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$number_of_files" ]
    then
        echo "Too low! Try again."
    elif [ "$guess" -gt "$number_of_files" ]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done
