Desktop Console
==========

Devel tools for command line (screen) work.  Includes screen,nano, and various tools I use a lot.

Usage:
	docker run -i -t -v mycode:somewhere desktop-console /bin/bash

	or via ssh

	docker run --name mydata desktop-console /bin/bash
	useradd -m me -s /bin/bash -G sudo,users
	passwd me -or- add auth keys
	exit
	docker run -d --volumes-from mydata -v mycode:somwhere -P desktop-console
	ssh -p <docker assigned port>
