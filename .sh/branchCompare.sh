# Check if exactly two branches are passed as arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <branch1> <branch2>"
  exit 1
fi

# Assign command-line arguments to variables
BRANCH1=$1
BRANCH2=$2

# Fetch the latest updates (optional, can be removed if unnecessary)
git fetch origin

# Display commits in BRANCH1 that are not in BRANCH2
echo "Commits in $BRANCH1 that are not in $BRANCH2:"
git log --oneline $BRANCH2..$BRANCH1

# Display commits in BRANCH2 that are not in BRANCH1
echo ""
echo "Commits in $BRANCH2 that are not in $BRANCH1:"
git log --oneline $BRANCH1..$BRANCH2

# Show differences between the branches
echo ""
echo "Differences between $BRANCH1 and $BRANCH2:"
git diff $BRANCH1..$BRANCH2

# test