path=$(echo $0|sed -e 's/setup.sh//')
for i in `ls -a $path`; do
  if [[ "$i" != "setup.sh" && "$i" != "." && "$i" != ".." ]]; then
    ln -s $path$i ~/$i
  fi
done
