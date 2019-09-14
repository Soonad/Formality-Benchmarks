#!/bin/bash

CC=gcc
HC=ghc

CFLAGS=-O3

COMMON_PATH=./cases
FMPATH=$COMMON_PATH/Formality
CPATH=$COMMON_PATH/C
HPATH=$COMMON_PATH/Haskell
JSPATH=$COMMON_PATH/JS
PYPATH=$COMMON_PATH/Python

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NORMAL='\033[0m'


printf "${YELLOW}Preparing to run the benchmarks...\n"
printf "Please, make sure all dependencies are installed\n"
printf "\t-Formality-lang\n"
printf "\t-GCC\n"
printf "\t-GHC\n"
printf "\t-Node.js\n"
printf "\t-Python 2.7\n"

printf "${RED}\nIf any dependencies are missing, the benchmark will not execute correctly${NORMAL}\n\n"

printf "fm -v"
fm -v

printf "gcc --version"
gcc --version

printf "ghc --version"
ghc --version

printf "node --version"
node --version

printf "python --version"
python --version

printf "\n\n${CYAN}First test case: Flip bits in an array 2^20 times${NORMAL}\n"

printf "Compiling C code...\n"
${CC} ${CFLAGS} -o flip_c ${CPATH}/bit_flip.c -lm

printf "Compiling Haskell Code...\n"
${HC} -o flip_haskell ${HPATH}/bit_flip.hs

printf "${GREEN}Executing Formality code:${NORMAL}\n"
printf "${RED}IMPLEMENTED BUT NOT RUNNING ON 2^20 ITERATIONS${NORMAL}\n"
cd ${FMPATH}
time fm -o flip_bits/main
cd ../../

printf "${GREEN}Executing C code:${NORMAL}\n"
time ./flip_c
#@rm flip_c

printf "${GREEN}Executing Haskell code:${NORMAL}\n"
time ./flip_haskell
#@rm flip_haskell

printf "${GREEN}Executing Javascript code:${NORMAL}\n"
time node ${JSPATH}/flip_bits.js

printf "${GREEN}Executing Python code:${NORMAL}\n"
time python ${PYPATH}/bit_flip.py

printf "${GREEN}Fist test case finished.${NORMAL}\n"

#=============================================================

printf "\n\n${CYAN}Second test case: Apply x=x+1 to all elements in an array 2^20 times${NORMAL}\n"

printf "Compiling C code...\n"
${CC} ${CFLAGS} -o map_c ${CPATH}/map.c -lm

printf "Compiling Haskell Code...\n"
${HC} -o map_haskell ${HPATH}/map.hs

printf "${GREEN}Executing Formality code:${NORMAL}\n"
printf "${RED}IMPLEMENTED BUT NOT RUNNING ON 2^20 ITERATIONS${NORMAL}\n"
cd ${FMPATH}
time fm -o map/main
cd ../../

printf "${GREEN}Executing C code:${NORMAL}\n"
time ./map_c
#@rm map_c

printf "${GREEN}Executing Haskell code:${NORMAL}\n"
time ./map_haskell
#@rm map_haskell

printf "${GREEN}Executing Javascript code:${NORMAL}\n"
time node ${JSPATH}/map.js

printf "${GREEN}Executing Python code:${NORMAL}\n"
time python ${PYPATH}/map.py

printf "${GREEN}Second test case finished.${NORMAL}\n"

#=============================================================

printf "\n\n${CYAN}Third test case: Call a function a googol times times${NORMAL}\n"

printf "${RED}ATTENTION: Formality is actually the only one running a function 10^100 times\n"
printf "All others are executing the code only 3^20 times${NORMAL}\n"

printf "Compiling C code...\n"
${CC} ${CFLAGS} -o googol_c ${CPATH}/googol.c -lm

printf "Compiling Haskell Code...\n"
${HC} -o googol_haskell ${HPATH}/googol.hs

printf "${GREEN}Executing Formality code:${NORMAL}\n"
cd ${FMPATH}
time fm -o googol/main
cd ../../

printf "${GREEN}Executing C code:${NORMAL}\n"
time ./googol_c
#@rm googol_c

printf "${GREEN}Executing Haskell code:${NORMAL}\n"
time ./googol_haskell
#@rm googol_haskell

printf "${GREEN}Executing Javascript code:${NORMAL}\n"
time node ${JSPATH}/googol.js

printf "${GREEN}Executing Python code:${NORMAL}\n"
time python ${PYPATH}/googol.py

printf "${GREEN}Third test case finished.${NORMAL}\n"

#=============================================================

printf "\n\n${CYAN}Forth test case: Sort a list 2^22 times${NORMAL}\n"

printf "Compiling C code...\n"
${CC} ${CFLAGS} -o sort_c ${CPATH}/sort.c -lm

printf "Compiling Haskell Code...\n"
${HC} -o sort_haskell ${HPATH}/sort.hs

printf "${GREEN}Executing Formality code:${NORMAL}\n"
cd ${FMPATH}
time fm -o sort/main
cd ../../

printf "${GREEN}Executing C code:${NORMAL}\n"
time ./sort_c
#@rm sort_c

printf "${GREEN}Executing Haskell code:${NORMAL}\n"
time ./sort_haskell
#@rm sort_haskell

printf "${GREEN}Executing Javascript code:${NORMAL}\n"
time node ${JSPATH}/sort.js

printf "${GREEN}Executing Python code:${NORMAL}\n"
time python ${PYPATH}/sort.py

printf "${GREEN}Forth test case finished.${NORMAL}\n"

#=============================================================

# Comment-ou the next 2 lines if you want to keep the binaries
printf "Cleaning binaries...\n"
rm -rfv flip_c flip_haskell map_c map_haskell googol_c googol_haskell sort_c sort_haskell

printf "\n\n${CYAN}All tests finished${NORMAL}\n"
