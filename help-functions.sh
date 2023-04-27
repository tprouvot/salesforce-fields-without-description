#!/bin/sh

# Count number of fields without description
function export_nb_fields_no_desc(){
	echo "Export number of fields without description variable"
	local fileName=fieldsWithoutDescription.txt

	grep -r -L "<description>" ./force-app/main/default/objects/*/fields/*__c.field-meta.xml > $fileName

	echo "File:"
	echo $fileName
	NB_FIELD_NO_DESC=$(cat $fileName | sed -n '$=')
	echo $NB_FIELD_NO_DESC
}

export_nb_fields_no_desc