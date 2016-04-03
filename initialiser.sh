if [ ! -d govuk ]; then
 ln -s /var/govuk govuk
fi

# make github.gds available on the VM
grep -q 'github.gds' /etc/hosts || echo '192.168.9.110   github.gds' >> /etc/hosts

if [ -f .gitconfig ]; then
  rm .gitconfig
fi

wget -nv -O .gitconfig https://raw.githubusercontent.com/tijmenb/govuk-vagrant-localconfig/master/.gitconfig
chown vagrant:vagrant .gitconfig

if [ -f .git-aliases.sh ]; then
  rm .git-aliases.sh
fi

wget -nv -O .bash_aliases https://raw.githubusercontent.com/tijmenb/govuk-vagrant-localconfig/master/.bash_aliases
chown vagrant:vagrant .bash_aliases
