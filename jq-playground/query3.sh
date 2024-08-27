NAME="some template name"
INPUT=.input
cat example3.json > .input
ID=$(name=$NAME jq -r '.experimentTemplates[] | select(.tags.Name == env.name) | .id' $INPUT)
if [ -z $ID ]; 
    then 
    echo "No experiment id found for $NAME"
    exit 1; 
fi
echo "Found ID '$ID' from name '$NAME'"
rm .input