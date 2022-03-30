// SPDX-License-Identifier: UNLICNESED
pragma solidity >=0.7.3 < 0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Chessmates is ERC721 {
    using Counters for Counters.Counter;
    using Strings for uint256;

    Counters.Counter private tokenID;

    // metadata
    string public uriPrefix = "";
    string public uriSuffix = ".json";
    string public hiddenMetaDataUri;

    // cost/supply/maxMint
    uint256 public cost = 0.08 ether;
    uint256 public supply = 10000;
    uint256 public maxMint = 5;

    // NFT reveal/hidden
    bool public reveal = false;
    bool public hide = true;

    constructor() ERC721("ChessMates", "CHESS"){
        setHiddenMetadataUri("ipfs://__CID__/hidden.json");
    }

    function mintNFT(address recipient, string memory _tokenURI) public returns(uint256) {
        tokenID.increment();
        uint256 currID = tokenID.current();
        _mint(recipient, currID);
        tokenURI(currID);

    }
}