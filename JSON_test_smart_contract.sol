// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
 
import "https://github.com/TheHerq/NFT_IPFS_1/blob/9da5f6d9540627b8c91fe2634d02cccb44aa5855/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/TheHerq/NFT_IPFS_1/blob/9da5f6d9540627b8c91fe2634d02cccb44aa5855/contracts/ownership/ownable.sol";
 
contract newNFT is NFTokenMetadata, Ownable {
 
  constructor() {
    nftName = "IPFS TEST2 NFT";
    nftSymbol = "ITN2";
  }
 
  function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner {
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }
 
}