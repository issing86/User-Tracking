import { LightningElement } from 'lwc';
import createUserPageTrackRecord from '@salesforce/apex/CreateUserPageTrackRecord.createUserPageTrackRecord';
export default class CommunityUserTrack extends LightningElement 
{
  connectedCallback()
  {    
      this.createUserPageTrackRecordlwc();
  }

  createUserPageTrackRecordlwc()
  {
    let output = document.title;
      createUserPageTrackRecord({PageTitle : output})
      .then(result=> {
          console.log(result);
        })
        .catch(error=> { 
          console.log(error);
        }); 
  }
}