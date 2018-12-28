stringVar="Apple Orange Banana Mango"
arrayVar=(${stringVar// /})

echo ${arrayVar[0]}
echo ${arratVar[3]}
