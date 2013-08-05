function large()
{
	var name=document.getElementById("user_name");
	var password=document.getElementById("user_password");
	var a=name.value;
	var b=password.value;	
	if(a=="")
	{
		alert("Please Enter Firstname");
	      name.focus();
		return false;
	}
	if(b=="")
	{
		alert("Please Enter Password");
		password.focus();
		return false;
	}
	return true;
}
