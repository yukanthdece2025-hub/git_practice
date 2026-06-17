echo " total number of commits"
git rev-list --count HEAD
echo " number of commits per author"
git log --format="%an" | sort | uniq -c | sort -rn
echo "the 3 most recently modified files"
git log --name-only --format="" | grep -v '^$' | awk '!seen[$0]++' | head -3
echo "the file that has been changed in the most commits"
git log --diff -filter=M --name-only --format="" | sort | uniq -c | sort -rn | head -3
