nuke(){
pct shutdown $i --forceStop 1
pct destroy $i --force 1 --purge 1 --destroy-unreferenced-disks 1 2> /dev/null
sleep 1
}
for i in $(seq 210 299)
do
nuke $i &

done

wait
echo "everything nuked, no life left"
