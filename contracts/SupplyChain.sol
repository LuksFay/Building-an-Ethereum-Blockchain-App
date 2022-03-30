// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 < 0.8.7;

contract supplyChain {
    uint32 public product_id = 0; // Product ID
    uint32 public participant_id = 0; // Participant ID
    uint32 public owner_id = 0; // Ownership ID

    struct product{
        string modelNumber:
        string partNumer;
        string serialNumber;
        address productOwner;
        uint32 cost;
        uint32 mfgTimeStamp;
    }
    mapping(uint32 => product) public products;

    struct participant {
        string userName;
        string password;
        string participantType;
        address participantAddress;
    }
    mapping(uint32 => participant) public participants

    struct ownership{
        uint32 productId;
        uint32 ownerId;
        uint32 trxTimeStamp;
        address productOwner;
    }
    mapping(uint32 => ownership) public ownership; // ownerships bu ownership ID (owner_id)
    mapping(uint32 =>[]) public productTrack; // ownership by product ID (product_id / movenent track for a product

    event TransferOwnership(uint32 productId);

    ...
}