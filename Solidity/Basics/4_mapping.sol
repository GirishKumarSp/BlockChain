// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
    mapping(uint => string) public names;
    mapping(uint => book ) public books;
    mapping(address => mapping(uint => book )) public mybooks;


    constructor() {
        names [1] = "billy";
        names [2] = "jimmy";
    }

    struct book{
        string author;
        string title;
    }

    function addbook(
        uint _id ,
        string memory _author ,
        string memory _title
    ) public {
        books[_id] = book(_author,_title);
    }

    function addmybook( 
        uint _id ,
        string memory _author ,
        string memory _title
    ) public {
        mybooks [msg.sender][_id] = book(_author,_title);
    }
}
