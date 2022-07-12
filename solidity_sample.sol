pragma solidity 0.8.15;

contract test{
    
    struct my_data{
        string name;
        uint age;
    }
    // address  name    age
    //0x1..     Masoud  31
    //0x2..     Mahdi`  26     
    mapping (address => my_data) private user_data;

    //memory check that string length can be stored.
    function change_name(string memory esm , uint sen) public{
        user_data[msg.sender].name =esm;
        user_data[msg.sender].age =sen;
        //name= esm;
        //age= sen;
    }
    function getName() public view returns (string memory)  {
        return user_data[msg.sender].name;
    }
    function getAge() public view returns (uint)  {
        return user_data[msg.sender].age;
    }

}//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4   Masoud  31
