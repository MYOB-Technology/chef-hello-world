# sample-cookbook

Sample cookbook


## Development environment setup

- Install Virtualbox 5.0.x
- Make sure you have a working git environment
- Install vagrant 1.8.1 Go to https://www.vagrantup.com/downloads.html and then navigate to archives
- Install the chef development kit (https://packages.chef.io/stable/windows/2008r2/chefdk-0.12.0-1-x86.msi)
- Click Chef Development Kit shortcut in your desktop and runthe commands bellow

```
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-omnibus
vagrant plugin install winrm
```

## How to create a cookbook

To create a chef cookbook just run the following command. A cookbook comprises of one or more recipes. You can even use cookbooks used by someone else. In this case, you just need to specify the cookbook in the berksfile. You can find more cookbooks in Chef supermarket website (https://supermarket.chef.io/).


```
berks cookbook sample
```

## Vagrant boxes

- https://atlas.hashicorp.com/boxes/search

## Vagrants Commands

- vagrant up (starts the vm)
- vagrant provision
- vagrant halt (stops the vm)
- vagrant destroy (completely destroy the machine)
- vagrant ssh (ssh into the machine)

## Chef

Some examples can be found at

- https://docs.chef.io/windows.html


## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
