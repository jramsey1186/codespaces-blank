NAME="exp-2"
INPUT=.input
cat example.json > .input
ID=$(name=$NAME jq -r '.experiments[] | select(.tags.name == env.name) | .id' $INPUT)
echo "Found ID '$ID' from name '$NAME'"
rm .input