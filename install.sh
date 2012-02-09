# Install dotfiles into the home directory
for file in bash_profile bashrc git-prompt.conf gitconfig pryrc railsrc autotest ackrc tmux.conf
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

rsync -v -Ca --delete --exclude '.git' --exclude '.DS_Store' _vim/* ~/.vim
ln -vsf ~/.vim/vimrc ~/.vimrc
ln -vsf ~/.vim/gvimrc ~/.gvimrc
