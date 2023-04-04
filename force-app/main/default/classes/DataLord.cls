public with sharing class DataLord {
    public DataLord() {
    }

    public Integer NumAccounts(){
        return [SELECT COUNT() FROM Account];
    }

    public Integer NumHot(){
        return [SELECT COUNT() FROM Account WHERE Rating = 'Hot'];
    }

    public List<Account> BigFive(){
        return [SELECT annualRevenue FROM Account ORDER BY annualRevenue DESC NULLS LAST LIMIT 5];
    }
}