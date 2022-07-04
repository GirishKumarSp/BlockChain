// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array{

    uint[] public intarray = [1,2,3];
    string[] public strarry = ["apple","caroot","banana"];
    string[] public custarry;
    uint[][] public array2D = [ [1,2,3],[4,5,6] ];

    function addtoarray(string memory _str) public {
        custarry.push(_str);
    }

    //return the number of element in an array 
    function countarrayele() public view returns(uint){
        return custarry.length;
    }

    //remove element from the array
    function rem() public{
        custarry.pop();
    }
}
