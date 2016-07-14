#
# Cookbook Name:: sample
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


windows_package 'Fiddler' do
  source node['fiddler']['url']
  #checksum node['fiddler']['checksum']
  action :install
end

directory 'C:\Temp' do
  action :create
end

file 'C:\Temp\hello-world.txt' do
  content 'hello world'
end

powershell_script 'disable-windows-update' do
  code <<-EOH
    $WUSettings = (New-Object -com "Microsoft.Update.AutoUpdate").Settings
    $WUSettings.NotificationLevel=1
    $WUSettings.save()
  EOH
end

Chef::Log.info("Setting timezone to '#{node['myob-windows-base']['timezone']}'")
powershell_script 'set-nz-time-zone' do
  code <<-EOH
    tzutil.exe /s "#{node['myob-windows-base']['timezone']}"
  EOH
end

include_recipe 'chrome::default'

windows_package "Notepad++" do
  source "#{node['myob-windows-base']['notepad_pp']['url']}"
  installer_type :custom
  options "/S"
  action :install
end

Chef::Log.info("Create a shortcut for Notepad++")
powershell_script 'npp-desktop-shortcut' do
  code <<-EOH
$WshShell = New-Object -comObject WScript.Shell;
$Shortcut = $WshShell.CreateShortcut("$env:Public\\Desktop\\Notepad++.lnk");
$Shortcut.TargetPath = "C:\\Program Files (x86)\\Notepad++\\notepad++.exe";
$Shortcut.Save();
  EOH
end
