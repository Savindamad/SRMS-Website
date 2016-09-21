function validateLoginForm(){
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
    var n = password.length;
                
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
    if(n<8){
        alert("Not a valid password");
        return false;
    }
}

function validateSignupForm(){
    var email = document.getElementById("email").value;
    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
    
    var password = document.getElementById("password").value;
    var repassword = document.getElementById("repassword").value;
    
    var contactNo = document.getElementById("contact_no").value;
    var validNumber = "0123456789.-";
                
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
    else if(password.length<8){
        alert("password should be more than 8 letters");
        return false;
    }
    
    else if(password!==repassword){
        alert("Password does not match");
        return false;
    }
    
    else if(contactNo.length==10){      
        for(i = 0; i < contactNo.length; i++) {
            if(validNumber.indexOf(contactNo.charAt(i)) == -1) {
                return false;
            }
        }
    }
}
            
function validateEmail(){
    var x = document.getElementById("email").value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        document.getElementById('email').style.borderColor = "red";
    }
    else{
        document.getElementById('email').style.borderColor = "green";
    }
}

function validatePassword(){
    var password = document.getElementById("password").value;
    if(password.length<8){
        document.getElementById("password").style.borderColor = "red";
    }
    else{
        document.getElementById("password").style.borderColor = "green";
    }
}

function validateRePassword(){
    var password = document.getElementById("password").value;
    var repassword = document.getElementById("repassword").value;
    if(password!==repassword || password.length<8){
        document.getElementById("password").style.borderColor = "red";
        document.getElementById("repassword").style.borderColor = "red";
    }
    else{
        document.getElementById("password").style.borderColor = "green";
        document.getElementById("repassword").style.borderColor = "green";
    }
}

function validateDate(){
}

function validateContactNo(){
    var contactNo = document.getElementById("contact_no").value;
    var validNumber = "0123456789.-";

    if(contactNo.length==10){      
        for(i = 0; i < contactNo.length; i++) {
            if(validNumber.indexOf(contactNo.charAt(i)) == -1) {
                document.getElementById("contact_no").style.borderColor = "red";
                break;
            }
            document.getElementById("contact_no").style.borderColor = "green";
        }
    }
    else{
        document.getElementById("contact_no").style.borderColor = "red";
    }
        
}
