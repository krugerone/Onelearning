pragma solidity >=0.4.22 <0.6.0;

contract HelloWorldContract {
    
    string word; 
    address issuer; 
   
    
    constructor() public{
        issuer = msg.sender;
    }
    
    modifier IfIssuer(){
         if (issuer != msg.sender){
          //throw;
            revert();
         } else {
            _;
        }
    }
    
    function getWord() public view returns (string) {
        return word;
    }
    
    function setWord(string _newWord) public IfIssuer returns (bool)  {
          word = _newWord;
          return true;
          }
}
   