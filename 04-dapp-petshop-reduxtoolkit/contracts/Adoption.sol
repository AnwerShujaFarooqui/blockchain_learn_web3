pragma solidity ^0.7.0;

contract Adoption{

    address[16] public adopters;
    //Adopting a pet
    function adopt(uint petId) public returns(uint){
        require(petId > 0 && petId <=15);
        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopter() public view returns(address[16] memory){
        return adopters;
    }
}