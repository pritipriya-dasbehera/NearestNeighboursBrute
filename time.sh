trap "exit" INT
n=( 1000 2500 5000 7500 10000 )
#g=( 9 13 16 19 20 )
for i in {0..4}
do
    for j in 1 2 3
    do
        sed -i "6 c\const NUM_OF_PARTICLES: usize = ${n[$i]};" src/main.rs
        timeout 120s cargo run
        # echo ${n[$i]}
    done
done