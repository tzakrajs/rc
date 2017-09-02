path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $path
home="/home/`whoami`"
echo $home
for i in `ls -a $path`; do
  if [[ "$i" != "setup.sh" && "$i" != "." && "$i" != ".." && "$i" != ".git" ]]; then
    rm -f $home/$i.old
    mv $home/$i $home/$i.old
    ln -s $path/$i $home/$i
  fi
done
