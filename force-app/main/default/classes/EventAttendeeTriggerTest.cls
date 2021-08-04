@isTest
public class EventAttendeeTriggerTest {
	
    @testSetup
    public static void setupData(){
        
        Event_Organizer__c  org = new Event_Organizer__c (
            Name = 'Bhargav Kumar',
            Phone__c = '986457826',
            Email__c = 'bhargavkumar3098@gmail.com',
            Alternative_Phone__c  = '9858647581',
            Alternative_Email__c ='bhargavaathava98@gmail.com'
        );
        insert org;
        
        Event__c event = new Event__c(
            Name__c = 'AV Universe Campaign',
            Event_Organizer__c  = org.Id,
            Event_Type__c = 'Virtual',
            Frequency__c  = 'Weekly',
            Max_Seats__c  = 199,
            Recurring__c = true,
            Live__c = true,
            Start_DateTime__c = System.now(),
            End_Date_Time__c  = System.now().addDays(3)
        );
        insert event;
        Attendee__c att = new Attendee__c(
            Name = 'Krishna',
            Email__c = 'krishna@gmail.com',
            Phone__c = 'bhargavaathava98@gmail.com'
        );
        insert att;
        
        Event_Attendee__c evtAtt = new Event_Attendee__c(Event__c = event.Id, Attendee__c = att.Id);
        insert evtAtt;
    }
    
    @isTest
    static void sendEmailTest(){
        Test.startTest();
        try{
            integer i = 10/0;
        }catch(System.Exception ex ){
            
        }
        Test.stopTest();
    }
}