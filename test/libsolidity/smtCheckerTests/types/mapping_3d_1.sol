contract C
{
	mapping (uint => mapping (uint => mapping (uint => uint))) map;
	function f(uint x) public {
		x = 42;
		map[13][14][15] = 42;
		assert(x == map[13][14][15]);
	}
}
// ====
// SMTEngine: all
// ----
