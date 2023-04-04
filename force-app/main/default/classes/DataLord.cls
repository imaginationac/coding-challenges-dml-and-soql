public with sharing class DataLord {
    public DataLord() {
    }

    public Integer NumAccounts(){
        return [SELECT COUNT() FROM Account];
    }

    public Integer NumHot(){
        return [SELECT COUNT() FROM ACCOUNT WHERE Rating = 'Hot'];
    }

    // Return the number of Accounts tha have and apersand in the Name;
    public Integer NumComplex(){
        return [SELECT COUNT() FROM Account WHERE Name LIKE '%&%'];
    }

    // Return the Opportunity with the most recent close date that had an amount over $100,000
    public Opportunity LastBigOpportunity(){
        return [SELECT closeDate, amount FROM Opportunity WHERE amount > 100000 ORDER BY closeDate LIMIT 1];
    }
}