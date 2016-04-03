# govuk-vagrant-localconfig

Clone this repo, change the username and add this to `govuk-puppet/development/Vagrantfile.localconfig`:

```ruby
config.vm.provision :shell, path: "https://raw.githubusercontent.com/tijmenb/govuk-vagrant-localconfig/master/initialiser.sh"
```
