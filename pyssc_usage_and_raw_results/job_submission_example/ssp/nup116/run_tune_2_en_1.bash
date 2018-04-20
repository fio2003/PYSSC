#!/bin/bash -l

module load python 
 
export PYTHONPATH=/home/is2k/.local/lib/python3.4/site-packages/:/apps/rdkit-2017.03.1:/apps/python-3.4-modules/lib/python3.4/site-packages:/usr/lib64/python2.6/site-packages/openmpi

PROT='nup116'
echo $PROT


./main.py '2510' '10' -v '0' -K '90' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '9'  -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '8'  -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '7'  -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '6'  -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '5'  -k '3' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 
sleep 5

wait

./main.py '2510' '10' -v '0' -K '90' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '9'  -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '8'  -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '7'  -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '6'  -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '5'  -k '4' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 
sleep 5

wait

./main.py '2510' '10' -v '0' -K '90' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '9'  -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '8'  -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '7'  -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '6'  -k '5' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '9'  -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '8'  -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '7'  -k '6' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '9'  -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '8'  -k '7' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
 

wait

./main.py '2510' '10' -v '0' -K '90' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '9'  -k '8' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '10' -k '9' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '11' -k '10' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '12' -k '11' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '13' -k '12' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '14' -k '13' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '15' -k '14' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '16' -k '15' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '17' -k '16' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '18' -k '17' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
 

wait

./main.py '2510' '10' -v '0' -K '90' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '19' -k '18' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
 

wait

./main.py '2510' '10' -v '0' -K '90' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '20' -k '19' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '22' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '21' -k '20' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
 

wait

./main.py '2510' '10' -v '0' -K '90' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '24' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '23' -k '22' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '25' -k '24' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '30' -k '27' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

./main.py '2510' '10' -v '0' -K '90' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '35' -k '30' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait


./main.py '2510' '10' -v '0' -K '90' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '40' -k '35' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait


./main.py '2510' '10' -v '0' -K '90' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '45' -k '40' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait


./main.py '2510' '10' -v '0' -K '90' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '50' -k '45' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait


./main.py '2510' '10' -v '0' -K '90' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '55' -k '50' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait


./main.py '2510' '10' -v '0' -K '90' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '85' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '80' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '75' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '70' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '65' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5
./main.py '2510' '10' -v '0' -K '60' -k '55' -y '10' -b 'generate' -d $PROT"_sparse" -A 1 & 
sleep 5


wait

