NAME="exp-1"
INPUT=.input
cat example2.json > .input
ID=$(name=$NAME jq -r '.experiments[] | select(.tags.name == env.name) | .id' $INPUT)
if [ -z $ID ]; 
    then 
    echo "No experiment id found for $NAME"
    exit 1; 
fi
echo "Found ID '$ID' from name '$NAME'"
rm .input