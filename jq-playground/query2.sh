NAME="exp-1"
INPUT=.input
cat example.json > .input
ID=$(name=$NAME jq '.experiments[] | select(.tags.name == env.name) | .id' < $INPUT)
echo $ID
rm .input