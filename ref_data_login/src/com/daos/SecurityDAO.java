package com.daos;

import com.beans.Security;
import com.beans.User;

public interface SecurityDAO {
	int addSecurity(Security security);
	User findSecuritybyISIN(String ISIN);
	// TODO: Implement modifyUser
	// int modifySecurity(User user);
	int deleteSecurity(String Username);

}
