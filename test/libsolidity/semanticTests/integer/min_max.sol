contract C {
	function basic() public pure {
		uint uint_min = type(uint).min;
		require(uint_min == 0);

		uint uint_max = type(uint).max;
		require(uint_max == 2**256 - 1);

		int int_min = type(int).min;
		require(int_min == -2**255);

		int int_max = type(int).max;
		require(int_max == 2**255 -1);
	}

	function uint_min() public pure {

		uint8 uint8_min = type(uint8).min;
		require(uint8_min == 0);

		uint16 uint16_min = type(uint16).min;
		require(uint16_min == 0);

		uint24 uint24_min = type(uint24).min;
		require(uint24_min == 0);

		uint32 uint32_min = type(uint32).min;
		require(uint32_min == 0);

		uint40 uint40_min = type(uint40).min;
		require(uint40_min == 0);

		uint48 uint48_min = type(uint48).min;
		require(uint48_min == 0);

		uint56 uint56_min = type(uint56).min;
		require(uint56_min == 0);

		uint64 uint64_min = type(uint64).min;
		require(uint64_min == 0);

		uint72 uint72_min = type(uint72).min;
		require(uint72_min == 0);

		uint80 uint80_min = type(uint80).min;
		require(uint80_min == 0);

		uint88 uint88_min = type(uint88).min;
		require(uint88_min == 0);

		uint96 uint96_min = type(uint96).min;
		require(uint96_min == 0);

		uint104 uint104_min = type(uint104).min;
		require(uint104_min == 0);

		uint112 uint112_min = type(uint112).min;
		require(uint112_min == 0);

		uint120 uint120_min = type(uint120).min;
		require(uint120_min == 0);

		uint128 uint128_min = type(uint128).min;
		require(uint128_min == 0);

		uint136 uint136_min = type(uint136).min;
		require(uint136_min == 0);

		uint144 uint144_min = type(uint144).min;
		require(uint144_min == 0);

		uint152 uint152_min = type(uint152).min;
		require(uint152_min == 0);

		uint160 uint160_min = type(uint160).min;
		require(uint160_min == 0);

		uint168 uint168_min = type(uint168).min;
		require(uint168_min == 0);

		uint176 uint176_min = type(uint176).min;
		require(uint176_min == 0);

		uint184 uint184_min = type(uint184).min;
		require(uint184_min == 0);

		uint192 uint192_min = type(uint192).min;
		require(uint192_min == 0);

		uint200 uint200_min = type(uint200).min;
		require(uint200_min == 0);

		uint208 uint208_min = type(uint208).min;
		require(uint208_min == 0);

		uint216 uint216_min = type(uint216).min;
		require(uint216_min == 0);

		uint224 uint224_min = type(uint224).min;
		require(uint224_min == 0);

		uint232 uint232_min = type(uint232).min;
		require(uint232_min == 0);

		uint240 uint240_min = type(uint240).min;
		require(uint240_min == 0);

		uint248 uint248_min = type(uint248).min;
		require(uint248_min == 0);

		uint256 uint256_min = type(uint256).min;
		require(uint256_min == 0);
	}

	function uint_max() public pure {

		uint8 uint8_max = type(uint8).max;
		require(uint8_max == 2**8-1);

		uint16 uint16_max = type(uint16).max;
		require(uint16_max == 2**16-1);

		uint24 uint24_max = type(uint24).max;
		require(uint24_max == 2**24-1);

		uint32 uint32_max = type(uint32).max;
		require(uint32_max == 2**32-1);

		uint40 uint40_max = type(uint40).max;
		require(uint40_max == 2**40-1);

		uint48 uint48_max = type(uint48).max;
		require(uint48_max == 2**48-1);

		uint56 uint56_max = type(uint56).max;
		require(uint56_max == 2**56-1);

		uint64 uint64_max = type(uint64).max;
		require(uint64_max == 2**64-1);

		uint72 uint72_max = type(uint72).max;
		require(uint72_max == 2**72-1);

		uint80 uint80_max = type(uint80).max;
		require(uint80_max == 2**80-1);

		uint88 uint88_max = type(uint88).max;
		require(uint88_max == 2**88-1);

		uint96 uint96_max = type(uint96).max;
		require(uint96_max == 2**96-1);

		uint104 uint104_max = type(uint104).max;
		require(uint104_max == 2**104-1);

		uint112 uint112_max = type(uint112).max;
		require(uint112_max == 2**112-1);

		uint120 uint120_max = type(uint120).max;
		require(uint120_max == 2**120-1);

		uint128 uint128_max = type(uint128).max;
		require(uint128_max == 2**128-1);

		uint136 uint136_max = type(uint136).max;
		require(uint136_max == 2**136-1);

		uint144 uint144_max = type(uint144).max;
		require(uint144_max == 2**144-1);

		uint152 uint152_max = type(uint152).max;
		require(uint152_max == 2**152-1);

		uint160 uint160_max = type(uint160).max;
		require(uint160_max == 2**160-1);

		uint168 uint168_max = type(uint168).max;
		require(uint168_max == 2**168-1);

		uint176 uint176_max = type(uint176).max;
		require(uint176_max == 2**176-1);

		uint184 uint184_max = type(uint184).max;
		require(uint184_max == 2**184-1);

		uint192 uint192_max = type(uint192).max;
		require(uint192_max == 2**192-1);

		uint200 uint200_max = type(uint200).max;
		require(uint200_max == 2**200-1);

		uint208 uint208_max = type(uint208).max;
		require(uint208_max == 2**208-1);

		uint216 uint216_max = type(uint216).max;
		require(uint216_max == 2**216-1);

		uint224 uint224_max = type(uint224).max;
		require(uint224_max == 2**224-1);

		uint232 uint232_max = type(uint232).max;
		require(uint232_max == 2**232-1);

		uint240 uint240_max = type(uint240).max;
		require(uint240_max == 2**240-1);

		uint248 uint248_max = type(uint248).max;
		require(uint248_max == 2**248-1);

		uint256 uint256_max = type(uint256).max;
		require(uint256_max == 2**256-1);
	}

	function int_min() public pure {

		int8 int8_min = type(int8).min;
		require(int8_min == -2**7);

		int16 int16_min = type(int16).min;
		require(int16_min == -2**15);

		int24 int24_min = type(int24).min;
		require(int24_min == -2**23);

		int32 int32_min = type(int32).min;
		require(int32_min == -2**31);

		int40 int40_min = type(int40).min;
		require(int40_min == -2**39);

		int48 int48_min = type(int48).min;
		require(int48_min == -2**47);

		int56 int56_min = type(int56).min;
		require(int56_min == -2**55);

		int64 int64_min = type(int64).min;
		require(int64_min == -2**63);

		int72 int72_min = type(int72).min;
		require(int72_min == -2**71);

		int80 int80_min = type(int80).min;
		require(int80_min == -2**79);

		int88 int88_min = type(int88).min;
		require(int88_min == -2**87);

		int96 int96_min = type(int96).min;
		require(int96_min == -2**95);

		int104 int104_min = type(int104).min;
		require(int104_min == -2**103);

		int112 int112_min = type(int112).min;
		require(int112_min == -2**111);

		int120 int120_min = type(int120).min;
		require(int120_min == -2**119);

		int128 int128_min = type(int128).min;
		require(int128_min == -2**127);

		int136 int136_min = type(int136).min;
		require(int136_min == -2**135);

		int144 int144_min = type(int144).min;
		require(int144_min == -2**143);

		int152 int152_min = type(int152).min;
		require(int152_min == -2**151);

		int160 int160_min = type(int160).min;
		require(int160_min == -2**159);

		int168 int168_min = type(int168).min;
		require(int168_min == -2**167);

		int176 int176_min = type(int176).min;
		require(int176_min == -2**175);

		int184 int184_min = type(int184).min;
		require(int184_min == -2**183);

		int192 int192_min = type(int192).min;
		require(int192_min == -2**191);

		int200 int200_min = type(int200).min;
		require(int200_min == -2**199);

		int208 int208_min = type(int208).min;
		require(int208_min == -2**207);

		int216 int216_min = type(int216).min;
		require(int216_min == -2**215);

		int224 int224_min = type(int224).min;
		require(int224_min == -2**223);

		int232 int232_min = type(int232).min;
		require(int232_min == -2**231);

		int240 int240_min = type(int240).min;
		require(int240_min == -2**239);

		int248 int248_min = type(int248).min;
		require(int248_min == -2**247);

		int256 int256_min = type(int256).min;
		require(int256_min == -2**255);
	}

	function int_max() public pure {

		int8 int8_max = type(int8).max;
		require(int8_max == 2**7-1);

		int16 int16_max = type(int16).max;
		require(int16_max == 2**15-1);

		int24 int24_max = type(int24).max;
		require(int24_max == 2**23-1);

		int32 int32_max = type(int32).max;
		require(int32_max == 2**31-1);

		int40 int40_max = type(int40).max;
		require(int40_max == 2**39-1);

		int48 int48_max = type(int48).max;
		require(int48_max == 2**47-1);

		int56 int56_max = type(int56).max;
		require(int56_max == 2**55-1);

		int64 int64_max = type(int64).max;
		require(int64_max == 2**63-1);

		int72 int72_max = type(int72).max;
		require(int72_max == 2**71-1);

		int80 int80_max = type(int80).max;
		require(int80_max == 2**79-1);

		int88 int88_max = type(int88).max;
		require(int88_max == 2**87-1);

		int96 int96_max = type(int96).max;
		require(int96_max == 2**95-1);

		int104 int104_max = type(int104).max;
		require(int104_max == 2**103-1);

		int112 int112_max = type(int112).max;
		require(int112_max == 2**111-1);

		int120 int120_max = type(int120).max;
		require(int120_max == 2**119-1);

		int128 int128_max = type(int128).max;
		require(int128_max == 2**127-1);

		int136 int136_max = type(int136).max;
		require(int136_max == 2**135-1);

		int144 int144_max = type(int144).max;
		require(int144_max == 2**143-1);

		int152 int152_max = type(int152).max;
		require(int152_max == 2**151-1);

		int160 int160_max = type(int160).max;
		require(int160_max == 2**159-1);

		int168 int168_max = type(int168).max;
		require(int168_max == 2**167-1);

		int176 int176_max = type(int176).max;
		require(int176_max == 2**175-1);

		int184 int184_max = type(int184).max;
		require(int184_max == 2**183-1);

		int192 int192_max = type(int192).max;
		require(int192_max == 2**191-1);

		int200 int200_max = type(int200).max;
		require(int200_max == 2**199-1);

		int208 int208_max = type(int208).max;
		require(int208_max == 2**207-1);

		int216 int216_max = type(int216).max;
		require(int216_max == 2**215-1);

		int224 int224_max = type(int224).max;
		require(int224_max == 2**223-1);

		int232 int232_max = type(int232).max;
		require(int232_max == 2**231-1);

		int240 int240_max = type(int240).max;
		require(int240_max == 2**239-1);

		int248 int248_max = type(int248).max;
		require(int248_max == 2**247-1);

		int256 int256_max = type(int256).max;
		require(int256_max == 2**255-1);

	}
}
// ----
// basic()
// uint_max()
// uint_min()
// int_max()
// int_min()
