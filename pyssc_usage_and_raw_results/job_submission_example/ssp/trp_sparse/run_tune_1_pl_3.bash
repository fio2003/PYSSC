#!/bin/bash -l

module load python 
 
export PYTHONPATH=/home/is2k/.local/lib/python3.4/site-packages/:/apps/rdkit-2017.03.1:/apps/python-3.4-modules/lib/python3.4/site-packages:/usr/lib64/python2.6/site-packages/openmpi

PROT='trp-cage'
echo $PROT
echo `env | grep PYTHONPATH`


./main.py '2510' '10' -v '0' -K '90' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '1.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '1.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '2.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '2.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '3.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '3.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '4.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '4.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10

wait

./main.py '2510' '10' -v '0' -K '90' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '5.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '5.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '6.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '6.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '7.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '7.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '7.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '7.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '8.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '8.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '8.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '8.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '9.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '9.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '10.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '10.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '11.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '11.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '11.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '11.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '12.1' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '12.3' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '12.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '12.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '13.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait



./main.py '2510' '10' -v '0' -K '90' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '13.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '13.8' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '14.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '14.2' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '14.4' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait



./main.py '2510' '10' -v '0' -K '90' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '14.6' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '14.7' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '14.9' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '15.5' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

sleep 10
wait


./main.py '2510' '10' -v '0' -K '90' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '85' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '80' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '75' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '70' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '65' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '60' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '55' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '50' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '45' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '40' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '35' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '30' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '25' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '24' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '23' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '22' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '21' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '20' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '19' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '18' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '17' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '16' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '15' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '14' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '13' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '12' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '11' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '10' --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '9'  --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '8'  --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '7'  --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '6'  --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 & 
sleep 2
./main.py '2510' '10' -v '0' -K '5'  --sigma '16.0' -y '10' -b 'generate' -d $PROT"_sparse" -A 3 
sleep 2

wait
