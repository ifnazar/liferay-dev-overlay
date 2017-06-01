#!/bin/sh
set -o errexit ; set -o nounset

export JAVA_HOME=${JAVA8_HOME}



rm -r ca



# ---------------------------------------------------------------------------
# SEE
#
# https://www.elastic.co/guide/en/shield/2.4/certificate-authority.html
# ---------------------------------------------------------------------------

#
# "Create the directory structure where the CA configuration and certificates will be stored. 
# You need to create a ca directory and three subdirectories: private, certs, and conf."
#

mkdir -p ca/private ca/certs ca/conf



cp caconfig.cnf ca/conf



#
# "Populate two required files, serial and index.txt."
# 

cd ca
echo '01' > serial
touch index.txt

#
# "Generate a self-signed CA certificate to establish your CA as an authority."
#

openssl req -new -x509 -extensions v3_ca -keyout private/cakey.pem -out certs/cacert.pem -days 1460  -config conf/caconfig.cnf



# ---------------------------------------------------------------------------
# SEE
#
# https://www.elastic.co/blog/getting-started-with-elasticsearch-ssl-native-authentication
# ---------------------------------------------------------------------------

#
# "Create a new Java Keystore by importing the CA certificate that will issue the wildcard certificate."
#

keytool -importcert -keystore liferay-shield.jks -file certs/cacert.pem -trustcacerts -storepass s3cret -alias ca_cert


#
# "Create a private key in the Java Keystore."
#

keytool -storepass s3cret -genkey -alias liferay-es-shield -keystore liferay-shield.jks -keyalg RSA -keysize 2048 -validity 3650


#
# "Create a certificate signing request (CSR) using keytool for requesting a certificate from the issuing CA."
#

keytool -storepass s3cret -certreq -alias liferay-es-shield -keystore liferay-shield.jks -keyalg RSA -keysize 2048 -validity 3650 > liferay-shield-node01.csr


# ---------------------------------------------------------------------------
# SEE AGAIN
#
# https://www.elastic.co/guide/en/shield/2.4/certificate-authority.html
# ---------------------------------------------------------------------------

# 
# "Use your CA to sign the CSR using openssl."
#

openssl ca -in liferay-shield-node01.csr -notext -out liferay-shield-node01-signed.crt -config conf/caconfig.cnf -extensions v3_req




# ---------------------------------------------------------------------------
# SEE AGAIN
#
# https://www.elastic.co/blog/getting-started-with-elasticsearch-ssl-native-authentication
# ---------------------------------------------------------------------------

#
# "Once the CA has signed the CSR and returned the certificate in PEM format, import it into the Java Keystore."
#

keytool -storepass s3cret -importcert -keystore liferay-shield.jks -alias liferay-es-shield -file certs/01.pem

