public with sharing class accountsController {
    //class to get account details
    public accountsController() {

    }

    @AuraEnabled
    public static string getAccounts(){
        try {
            return [SELECT id,Name FROM Account Order By CreatedDate DESC LIMIT 10]
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}