package jdk8.test.basic02;

public class IntegerTest extends NumberTest{

	private final int value;
	
	public IntegerTest(int value) {
		this.value = value;
	}

	@Override
	public int intValue() {
		return value;
	}
	
	public static int bitCount(int i) {
		// HD, Figure 5-2
		i = i - ((i >>> 1) & 0x55555555);    
		i = (i & 0x33333333) + ((i >>> 2) & 0x33333333);
		i = (i + (i >>> 4)) & 0x0f0f0f0f;
		i = i + (i >>> 8);
		i = i + (i >>> 16);
		return i & 0x3f;
	}

}
