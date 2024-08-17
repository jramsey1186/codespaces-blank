NAME="exp-2"

ID=$(name=$NAME jq '.experiments[] | select(.tags.name == env.name) | .id' < example.json)
echo $ID