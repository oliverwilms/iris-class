Class Oliver.ClassDefinition
{

ClassMethod Test(pClass As %String = "Data.PatientAccount", pId As %String = 2616) As %Status
{
	Set oid = $ListBuild(pClass)
	Set classDefinition = ##class(%ClassDefinition).%Open(oid)
	Set tClassDescription = classDefinition.Description
	Set oid = $ClassMethod(pClass,"%OpenId",pId)
	Set tCount = classDefinition.Properties.Count()
	For i = 1:1:tCount {
		Set propertyName = classDefinition.Properties.GetAt(i).Name
		Set propertyDescription = classDefinition.Properties.GetAt(i).Description
		Set tValue = $Property(oid,propertyName)
		Write i,"   ",propertyName," = ",tValue,!
		//Set tParameter = $ClassMethod(pClass,"getParameter",propertyName)
	}
	#Dim propertiesList = ##class(%Library.ListOfDataTypes).%New()
	//zw
	Quit $$$OK
}

ClassMethod Xml(pClass As %String = "Data.PatientAccount", pId As %String = 2616) As %Status
{
	Set oid = $ClassMethod(pClass,"%OpenId",pId)
	Set w = ##class(%XML.Writer).%New()
	Set w.Indent = 1
	Set tSC = w.RootObject(oid)
	Quit $$$OK
}
}
