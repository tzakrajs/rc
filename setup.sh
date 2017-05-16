for i in `ls -a ~/rc`; do
  if [[ "$i" != "setup.sh" && "$i" != "." && "$i" != ".." ]]; then
    ln -s ~/rc/$i ~/$i
  fi
done
