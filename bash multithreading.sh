function test {
t=$1
n=$2
irtt client -i 10ms -l 20000 -d $t --fill=rand --sfill=rand -q 15.206.214.219 -o $n+1.json > $n+1.txt
sleep 2m
irtt client -i 10ms -l 20000 -d $t --fill=rand --sfill=rand -q 15.206.214.219 -o $n+2.json > $n+1.txt
sleep 2m
irtt client -i 10ms -l 20000 -d $t --fill=rand --sfill=rand -q 15.206.214.219 -o $n+3.json > $n+1.txt
sleep 2m
irtt client -i 10ms -l 20000 -d $t --fill=rand --sfill=rand -q 15.206.214.219 -o $n+4.json > $n+1.txt
sleep 2m
irtt client -i 10ms -l 20000 -d $t --fill=rand --sfill=rand -q 15.206.214.219 -o $n+5.json > $n+1.txt
}

function main {
echo "main running"
t=$1
n=$2
irtt client -i 10ms -l 500 -d $t --fill=rand --sfill=rand -q 15.206.214.219 -o $n+1.json > $n+1.txt
}

main 10m main-no-meter &
test 2s no-meter-burst &
wait

for i in {1..30}
do
	start beep-02.mp3
done

main 10m main-all-meter &
test 2s all-meter-burst &
wait



