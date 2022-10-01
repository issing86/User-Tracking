/* * * * * * * * * * * * * * * 
Author: Ishvinder Singh
Description: The class is used for retreiving the Page Title of the Community Page using the "Community User Track" LWC 
* * * * * * * * * * * * * * * */

public with sharing class CreateUserPageTrackRecord 
{
    @AuraEnabled
    public static Boolean createUserPageTrackRecord(String PageTitle) 
    {
        try
        {
            User_Page_Track__c uptRec = new User_Page_Track__c();
            uptRec.User__c= UserInfo.getUserId();
            uptRec.Tracking_Page__c=PageTitle;
            uptRec.Tracking_Time__c=System.now();
            insert uptRec; 
            return TRUE;
        }
        catch(Exception e)
        {
            System.debug(e);
            return FALSE;
        }
    }
}