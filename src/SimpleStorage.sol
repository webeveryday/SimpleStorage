// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
  uint256 myFavoriteNumber;

  struct Person {
    uint256 favoriteNumber;
    string name;
  }

  Person[] public listOfPeople;

  function store(uint256 _favoriteNumber) public {
      myFavoriteNumber = _favoriteNumber;
  }

  function retrieve() public view returns(uint256) {
      return myFavoriteNumber;
  }

  function addPerson(string memory _name, uint256 _favoriteNumber) public {
      Person memory newPerson = Person(_favoriteNumber, _name);
      listOfPeople.push(newPerson);
  }
}