@isTest
private class GetObjectNameTest
{
    @istest
    private static void testMethodPositive()
    {
        List <String> inputString=new List <String>();
        inputString.add('500');
        List <String> objectName = GetObjectName.findObjectNameFromRecordId(inputString);
        System.assertEquals(objectName[0],'Case');
    }
    
    @isTest
    private static void testMethodNegative()
    {
        List <String> inputString=new List <String>();
        inputString.add('500');
        List <String> objectName = GetObjectName.findObjectNameFromRecordId(inputString);
        System.assertNotEquals(objectName[0],'Account');
    }
}