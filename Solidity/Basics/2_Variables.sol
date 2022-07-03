// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract variables{
    //state variable
    int256 public myInt = 1; 
    uint public myUint = 1; //unsigned no negative intergers //default uint = uint256
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public mystring = "Hello, world!";
    bytes32 public myByte32 = "Hello, world!"; // stores like an array

    address public myAddress = 0x86cA07C6D491Ad7A535c26c5e35442f3e26e8497;

    //custom datatype with structs
    struct MyStruct {
        uint256 myUint256;
        string mystring;
    }

    //instance of the structure (usage)
    MyStruct public myname = MyStruct(1,"Hello, world!");


    // Local Varibles
    //use pure if we dont change anything in blockchane (use of local variable)
    function getValue() public pure returns(uint){
        uint value =1;
        return value;
    }
}
