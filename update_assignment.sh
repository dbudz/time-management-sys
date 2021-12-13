!/bin/bash
read -p "What status would you like to change?" status
case $status in
  Open)
    sed -i -e 's/"Open"/"Completed"/g' assignments
    echo You have updated the status of your open assignments to completed
    ;;
  Completed)
    sed -i -e 's/"Completed"/"Open"/g' assignments
    echo You have updated the status of your completed assignments to open
    ;;
  *) echo Please enter the status you would like to change
esac


