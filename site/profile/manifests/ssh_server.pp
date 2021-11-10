class profile::ssh_server {
	package { 'openssh-server':
		ensure => present,
	}
	
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user => 'root',
		type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDzqvb9F6c7prOaGrd+bh9mwbaFfgeRPgcYm6pGgVyZ/VDF1J+VAy/MvaPmI5QATO8fqCLAlERqq0qym5cJsyv06nw0oG57o/5TitJVXFGPYVweuoqphzj9jEZPeiMtqUTYXXMTBdibgIPxw/no525gNSVb/5EczCbUkkjcb1hnuQwsDVzm/W7XZI2g7FaFB/G0KWs0PCwG77MmeAQCh98b8ZXSUTpHgNmqI+Es+1Hu4m0OKQFeyqIb8lIv0+CSpot45wKdfx8cPKg/hL+N7BvTklYW54OZMRmQWQyRZtODzrnFRf2LbRphkbjcTpuH21zf9bRj9IDhglYEHXOhVht',
	}	
}
