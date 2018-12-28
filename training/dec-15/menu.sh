trap 'tput reset;exit 1' 1 2 3 9 15

tput civis

while :
do
        echo -e "\033[44;37;22m"
        clear
        echo -e "\033[41;37"

        echo -ne "\033[46;30m"
        tput cup 8 25 ; echo -n  "MENU"
        tput cup 9 25 ; echo -n  "   LAST LOGIN TIME   "
        tput cup 10 25 ; echo -n  "       HI        "
        echo -e "\033[40;32m"

        tput cup 12 25 ; echo -n " 1. LAST LOGIN TIME IS  "
        tput cup 13 25 ; echo -n " 2. QUIT                    "

        echo -ne "\033[41;30m"
        tput cup 14 28 ; echo -n " Choose Option:   "
        tput cup 14 48
        tput sc

        read y
        tput cup 16 30

        case "$y" in
                1|S|s)
                        output=`w|awk '{print $1}' |xargs -ibing grep bing /etc/passwd|awk -F":" '{print $5}'`
                        starting_line=21
                        tput cup $starting_line 28;
                        echo -ne "\033[46;30mCurrent last login is"
                        echo -ne "\033[0m"
                        echo "$output"|last
$starting_line+1
                                tput cup $starting_line 28;

                        tput rc
                        echo -n "Any Key To Menu"
                        read x
                        ;;

                2|Q|q)
                        tput reset
                        clear
                        exit
                        ;;
                *)
                        tput cup 20 28
                        echo "$y - Unknown Option"
                        tput rc
                        echo -n "Any Key To Menu"
                        read x
                        ;;
        esac
done

