public class BookingTriggerHandler {
    
    public static void bookingStatusConfirmed(List<Booking__c> bkList){
        for(Booking__c bk : bkList){
            bk.Booking_status__c = 'Confirmed';
            
        }
    }
    
    public static void bookingVegField(List<Booking__c> b){
        for(Booking__c b1 : b){
            if(b1.Food_Type__c=='Veg' && b1.Food_Items__c==null ){
                b1.Food_Items__c='Sandwich';
                if(b1.Food_Type__c=='Veg' && b1.Beverage__c==null){
                    b1.Beverage__c='Juice(Basis of Availability)';
                }
                
            }
            
        }
    }
    public static void bookingNonVegField(List<Booking__c> b1){
        for(Booking__c b2 : b1){
            if(b2.Food_Type__c=='Non-Veg' && b2.Food_Items__c==null){
                b2.Food_Items__c='Chicken Biryani';
                if(b2.Food_Type__c=='Non-Veg' && b2.Beverage__c == null){
                    b2.Beverage__c='Juice(Basis of Availability)';
                }
                
            }
        }
    }
    
    public static void bookingStatusCancelled(list<booking__c>book, Map<Id, Booking__c> bookNewMap){
        for(booking__c boo: book){
            if(boo.Booking_status__c=='Cancelled')
            {
                bookNewMap.get(boo.Id).addError('Can not Edit Cancelled Ticket');
            }
        }
        
    }
}