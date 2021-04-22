function Valid() {
    var sym = ["~", "`", ";", "!", "#", "$", "@", "%", "^", "&", "*", "(", ")", "_", "+", ",", "|", ":", "]", "[", "{", "}", "/", "\"", "\\"];
    var FName = document.getElementById("FName").value;
    var LName = document.getElementById("LName").value;
    var email = document.getElementById("Email").value;
    var subject = document.getElementById("Subject").value;
    var massage = document.getElementById("Massage").value;

    if (FName.length == 0) {
        alert("Please enter you'r first name.");
        return false;
    }
    for (var i = 0; i < FName.length; i++) {
        if (!isNaN(FName.charAt(i))) {
            alert("You'r name can't contain numbers.");
            return false;
        }
    }
    for (var i = 0; i < sym.length; i++) {
        if (FName.indexOf(sym[i]) >= 0) {
            alert("You'r first name can't contain @,#,&,!.");
            return false;
        }
    }
    if (FName == LName) {
        alert("You'r first name can't be like you'r last name.");
        return false;
    }

    if (LName.length == 0) {
        alert("Please enter you'r last name.");
        return false;
    }
    for (var i = 0; i < LName.length; i++) {
        if (!isNaN(LName.charAt(i))) {
            alert("You'r last name can't contain numbers.");
            return false;
        }
    }
    for (var i = 0; i < sym.length; i++) {
        if (LName.indexOf(sym[i]) >= 0) {
            alert("You'r last name can't contain @,#,&,!.");
            return false;
        }
    }
    if (FName.length == 0) {
        alert("Please enter you'r first name.");
        return false;
    }

   


    if (LName == FName) {
        alert("You'r last name can't be like you'r first name.");
        return false;

    }
    if (email.length == 0) {
        alert("Please enter you'r email.");
        return false;
    }

 

    if (subject.length == 0) {
        alert("Please enter you'r subject.");
        return false;
    }
   
    if (subject == LName) {
        alert("You'r subject can't be like you'r last name.");
        return false;
    }
    if (subject == FName) {
        alert("You'r subject can't be like you'r first name.");
        return false;
    }


    if (massage.length == 0) {
        alert("Please enter you'r massage.");
        return false;
    }
    if (massage.length < 150) {
        alert("Your message should be over 150 characters.");
        return false;
    }
    return true;
}