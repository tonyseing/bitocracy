//Sample contract
contract Election
{
	uint choice;
	
	mapping (address => uint) candidateTallies;
	mapping (uint => address) candidateIndex;
	uint candidateCount;
	
	struct voter {
		uint id;
		address voterAddress;
	}
	
	struct candidate {
		uint id;
		string name;
		string description;
		address[] ballots;
		uint tally;
	}
	
	event Vote(uint choice_id);
	
	function Election(uint v) {
		choice = v;
	}
	
	function registerVoter(address voter_address) {
		
	}
	
	function registerCandidate() {
	 // @todo
	}
	
	function getVoteTallies()
	{
		for(uint i = 0; i < candidateCount; i++)
		{
			//doSomeStuff(accountBalances[accountIndex[i]]);
		}
	}
	
	// checks if election is active or not
	function isActive() returns (bool) {
		return true;
	}	
	
	function vote(uint v) {
		if (isActive()) {
			choice = v;
		}
	}
	
	function getVote() constant returns (uint) {
		return choice;
	}
}
