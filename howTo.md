| [README](README.md) | [subject](sublect_ru.md) | [glossarium](glossarium.md) | How To | [defense](defense.md) |
|-|-|-|-|-|

# How To

1. Download [the image](https://cdn.intra.42.fr/isos/Darkly_i386.iso)
2. Go to that folder and convert the downloaded image to a format supported by VirtualBox:
```
VBoxManage convertfromraw --format VDI Darkly_i386.iso Darkly_i386.vdi

```

3. Run VirtualBox
	- click "New" button
	
	<img width="62" alt="Screen Shot 2022-11-11 at 10 24 40" src="https://user-images.githubusercontent.com/84193980/201290196-43410f66-660a-4540-9496-4bf91d85679a.png">

	- choose folder "Machine folder" with enough disk space (on schools Macs - goinfre)
	- Go to th "Expert mode"
	
	<img width="723" alt="Screen Shot 2022-11-11 at 10 27 46" src="https://user-images.githubusercontent.com/84193980/201290266-6d2d81cf-b6a7-44ce-b384-e7961254270f.png">

	- Choose "Use an existing virtual hard disk drive" -> Click "Add" button
	
	<img width="64" alt="Screen Shot 2022-11-11 at 10 34 41" src="https://user-images.githubusercontent.com/84193980/201290340-7b50b622-ff19-4ec3-b8c1-f2405667ffa6.png">

	- choose Darkly_i386.vdi -> "Open" -> "Choose" 
	- fill "Name" field (darkly) and type "Create".

4. Create a new host-only adapter in VirtualBox
	- **Create the Virtual Network.** First, you must set up a virtual network that the host-only adapter(s) will communicate through.

		a. In the VirtualBox window, click File -> Host Network Manager -> Create.

		b. Check Enable under the DHCP Server column of the network you just created.

		c. Select your network and click Properties.

		d. In the Adapter Tab, select Configure Adapter Manually and use the following settings:
		```
		IPv4 Address: 192.168.56.1
		IPv4 Network Mask: 255.255.255.0
		```
		e. In the DHCP Server Tab, make sure that Enable Server box is checked, and use the following settings:
		```
		Server Address: 192.168.56.100
		Server Mask: 255.255.255.0
		Lower Address Bound: 192.168.56.3
		Upper Address Bound: 192.168.56.254
		```
		f. Click Apply and then Close

5. **Add a Host-Only Adapter to the Guest Machine.** For each guest you want to communicate with using the network from the previous step, you need to add a host-only adapter.

	- Select the appropriate guest machine (darkly)

	- Click Settings -> Network

	- Under the Adapter tab, input the following settings:
	```
	Enable Network Adapter: Checked
	Attached to: Host-Only Adapter
	Name: vboxnet0 (NOTE: this should be the name of the network you created in the previous steps)
	In "Promiscuous Mode" select "Allow VMs"
	```
	<img width="653" alt="Screen Shot 2022-11-11 at 11 01 11" src="https://user-images.githubusercontent.com/84193980/201295011-dbbaa805-d7f9-400a-8658-72c3a770c027.png">

	- Click OK

	The host-only adapter should be ready to use on this machine. 
	```
	If you would like to network multiple machines together, repeat steps this paragraph 5 for each guest machine.
	```

5. Go to the VM "darkly" Settings -> "Network"
	- section "Attached to": choose 



| [README](README.md) | [subject](sublect_ru.md) | [glossarium](glossarium.md) | How To | [defense](defense.md) |
|-|-|-|-|-|
