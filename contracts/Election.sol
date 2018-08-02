pragma solidity ^0.4.24;

contract Election {
    // Model a candidate
    struct Candidate {
      uint id;
      string name;
      uint voteCount;
    }
    // Store voters
    mapping (address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping (uint => Candidate) public candidates;
    // Store Candidates voteCount
    uint public candidatesCount;
    // Constructor
    function Election() public {
      addCandidate("Waka Flocka Flame");
      addCandidate("Lil B, The BasedGod");
    }

    function addCandidate(string _name) private {
      candidatesCount++;
      candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
      // require that they haven't voted yet
      require(!voters[msg.sender]);

      // require a valid candidate
      require(_candidateId > 0 && _candidateId <= candidatesCount);

      // record that voter has voted
      voters[msg.sender] = true;
      // update candidate vote voteCount
      candidates[_candidateId].voteCount++;
    }
}
