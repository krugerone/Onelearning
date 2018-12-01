pragma solidity ^0.4.4;
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract TutorialToken is ERC20 {

string public name = 'TutorialToken';
string public symbol = 'TT';
uint public decimals = 2;
uint public INITIAL_SUPPLY = 12000;

    constructor() public{
        super._mint(msg.sender, INITIAL_SUPPLY);
    }
}

