### to run presentation 
```npm start```
### to start vagrant 
```vagrant up```

### In vagrant vm

##### openjdk 11 from package
```sudo apt-get install openjdk-11-jdk-headless```

When using openjdk with gradle wrapper it does not recognize the gradle server SSL certificate 
and I am using trusted CA list copied from Ubuntu 18.04

```export JAVA_OPTS='-Djavax.net.ssl.trustStore=/vagrant/cacerts_from_ubuntu_18.04'``` 

##### install sdkman first
```curl -s "https://get.sdkman.io" | bash```                                                                   

and then activate

```source "/home/vagrant/.sdkman/bin/sdkman-init.sh"```

and see what java versions are available

```sdk ls java```

choose 11.0.2-open and install 

```sdk i java 11.0.2-open```

#### to run example app app01

```bash
cd /vagrant/code/app01/
./gradlew installDist
cd ~/app01
```
```
export KEYFILE_LOCATION=/etc/os-release
```

#### to run with security manager
```bash
JAVA_OPTS='-Djava.security.manager' bin/app
```

#### run with custom policy
```bash
JAVA_OPTS='-Djava.security.manager -Djava.security.policy==my.policy' bin/app
```

