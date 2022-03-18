pragma solidity >=0.7.3;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Chessmates is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private tokenID;

    constructor() ERC721("ChessMates", "CHESS"){}

    function mintNFT(address recipient, string memory _tokenURI) public returns(uint256) {
        tokenID.increment();
        uint256 currID = tokenID.current();
        _mint(recipient, currID);
        tokenURI(currID);

    }
}