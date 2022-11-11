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

4. Go to the VM "darkly" Settings -> "Network"
	- section "Attached to": choose 



| [README](README.md) | [subject](sublect_ru.md) | [glossarium](glossarium.md) | How To | [defense](defense.md) |
|-|-|-|-|-|
