URL=`date "+%Y%m%d"`
DATE=`date "+%Y.%m.%d"`
echo $DATE
cp -n _template.html $URL.html
sed -ie 's/$date/'$DATE'/' $URL.html
sed -ie 's/$url/'$URL'/' $URL.html
echo "COMPLETE!"

