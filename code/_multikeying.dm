//Created by Yash 69, inspired by Obscue (Sorry if I misspelled it bro)
//No need to add a "Check Multikeying" verb that people have on games
//This stops multikeying, This is actually the right way to do it.
//If you're doing it a different way, you're probably using "continue" in some part of it
var/list/IP_Address[] = new()//Teporary logging of IP Addresses
var/Maximum_Addresses_Allowed = 1//Only 1 person on at a time
//You can change how many people are allowed at a time by changing the number.
//Never set to 0, otherwise no one can login
client
	New()
		if(address)//If the person logging in has a address, because when you host your address is null and makes this entire thing mess up
			if(IP_Address.Find("[address]") && IP_Address["[address]"]>0)
				IP_Address["[address]"]++//Add how many people on that address
				if(IP_Address["[address]"]>Maximum_Addresses_Allowed)//Checks to see how many can login
					src<<"<font color=red>You can only have a maximum of [Maximum_Addresses_Allowed] keys on at a time.</font>"//Message they get before being booted
					del(src)//Obivious...
			else
				IP_Address["[address]"] = 1//When they login, they're going to have a character logged in anyway if they're not trying to multikey
		..()
	Del()
		if(address && IP_Address.Find("[address]"))
			IP_Address["[address]"]--//Subtract the people so they can log out and login with a different key or the same key
			if(IP_Address["[address]"]<=0)//Check it
				IP_Address -= "[address]"//Take their address out of it
		..()
