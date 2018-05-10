#!/bin/bash

script_fname="conflicts"
direct=$1
echo "#!/bin/bash" > $script_fname 

if [[ "$2" != "cont" ]]
then
array=`find "$direct" -type f`
IFS=$'\n' sorted=($(awk -F "/" '{print $NF,$0}' <<<"${array[*]}" | sort ))
else
array=`find "$direct" -type f | sed -e 's/ /\\\ /g' -e 's/'\''/\\\'\''/g'`
IFS=$'\n' sorted=($(awk -F "\n" '{var=$0;cmd="md5sum " $0; cmd| getline;close(cmd);print $1}' <<<"${array[*]}"| sort ))
fi
index=0
temp=
element_count=`expr ${#sorted[*]} - 1`

while  [ "$index" -lt "$element_count" ]
do
	temp1=`expr "${sorted[$index]}" : '\(.*\./\)'` 
	let "next = $index + 1"
	temp2=`expr "${sorted[$next]}" : '\(.*\./\)'`
	if [[ "$temp1" = "$temp2" ]]
	then
		echo "#######-------------|$temp1|-----------------" >> $script_fname 
		echo "#rm "`expr "${sorted[$index]}" : '.*\(\./.*\)' | sed -e 's/ /\\\ /g' -e 's/'\''/\\\'\''/g'` >> $script_fname 
	fi
	let "index = $index + 1"
	while [[ "$temp1" = "$temp2" ]]
	do
		echo "#rm "`expr "${sorted[$index]}" : '.*\(\./.*\)' | sed -e 's/ /\\\ /g' -e 's/'\''/\\\'\''/g'` >> $script_fname 
		let "index = $index + 1"
		temp2=`expr "${sorted[$index]}" : '\(.*\./\)'`
	done
done


