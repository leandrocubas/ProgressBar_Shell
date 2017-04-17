#!/bin/bash
source ProgressBar.sh

i=0
while test $i -lt 1000
do

# Na primeira execução da função, ela irá guardar o total de registros
# que serão processados, ignorando posteriormente o valor da variável
# $1 que foi utilizado para chamar a função

# Informa a função que serão processados 1000 registros
ProgressBar "1000"
i=$((i+1))
done

# Limpa as variáveis utilizadas pela função ProgressBar
unset PBAR PBBARPOS PBBARPOSANT PBPORC PBREG PBREGPOS PBSTR PBTOTAL PBTOTALTAM

i=0
while test $i -lt 10000
do
# Informa a função que serão processados 10000 registros
ProgressBar "10000"
i=$((i+1))
done

