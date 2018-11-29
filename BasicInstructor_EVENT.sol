pragma solidity >=0.4.22 <0.6.0;

contract BasicContract { 
    string fName; 
    uint age; 

    event Instructor( 
    string name, 
    uint age 
    );

    function setInstructor(string _fName, uint _age) public { 
    fName = _fName; 
    age = _age; 
    emit Instructor(_fName, _age);        // Add this
    } 

    function getInstructor() public constant returns (string, uint) { 
    return (fName, age); 
    } 
}
