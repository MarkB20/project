#!/bin/bash

# Define the dialog menu properties
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="System Operations"
TITLE="Run Your Scripts"
MENU="Choose a script to run:"

# Define the menu options
OPTIONS=(1 "Run Ping Script"
         2 "Run Logging Script"
         3 "Run Trace Script"
         4 "Run fault Script")

# Create the dialog menu to choose which script to run
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

# Clear the screen before running the chosen script
clear

# Execute the corresponding script based on the chosen option
case $CHOICE in
    1)
        echo "Running Ping Script..."
        # Run ping script
        ./ping.sh
        ;;
    2)
        echo "Running Logging Script..."
        # Run logging script
        ./logging.sh
        ;;
    3)
        echo "Running Trace Script..."
        # Run trace script
        ./trace.sh
        ;;
    4)
        echo "Running fault Script..."
        # Run trace script
        ./fault.sh
        ;;
    *)
        echo "Invalid option or no option selected. Exiting."
        ;;
esac
