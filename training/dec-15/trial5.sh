 #!/bin/bash

    # tput_menu: a menu driven system information program

    BG_BLUE="$(tput setab 4)"
    BG_BLACK="$(tput setab 0)"
    FG_GREEN="$(tput setaf 2)"
    FG_WHITE="$(tput setaf 7)"

    # Save screen
    tput smcup

    # Display menu until selection == 0
    while [[ $REPLY != 0 ]]; do
      echo -n ${BG_RED}${FG_GREEN}
      clear
       echo "Please Select:"

        echo "1. Display the log in  time of the user"
        echo "0.exit"

      read -p "CHOOSE [0-1] > " selection

      # Clear area beneath menu
      tput cup 10 0
      echo -n ${BG_BLACK}${FG_GREEN}
      tput ed
      tput cup 11 0

      # Act on selection
      case $selection in
        1)  last
            ;;
        0)  break
            ;;
        *)  echo "Invalid entry."
            ;;
      esac
      printf "\n\nPress any key to continue."
      read -n 1
    done

    # Restore screen
    tput rmcup
    echo "Program terminated."

