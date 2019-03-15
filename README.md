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

### JAR signing and veryfication 

Generate a keypair 

````bash
keytool -genkeypair -alias isv -keystore keystore -storetype PKCS12
````

Generate certificate signing request 

```bash
keytool -certreq -alias isv -keystore keystore -file isv.csr
```

sign it in external tool, export and import into keystore (first import CA cert) 

```bash
keytool -importcert -alias ca -keystore keystore -file CA.crt
keytool -importcert -alias isv -keystore keystore -file isv.crt
```

now 

```bash
cd ~/app01/lib
jarsigner -keystore /vagrant/xca/keystore  dependency.jar isv
```

and we can veify the signature 

```
jarsigner -verify -keystore /vagrant/xca/keystore -storepass ****** -certs -verbose   dependency.jar isv
```

running the app 

```bash
JAVA_OPTS='-Djava.security.manager -Djava.security.policy=my.signed.jars.policy' bin/app
```
make sure everyone notice single = sign

### app02

```
cd ~/app02
export JAVA_OPTS='-Djava.security.manager -Djava.security.policy=jar_runner.policy  -Djava.security.debug=access:failure'
bin/main
```

adding login config
```
export JAVA_OPTS='-Djava.security.manager -Djava.security.policy=jar_runner.policy -Djava.security.debug=access:failure -Djava.security.auth.login.config=login.config'
```

