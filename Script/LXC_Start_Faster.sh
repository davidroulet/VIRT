Start(){
pct start $i 
sleep 1
}
for i in $(seq 210 299)
do
Start $i &

done

wait
echo "everything start, there is a lot of life"