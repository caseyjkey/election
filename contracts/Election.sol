pragma solidity ^0.4.24;

contract Election {
    // Model a candidate
    struct Candidate {
      uint id;
      string name;
      uint voteCount;
    }
    // Store Candidates
    // Fetch Candidate
    mapping (uint => Candidate) public candidates;
    // Store Candidates voteCount
    uint public candidatesCount;
    // Constructor
    function Election() public {
    }
}
