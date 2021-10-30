function adminValidation(id,pass){
    var adminId=id;
    var adminPw=pass;
    if((adminId=="")&&(adminPw=="")){
        alert("Please enter your id and password");
    }else if(adminId==""){
        alert("Enter your id");
    }else if(adminPw==""){
        alert("Enter your password");
    }else if((adminId!="admin") && (adminPw!="admin@123")){
       alert("Incorrect username/Password");
    }
}
function newUserValidation(fn,ln,newPw,pwConfirm,newEmail,newMn,newAdd){
    var firstName=fn;
    var lastName=ln;
    var newPw=newPw;
    var newEmail=newEmail;
    var pwConfirm=pwConfirm;
    var newMn=newMn;
    var address=newAdd;
    var passwordExp=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,12}$/;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if((firstName=="")||(lastName=="")||(newPw=="")||(pwConfirm=="")||(newEmail=="")||(newMn=="")||(address=="")){
        alert("Kindly enter the required fields");
    }
    else if(newPw!=pwConfirm){
        alert("Password do not match. So,Kindly check your password");
    }
    else if((newPw.length<6)||(newPw.length>12)){
        alert("Password length must be greater than 6 character and less than 12 characters")
    }
    else if(!passwordExp.test(newPw)){
        alert("Password should contain atleast one special character,number,uppercase and lowercase");
    }
    else if(!(newMn.length==10)){
        alert("Kindly check your mobile number");
    }else if(!(newEmail.match(mailformat))){
        alert("You have entered an invalid email address!");
    }
}
    


function userValidation(id,pass){
    var userId=id;
    var userPw=pass;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if((userId=="")&&(userPw=="")){
        alert("Please enter your id and password");
    }else if(userId==""){
        //document.getElementById("message").innerHTML="<font color='red'>Enter id</font>";
        alert("Enter your id");
    }else if(userPw==""){
        //document.getElementById("message").innerHTML="<font color='red'>Enter your password</font>";
        alert("Enter your password");
    }else if(!(userId.match(mailformat))){
        alert("You have entered an invalid email address!");
    }else if(userPw.length<=5){
        //document.getElementById("message").innerHTML="<font color='red'>Password length must be greater than 6 characters</font>";
        alert("Password length must be greater than 6 characters");
    }else{
        //document.getElementById("message").innerHTML="<font color='red'>Incorrect username/Password</font>";
        //alert("Incorrect username/Password");
        //open("UserPage.html");
        //close("UserPage.html");
    }

}
function sent() {
    alert("We have sent you an email with instructions on how to reset your password.");
}