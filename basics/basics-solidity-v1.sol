// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/// @title Contact title
/// @author Matija
/// @dev Comment for dev
contract MyContract {
    string public name = "Matija";

    // not public but can be used by smart contract and those who inherit it
    uint256 internal time = block.timestamp;


    // types - unsigned integer - uint
    bool public myBool = false;
    uint256 public myUint = 423234;
    uint32 public myUnit32 = 3423234;
    uint16 public myUnit16 = 2342;
    uint8 public myUint8 = 255; // 0 up to 255 - 8 bytes 2**8 -1 = 255

    // never go outside MyContract
    int256 private myInt = 94239234;
    int256 myNewVar = int256(myInt); 

    int8 internal myInt23 = -23;

    // special value - hashed
    address public myAddress = address(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);


    address payable MyContractAddress = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    address MyContractAddress2 = address(this);

    uint256 balanceOfMyContract = MyContractAddress.balance;

    // MyContractAddress.transfer


    /// @notice THis function changes the name var
    function updateName(string memory _newName) public {
        name = _newName;
    }

    function myFunc() public {

        uint256 localNumber2 = 20;
        bool localPaused = true;

    }
}

// How to inherit stuff different contracts 
contract iNeedVars is MyContract {
    uint256 public time2 = time;
}

contract MyOperators {
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
    uint8 newValue;
    bool myBool = true;

    ///@notice arithemtic operators +,-,*,/,%,++,--
    function example_1() public {
    
        newValue = a + b + c;

        newValue = c % b; // "1" - remaining

        a++; // incrementing or -- decresing by one - changes assigment of "a"

        b *= c // same as b = b * c


        
    }

    function example_2() public view {
    
        bool result = false;

        if(a < b) {
            result = true;
        }

        // only 2 ==, not === like JS
        if(a == b) {

            result = true;
        }

        // Not equal to b
        if(a != b) {
            result = true;
        }


    function example_3() public {
    
        bool result = false;

        if(a < b && b > c) {
        
        result = true;

        }

        if(result == myBool) {
            result = false
        }

        if(!myBool) {
            result = true;
        }

        // reasign as false
        result = !result;
        
    }

    function example_4() public view {
    
        uint8 result = a < b ? 100 : 50; // turnary operator - same as JS

    }
}