#i!/bin/basi
h
j=5
for i in [1..5]
    do
        echo "$i"
        echo "command 1"
        echo "command 2"
        if [[ j -lt 0 ]]
        then
            continue
        fi
        echo "command 3"
    done

