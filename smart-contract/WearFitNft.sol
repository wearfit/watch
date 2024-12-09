// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

contract WearFitNft is ERC721, Ownable, AccessControlEnumerable {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    string private _baseTokenURI = "https://wearfit.ai/nft/metadata/";
    uint256 private _nextTokenId;

    event Mint(address indexed to, uint256 indexed tokenId);

    constructor()
    ERC721("WearFitNFT", "WFN")
    {
        _setAdminRoles(msg.sender);
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function safeMint(address to) public onlyRole(MINTER_ROLE) {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
        emit Mint(to, tokenId);
    }

    //setMinterRole
    function setMinterRole(address minter) public onlyOwner {
        grantRole(MINTER_ROLE, minter);
    }

    function revokeMinterRole(address minter) public onlyOwner {
        revokeRole(MINTER_ROLE, minter);
    }

    function _setAdminRoles(address owner) private {
        _grantRole(DEFAULT_ADMIN_ROLE, owner);
        _grantRole(MINTER_ROLE, owner);
    }


    /**
    * @dev See {IERC165-supportsInterface}.
    */
    function supportsInterface(bytes4 interfaceId)
    public
    view
    virtual
    override(AccessControlEnumerable, ERC721)
    returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

}
