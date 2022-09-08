public class ArrivingClass {
	List<Cust__c> lstcust=new List<Cust__C>();
		for(integer i=0;i<2;i++){
		Cust__c objCust=new Cust__c();
		objCust.Name='Customer' + i;
		lstCust.add(objCust);
	}
	insert lstCust;

}