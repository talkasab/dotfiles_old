# Install dotfiles into the home directory
for file in autojump bash_profile bashrc git-prompt.conf gitconfig irbrc railsrc
do
  fromfile="_$file"
  tofile="$HOME/.$file"
  cp -v $fromfile $tofile
done

for dir in bin
do
  todir="$HOME/$dir"
  cp -v $dir/* $todir
done
  