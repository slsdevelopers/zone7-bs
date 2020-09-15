var
	list/admins_list = list("itsjusallah","davidmwindow","flexonikea")
	admins_file = file("config/admins.txt")
	host_is_admin = TRUE //Can host be admin? TRUE by default

client
	proc
		inadminlist()
			if(src.ckey in admins_list) return TRUE

		inadmintxt()
			var/admintxt = file2text(admins_file)
			if(findtext(src.ckey,admintxt)) return TRUE

		isadmin()
			if(src.inadminlist()) return TRUE
			if(src.inadmintxt()) return TRUE

		ishost()
			if(!host_is_admin) return FALSE
			if(world.port == 0) return TRUE
			if(src.key == world.host) return TRUE

client/admin/
	verb
		reboot_world()
			set name = "Restart World"
			set category = "Admin"
			switch(alert(src,"Are you sure?","World Reboot","Yes","Cancel"))
				if("Yes")
					world << "<h2><b><font color = 'red'>World restart initiated by [src.ckey]!</font></b></h2>"
					world.Reboot()

client/admin/dev
	verb
		check_permissions()
			set category = "Admin"
			src << "Admins list: [list2text(admins_list)]"
			src << "Admins txt: [file2text(admins_file)]"
			if(src.inadminlist()) src << "You are in admins list..."
			if(src.inadmintxt()) src << "You are in admins.txt"
			if(src.isadmin()) src << "You are an admin..."
			if(src.ishost()) src << "You are a host..."
			if(host_is_admin) src << "Host admin is enabled..."
		/*add_admin()
			set category = "Dev"
			var/who = input("Enter key") as text
			switch(alert(src,"Add [who] to admins?","Add Admin","Yes","Cancel"))
				if("Yes")
					admins_list += ckey[who]
					src << "Added [who] to admins..."
					src << "[admins_list]"*/
		//add_new_admin()
			//set category = "Dev"

		set_max_multikeys(n as num)
			set category = "Admin"
			if(!n) n = 1
			if(n <= 0) n = 1
			Maximum_Addresses_Allowed = n
			world << "<b><u>>>Announcement<<</u></b><br>[Maximum_Addresses_Allowed] people can be logged in at a time with the same IP Address"
