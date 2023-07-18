package com.sunbeaminfo.tester;

import static com.sunbeaminfo.utils.HibernateUtils.getFactory;

import java.time.LocalDate;
import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.sunbeaminfo.dao.UserDaoImpl;
import com.sunbeaminfo.pojos.User;
import com.sunbeaminfo.pojos.UserRole;

public class UserRegistration {

	public static void main(String[] args) {
		try (SessionFactory sf = getFactory(); // calling a static method --> cls loading --> static init block --> SF
												// creation
				Scanner sc = new Scanner(System.in);

		) {
			// user dao instance
			UserDaoImpl userDao = new UserDaoImpl();
			System.out.println(
					"Enter user details :  firstName,  lastName,  email,  password,  role,  regDate,regAmount ");
			//create user object
			User user=new User(sc.next(), sc.next(), sc.next(), sc.next(),UserRole.valueOf(sc.next().toUpperCase()) , LocalDate.parse(sc.next()),sc.nextDouble());
			//invoke dao's method
			System.out.println(userDao.registerNewUser(user));
			

		} // JVM : sf.close() => DB CP cleaned up !
		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
