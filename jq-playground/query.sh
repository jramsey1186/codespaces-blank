NAME="exp-1"

ID=$(name=$NAME jq '.experiments[] | {id: .id, name: .tags.name} | select(.name == env.name) | .id' < example.json)
echo $ID