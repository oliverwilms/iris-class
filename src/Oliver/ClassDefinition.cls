Class Oliver.ClassDefinition
{

ClassMethod Test(pClass As %String = "otw.aws.nlb.access") As %Status
{
	Set oid = $ListBuild(pClass)
	Set classDefinition = ##class(%ClassDefinition).%Open(oid)
	Set tClassDescription = classDefinition.Description
	Set tCount = classDefinition.Properties.Count()
	For i = 1:1:tCount {
		Set propertyName = classDefinition.Properties.GetAt(i).Name
		Set propertyDescription = classDefinition.Properties.GetAt(i).Description
		//Set tParameter = $ClassMethod(pClass,"getParameter",propertyName)
	}
	#Dim propertiesList = ##class(%Library.ListOfDataTypes).%New()
	zw
	Quit $$$OK
}

}
