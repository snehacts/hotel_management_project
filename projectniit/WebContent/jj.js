function validate()
{
	var FullName=document.getElementById("FullName");
    var Address=document.getElementById("Address");
    var ContactNo=document.getElementById("ContactNo");
    var Gender=document.getElementById("Gender");
    var DateOfBirth=document.getElementById("DateOfBirth");
    var Username=document.getElementById("UserName");
	var Password=document.getElementById("Password");
	var ConfirmPassword=document.getElementById("ConfirmPassword");
	var EmailAddress=document.getElementById("EmailAddress");
	if(FullName.value.trim() ==""|| Address.value.trim() ==""|| ContactNo.value.trim() ==""|| Gender.value.trim() ==""|| DateOfBirth.value.trim() ==""|| UserName.value.trim() ==""|| Password.value.trim() ==""|| ConfirmPassword.value.trim() ==""|| EmailAddress.value.trim() =="")
		{
		alert("no blank value allowed");
		return false;
		}else
		{
		return true;
		}
	
}
function validation()
{
	var Firstname=document.getElementById("First_name");
    var Lastname=document.getElementById("Last_name");
    var Phone=document.getElementById("Phone");
    var Email=document.getElementById("Email");
    var Arrivaldate=document.getElementById("Arrival_date");
    var Departuredate=document.getElementById("Departure_date");
	var NumberofAdults=document.getElementById("Number_of_Adults");
	var NumberofChildren=document.getElementById("Number_of_Children");
	var Checkin=document.getElementById("Check_in");
	var Checkout=document.getElementById("Check_out");
	var RoomType=document.getElementById("Room_Type");
	if(Firstname.value.trim() ==""|| Lastname.value.trim() ==""|| Phone.value.trim() ==""|| Email.value.trim() ==""|| Arrivaldate.value.trim() ==""|| Departuredate.value.trim() ==""|| NumberofAdults.value.trim() ==""|| NumberofChildren.value.trim() ==""|| Checkin.value.trim() =="" || Checkout.value.trim() ==""|| RoomType.value.trim() =="" )
		{
		alert("no blank value allowed");
		return false;
		}else
		{
		return true;
		}
	
}
function validations()
{
	var Username=document.getElementById("UserName");
	var Password=document.getElementById("Password");	

	if( Username.value.trim() ==""|| Password.value.trim() =="")
	{
	alert("no blank value allowed");
	return false;
	}else
	{
	return true;
	}

}
