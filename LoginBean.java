package membership;

public class LoginBean {
	//회원가입했을 때 그 정보를 담는 String
	private String loginid;
	private String loginpassword;
	
	//사용자가 로그인 시도를 했을 때 그 정보를 담는 String
	private String tryId;
	private String tryPwd;
	
	
	//로그인 시도했을 때 회원가입 정보와 사용자가 로그인 시도를 했을 때 입력한 정보를 비교하는 함수
	public boolean checkUser() {
		if(loginid==null||loginpassword==null) {
			return false;
		}else if(loginid.equals(tryId)&&loginpassword.equals(tryPwd)) {
			return true;
		}else
			return false;
	}
	
	
	public String getTryId() {
		return tryId;
	}


	public void setTryId(String tryId) {
		this.tryId = tryId;
	}


	public String getTryPwd() {
		return tryPwd;
	}


	public void setTryPwd(String tryPwd) {
		this.tryPwd = tryPwd;
	}


	public String getLoginid() {
		return loginid;
	}


	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}


	public String getLoginpassword() {
		return loginpassword;
	}


	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}
	
}
