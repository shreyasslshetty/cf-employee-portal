<cfquery name="GetAllUsers">

SELECT * FROM web_admin_users

</cfquery>

<cfloop query="GetAllUsers">
	
	<cfquery name="SetUserPass">
	
		UPDATE web_admin_users
  		SET	   ADMIN_PASS = 'Qwerty@123'
  		WHERE  ADMIN_USER = 'admin'
	
	
	</cfquery>



</cfloop>