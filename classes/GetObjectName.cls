/* * * * * * * * * * * * * * * 
Author: Ishvinder Singh
Description: The class is used for retreiving the Name of the Object on the basis of first three characters of the Salesforce ID 
* * * * * * * * * * * * * * * */

public class GetObjectName
{
    @invocableMethod
    public static List <String> findObjectNameFromRecordId(List <String> recordIds)
    {
        String objectName = '';
        List <String> resultobjectName = new List <String>() ;
        Map<String, Schema.SObjectType> gd =  Schema.getGlobalDescribe();
        try
        {
            for(String recordIterator:recordIds)
            {
                String myIdPrefix = String.valueOf(recordIterator).substring(0,3);
                for(Schema.SObjectType stype : gd.values())
                {
                   Schema.DescribeSObjectResult dsr = stype.getDescribe();
                    String prefix =dsr.getKeyPrefix();
                    if(prefix!=null && prefix.equals(myIdPrefix))
                    {
                        objectName = dsr.getName();
                        resultobjectName.add(objectName);
                        break;
                    } 
                }
            }
        }
        catch(Exception e)
        {
            System.debug(e);
        }
        return resultobjectName;
    }
}