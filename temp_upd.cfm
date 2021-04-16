<!-- If URL.From is defined and equals DoEdit, then update the table -->

<CFIF IsDefined("URL.From")>
<CFIF #URL.From# IS "DoEdit">

<CFUPDATE DATASOURCE="koalaSQL" TABLENAME="web_admin_users">

</CFIF>
</CFIF>

<!-- The below code selects all data from the table -->

<CFQUERY NAME="GetData" DATASOURCE="koalaSQL">
    SELECT * 
    FROM web_admin_users
    
</CFQUERY>

<html>

<head>
<title>Update articles</title>
</head>

<body>

<!-- If DoUpdate has been run a short note is given -->

<CFIF IsDefined("DoUpdate.RecordCount")>
<p><b>Thanks for your update!</b>
</CFIF>

<p>Let's first display all data in a table
	
	
<table>
<tr>
<th>ID</th>
<th>ADMIN_USER</th>
<th>ADMIN_PASS</th>
<th>IS_SUPER</th>
<th>IS_CELERANT</th>
<th>LAST_FAILED_DTE</th>
<th>DLU</th>
<th></th>

</tr>

<!-- Here we check for the URL.From attribute -->

<CFIF IsDefined("URL.From")>

<!-- If URL.From just equals DoEdit, we simply just output the data, just as if it was undefined  -->

<CFIF #URL.From# IS "DoEdit">

<CFOUTPUT QUERY="GetData">
<tr>
<td>#ID#</td>
<td>#ADMIN_USER#</td>
<td>#ADMIN_PASS#</td>
<td>#IS_SUPER#</td>
<td>#IS_CELERANT#</td>
<td>#LAST_FAILED_DTE#</td>
<td>#DLU#</td>

<!-- This is where the Edit button and form is created -->

<td>
<form action="temp_upd.cfm?From=Edit&id=#ID#" method="post">
<input type="submit" value="Edit">
</form>
</td>

</tr>
</CFOUTPUT>

<CFELSE>

<CFLOOP QUERY="GetData">

<CFIF #URL.ID# IS #GetData.ID#>

<CFOUTPUT>

<form action="temp_upd.cfm?From=DoEdit&id=#ID#" method="post">

<tr>
<td><input type= "hidden" name="ID" size="10" value="#ID#"></td>
<td><input type="text" name="ADMIN_USER" size="20" value="#ADMIN_USER#"></td>
<td><input type="text" name="ADMIN_PASS" size="40" value="#ADMIN_PASS#"></td>
<td><input type="text" name="IS_SUPER" size="40" value="#IS_SUPER#"></td>
<td><input type="text" name="IS_CELERANT" size="40" value="#IS_CELERANT#"></td>
<td><input type="text" name="LAST_FAILED_DTE" size="40" value="#LAST_FAILED_DTE#"></td>
<td><input type="text" name="DLU" size="40" value="#DLU#"></td>
</tr>

</CFOUTPUT>

<CFELSE>

<!-- This is where all the data get's nicely output into the table -->

<CFOUTPUT>
<tr>
	
<td>#ID#</td>
<td>#ADMIN_USER#</td>
<td>#ADMIN_PASS#</td>
<td>#IS_SUPER#</td>
<td>#IS_CELERANT#</td>
<td>#LAST_FAILED_DTE#</td>
<td>#DLU#</td>
	
<td>
</td>
</tr>
</CFOUTPUT>

</CFIF>

</CFLOOP>

</CFIF>

<!-- If URL.From is undefined -->

<CFELSE>

<CFOUTPUT QUERY="GetData">
<tr>
<td>#ID#</td>
<td>#ADMIN_USER#</td>
<td>#ADMIN_PASS#</td>
<td>#IS_SUPER#</td>
<td>#IS_CELERANT#</td>
<td>#LAST_FAILED_DTE#</td>
<td>#DLU#</td>

<!-- This is where the Edit button and form is created -->

<td>
<form action="temp_upd.cfm?From=Edit&id=#ID#" method="post">
<input type="submit" value="Edit">
</form>
</td>

</tr>
</CFOUTPUT>

</CFIF>

<!-- If URL.From is defined and equals Edit, then display an update button and close the form -->

<CFIF IsDefined("URL.From")>
<CFIF #URL.From# IS "Edit">

<tr>
<td colspan="3">
<CFOUTPUT>
<!---<input type="text" name="ID" value="#ID#">--->
</CFOUTPUT>
<input type="submit" value="Update">
</form>
</td>
</tr>

</CFIF>
</CFIF>

</table>

</body>

</html>