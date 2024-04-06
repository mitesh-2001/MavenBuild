commit_msg_file=$1

commit_msg=$(cat $commit_msg_file)

 

if ! (echo "$commit_msg" | grep -q '\[commit-summary\]:' && echo "$commit_msg" | grep -q '\[commit-details\]:'); then

    echo "Commit message must contain both summary and details sections."

    exit 1

fi
