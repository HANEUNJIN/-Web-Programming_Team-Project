package membership;

public class LoginBean {
	//ȸ���������� �� �� ������ ��� String
	private String loginid;
	private String loginpassword;
	
	//����ڰ� �α��� �õ��� ���� �� �� ������ ��� String
	private String tryId;
	private String tryPwd;
	
	
	//�α��� �õ����� �� ȸ������ ������ ����ڰ� �α��� �õ��� ���� �� �Է��� ������ ���ϴ� �Լ�
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
