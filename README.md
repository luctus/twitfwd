	twitfwd
	=======

	A tweet forwarding system wrote in Ruby on Rails. You can also send DM to multiple users

	Instalation
	===========

	Download the repo and then:
	```
	$ cd twitfwd
	$ vagrant up
	$ vagrant provision
	$ vagrant ssh
	vagrant$ sudo apt-get install libsqlite3-dev
	vagrant$ bundle install
	vagrant$ bundle exec rake db:migrate
	vagrant$ bundle exec rails s
	```

	And then point yout browser to:
	192.100.100.100:3000

	Or (in a mac) edit your ```/etc/hosts``` file and add something like this

	```
	192.100.100.100    dev.twitfwd.com
	```

	And then point your browser to:
	dev.twitfwd.com:3000