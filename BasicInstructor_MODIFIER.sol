pragma solidity >=0.4.22 <0.6.0;

contract BasicContract {
    
   string fName;
   uint age;
   address owner;
   
    event Instructor(
       string name,
       uint age
    );

   constructor() public {     
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
   function setInstructor(string _fName, uint _age) onlyOwner public {
       fName = _fName;
       age = _age;
       emit Instructor(_fName, _age);
   }
   
   function getInstructor() public constant returns (string, uint) {
       return (fName, age);
   }
    
}

   