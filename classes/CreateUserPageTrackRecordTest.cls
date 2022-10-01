@istest
public class CreateUserPageTrackRecordTest 
{
 @istest
    private static void CreateUserPageTrackRecordpositive()
    {
        String Title='Community Page';
  		Boolean Result= CreateUserPageTrackRecord.createUserPageTrackRecord(Title);
        System.assertEquals(Result,TRUE);
    }
    
     @istest
    private static void CreateUserPageTrackRecordnegative()
    {
        String Title= NULL;
  		Boolean Result= CreateUserPageTrackRecord.createUserPageTrackRecord(Title);
        System.assertEquals(Result,TRUE);
    }

}