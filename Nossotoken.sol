pragma solidity >=0.4.22 <0.6.0;

contract owned {
    
    address owner;

    constructor () public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _ ;
    }

    function transferOwnership (address newOwner) public onlyOwner {
        owner = newOwner;
    }
}

contract NossoToken is owned {
         
          string public  symbol;
          string public name;
          uint8 public decimals ;
          uint256 public totalSupply ;

	// Balances for each account
	mapping(address => uint256) public balancesOf;

	// Owner of account approves the transfer of an amount to another account
    mapping(address => mapping (address => uint256)) allowed;
         
    event Transfer(address indexed _from, address indexed _to, uint _value);
    
    constructor (uint256 initialSupply, string tokenName, string tokenSymbol, uint8 decimalsUnits) public { 

        balancesOf[msg.sender] = initialSupply;
        totalSupply= initialSupply; 
        name = tokenName; 
        symbol = tokenSymbol;
        decimals =decimalsUnits;

    }
    
    function transfer(address _to, uint256 _value) public {

        if (_to == 0x0) revert();                               // Prevent transfer to 0x0 address. Use burn() instead
        if (balancesOf[msg.sender] < _value) revert();           // Check if the sender has enough
        if (balancesOf[_to] + _value < balancesOf[_to]) revert();    // Check for overflows
        balancesOf[msg.sender] -= _value;                     // Subtract from the sender
        balancesOf[_to] += _value;                                 // Add the same to the recipient
        emit Transfer(msg.sender, _to, _value);                   // Notify anyone listening that this transfer took place

    }

}