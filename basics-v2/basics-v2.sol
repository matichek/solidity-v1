// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/// @title Contact title
/// @author Matija
/// @dev Comment for dev
/* contract MyContract {
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
} */

// How to inherit stuff different contracts 
/* contract iNeedVars is MyContract {
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

contract MyUnits {
    //1 wei == 1;
    //1 gewi == 1e9;
    //1 ether == 1e18; 1000000000000000000 wei

    // uint256 constOfNFT = 0.5; 
    uint256 constOfNFT = 0.05 ether; // will be converted to wei
    uint256 levelUpRate = 1 hours; // 60 min - beware of hours
} */

/* contract myIfElse {
    uint256 public revealState = 0;
    bool public isNowRevealed = false;
    string public status = "Not yet";

    function addToRevealState() public {
        revealState++;
    }

    function isRevealed() public {

        if(revealState >= 10) {

            isNowRevealed = true;
            status = "Reveleed";

        } else {
            status = "nope still not";
        }

    }
} */

/* contract MyLoop {

    function myLoop() public pure {
        for(uint256 i = 0; i < 5; i++) {

            if(i == 3) {
                break;
            }

            if(i == 2) {
                continue;
            }


        }

            uint256 j = 0;

            while (j < 10) {

        // do any actions



            j++;

    }
    }

} */

/* contract MyMappings {

// minting NFTs

    mapping(uint256 => address) public nfts;

    uint256 counter = 0;


    function mintNFT(address _address) public {
        nfts[counter] = _address;
        counter++;
    }


} */

/* contract MyArray {
    uint256[] arr_1;
    uint256[] arr_2 = [3,2,4,4,2,5,2,6,2];
    uint256[5] arr_3;

    // push new element to last 
    // arr_2.push(9);

    // remove last item in array
    // arr_3.pop();

    function getValueOfIndex(uint256 _index) public view returns (uint256) {
        return arr_2[_index];
    }

    function addToArray(uint256 _value) public {
        arr_2.push(_value);
    }
} */

contract MyEnums {

    enum Rarity {
        original,
        rare,
        super_rare
    }

    Rarity public rarity;

    constructor() {
        rarity = Rarity.rare;
    }

    function makeSuperRare() public {
       rarity = Rarity.super_rare;
    }
}