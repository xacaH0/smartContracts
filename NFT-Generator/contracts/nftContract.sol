//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "erc721a/contracts/ERC721A.sol";

contract Greeter is ERC721A{
    string private greeting;

   constructor() ERC721A("ExtremeOrange", "ORANGE") {}

  function mint(uint256 quantity) external payable {
    // _safeMint's second argument now takes in a quantity, not a tokenId.
    _safeMint(msg.sender, quantity);
  }
}

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
