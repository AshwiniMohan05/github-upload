
ssh -p 21 ashwini@quintype.com <<EOF
echo 'printing pwd'
echo "\$(pwd)"
ls -a
dins '*.txt'
EOF

