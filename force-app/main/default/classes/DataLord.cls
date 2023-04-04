public with sharing class DataLord {
    public DataLord() {
    }

    public Integer NumAccounts(){
        return [SELECT COUNT() FROM Account];
    }

    public Integer NumHot(){
        return [SELECT COUNT() FROM ACCOUNT WHERE Rating = 'Hot'];
    }
}