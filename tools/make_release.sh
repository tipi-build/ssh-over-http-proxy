chmod +x ssh-over-http-proxy-linux/connect
chmod +x ssh-over-http-proxy-macos/connect
chmod +x ssh-over-http-proxy-win/connect.exe

zip -r ssh-over-http-proxy-linux.zip ssh-over-http-proxy-linux
zip -r ssh-over-http-proxy-win.zip ssh-over-http-proxy-win
zip -r ssh-over-http-proxy-macos.zip ssh-over-http-proxy-macos

sha1lin=`sha1sum ssh-over-http-proxy-linux.zip | cut -d" " -f1 | tr  '[:lower:]' '[:upper:]'`
sha1mac=`sha1sum ssh-over-http-proxy-macos.zip | cut -d" " -f1 | tr  '[:lower:]' '[:upper:]'`
sha1win=`sha1sum ssh-over-http-proxy-win.zip | cut -d" " -f1 | tr  '[:lower:]' '[:upper:]'`

rm release.txt
echo "##### Archives Checksums" >> release.txt
echo "ssh-over-http-proxy-linux.zip:${sha1lin}" >> release.txt
echo "ssh-over-http-proxy-macos.zip:${sha1mac}" >> release.txt
echo "ssh-over-http-proxy-win.zip:${sha1win}" >> release.txt

cat release.txt