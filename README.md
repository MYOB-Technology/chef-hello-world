# sample-cookbook

Sample cookbook


## Development environment setup

- Install vagrant (https://www.vagrantup.com/downloads.html)
- Install the chef development kit
- Click Chef Development Kit shortcut in your desktop

```
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-omnibus
vagrant plugin install winrm
```

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

### Cookbooks

- https://supermarket.chef.io/cookbooks/sql_server

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['qa']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### sample::default

Include `sample` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[sample::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
