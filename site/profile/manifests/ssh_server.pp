class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCztyREyl7rLsZnO4+OT1GpBhTiCRXtM4GT5m8TFwVgeV4F70plrQsBXgk4VhVkjiFn5H4byOu2zdxbX10JSa89Hdrx+UOBVtJgRu0yqtIoIxQxdfk1TbPSatF3Gi3SlPzTVTCY3MUgST4Cat7PX2O9Ami2ydslRMiyGb+C218Y7sCcTxdtJY4j/EIaVKALEb6FY4S58edBy6oFa67UTLjOs5Cjqck7Cqcu+hPkEE6/+8djNx4jsRigDQlDybOcK5ouucnUrdtwldzws7cQETAKpOwSQ5gkpo9HyU6sU51eeM7dBe01DewG3jbuWnHKsp1wOXeMqufXuOV5T4m2lakL',
        }  
}
