TCP Multiplexer
===============

Many devices such as the Veris meter and the Eaton meter only allow for one TCP connection. This multiplexer can handle one up-link connection to the meter, and accept multiple clients so several clients can receive data from the meters.

The multiplexer is written in node.js by Tianji. 

Installation
============
Nodejs is the only dependency:
	<pre>
	sudo apt-get install python-software-properties
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs
	</pre>
	
If not linux, follow directions here: [Nodejs Installation](http://nodejs.org/download/).

Usage
======
To start using it, open serializer.js and modify the lines with the [PORT], [UPLINK_IP_ADDRESS], and [UPLINK_PORT]:
	<pre>
		var PORT = [PORT];
		var UPLINK_ADDRESS = '[UPLINK_IP_ADDRESS]';
		var UPLINK_PORT = [UPLINK_PORT];
	</pre>

Then, run it:
	<pre>
	node serializer.js
	</pre>

To keep the serializer running after logging out of ssh, use screen:
	<pre>
	screen -S [Name_of_screen_session]
	node serializer.js
	</pre>
	To detach from the screen session press: Ctrl-a, Ctrl-d in succession. 
	
	To attach to a screen session again type:
	<pre>
	screen -r [Name_of_screen_session]
	</pre>

	Running the command without the name with give all the names of the screen sessions.

Where it's used
==============

The multiplexer is running on LabSenseVM @ 128.97.93.90 for the Veris and Eaton meters.

To access LabSenseVM, ssh with nesl@128.97.93.90 and use one of the standard passwords.

Currently, the serializer.js file is running on LabSenseVM for the Veris and Eaton meters. The serializer is renamed veris_serializer.js and eaton_serializer.js. 

See [NESL Wiki](https://sites.google.com/a/nesl.info/internal/resources/power-panel-monitor) for more information.
