#!/bin/bash
ALIAS=$1
KEYTOOLPATH=$2
JCPPATH=$3
USER=$4
EXP_DATE=$(sudo -u $USER $KEYTOOLPATH/keytool -providerpath $JCPPATH/JCP.jar:$JCPPATH/ASN1P.jar:$JCPPATH/asn1rt.jar:$JCPPATH/forms_rt.jar  -list -provider ru.CryptoPro.JCP.JCP -storetype HDImageStore -keystore NONE -storepass "" -J-Dkeytool.compat=true -alias $ALIAS -J-Duse.cert.stub=true -v | grep "Valid from" | grep -oPm 1 "until: \K(.+)")
date -d "$EXP_DATE" +%s
