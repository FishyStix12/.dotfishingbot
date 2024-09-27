#!/usr/bin/env sh

DEBIAN_SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
RHEL_SSL_CERT_FILE=/etc/pki/tls/certs/ca-bundle.crt
OPENSUSE_CERT_FILE=/etc/ssl/ca-bundle.pem
TERMUX_CERT_FILE=/data/data/com.termux/files/usr/etc/tls/cert.pem

if [ ! -f "$SSL_CERT_FILE" ] ; then
  if [ -f "$DEBIAN_SSL_CERT_FILE" ] ; then
    SSL_CERT_FILE="$DEBIAN_SSL_CERT_FILE"
  elif [ -f "$RHEL_SSL_CERT_FILE" ] ; then
    SSL_CERT_FILE="$RHEL_SSL_CERT_FILE"
  elif [ -f "$OPENSUSE_CERT_FILE" ] ; then
    SSL_CERT_FILE="$OPENSUSE_CERT_FILE"
  elif [ -f "$TERMUX_CERT_FILE" ] ; then
    SSL_CERT_FILE="$TERMUX_CERT_FILE"
  fi
fi

if [ -z "$SSL_CERT_FILE" ] ; then
  echo "Warning: Couldn't find the SSL CA certificate store file." | fold -sw 80
  echo
  echo "Toxic uses HTTPS to download a list of DHT bootstrap nodes in order to connect to the Tox DHT. This functionality is optional, you should be able to use Toxic without it. If you choose to use Toxic without it, you might need to manually enter DHT bootstrap node information using the '/connect' command in order to come online." | fold -sw 80
  echo
  echo "To fix this issue, install SSL CAs as provided by your Linux distribution, e.g. 'ca-certificates' package on Debian/Ubuntu. If it's already installed and you still see this message, run this script with SSL_CERT_FILE variable set to point to the SSL CA certificate store file location. The file is usually named 'ca-certificates.crt' or 'ca-bundle.pem'." | fold -sw 80
  echo
  printf "Do you wish to run Toxic without SSL CA certificate store file found? (y/N): "
  read -r answer
  if echo "$answer" | grep -v -iq "^y" ; then
    echo "Exiting."
    exit
  fi
fi

cd "$(dirname -- $0)"

SSL_CERT_FILE="$SSL_CERT_FILE" TERMINFO=./terminfo ./toxic -c toxic.conf
