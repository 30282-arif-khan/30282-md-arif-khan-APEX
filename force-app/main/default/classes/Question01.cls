public with sharing class Question01{


    //a

  public static List<Account> retriveAccount(string id){

    List<Account> accounts = [

    SELECT Id, Name, (SELECT Id, Name, Email, Phone FROM Contacts),(SELECT Id, Name, StageName, Amount, CloseDate FROM Opportunity)
    FROM Account
    WHERE Id = :id
    ];

    returns accounts;

  }



  //b
public static string textSearch(string searchItem){

 string searchResult = [

 SELECT Name, (SELECT Name FROM  Contacts)

 FROM Account
 WHERE Name = :searchItem



 ];

 return searchResult;



}




}