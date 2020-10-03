function test {
t=$1
n=$2
echo " arg $t"
irtt client -i 10ms -l 500 -d 10s --fill=rand --sfill=rand -q 15.206.214.219 -o $n.json
sleep $t
echo "end $t"
}
test 5s name1 &
test 10s name2 &
wait