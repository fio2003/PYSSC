#!/bin/bash -l

module load python 
 
export PYTHONPATH=/home/is2k/.local/lib/python3.4/site-packages/:/apps/rdkit-2017.03.1:/apps/python-3.4-modules/lib/python3.4/site-packages:/usr/lib64/python2.6/site-packages/openmpi

PROT='trp-cage'
echo $PROT
echo `env | grep PYTHONPATH`



./main.py '2510' '10' -v '0' -K '90' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '85' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '80' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '75' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '70' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '65' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '60' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '55' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '50' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '45' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '40' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '35' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '30' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '25' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '24' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '23' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '22' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '21' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '20' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '19' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '18' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '17' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '16' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '15' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '14' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '13' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '12' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '11' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '10' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '9' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '8' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '7' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '6' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10
./main.py '2510' '10' -v '0' -K '5' -b 'generate' -y '10' -d $PROT"_sparse" -A 2 & 
sleep 10

wait
