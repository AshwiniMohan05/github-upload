
while IFS=":" read -r user _
do
done < <(grep "hello" /etc/passwd)

