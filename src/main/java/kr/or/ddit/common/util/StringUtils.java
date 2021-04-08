package kr.or.ddit.common.util;

public class StringUtils {
	
	/** target이 compares와 동일한 값이 있을 경우 true 반환 
	 * @param target   : 대상값
	 * @param compares : 비교값
	 * @return
	 *  - 예외조건 : target 값이 null일 경우 false 반환
	 */
	public static boolean equalsOr(String target, String... compares) {
		
		if(target==null || compares==null) {
			return false; 
		}
		
		for (String s : compares) {
			if(target.equals(s)) {
				return true; 
			}
		}
		return false;
	}
	
	public static boolean equalsOr(Object target, Object... compares) {
		
		if(target==null || compares==null) {
			return false; 
		}
		
		for (Object s : compares) {
			if(target.equals(s)) {
				return true; 
			}
		}
		return false;
	}
	
	
}
