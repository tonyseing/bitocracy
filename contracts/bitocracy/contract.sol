//Sample contract
contract Election
{
	uint choice;
	function Election(uint v) {
		choice = v;
	}
	function vote(uint v) {
		choice = v;
	}
	function getVote() constant returns (uint) {
		return choice;
	}
}
