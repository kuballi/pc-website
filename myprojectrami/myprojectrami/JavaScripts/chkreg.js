function Valid() {
    var sym = ["~", "`", ";", "!", "#", "$", "@", "%", "^", "&", "*", "(", ")", "_", "+", ",", "|", ":", "]", "[", "{", "}", "/", "\"", "\\","."];
    var FName = document.getElementById("FName").value;
    var LName = document.getElementById("LName").value;
    var Phonenum = document.getElementById("Phonenum").value;
    var username = document.getElementById("UserName").value;
    var email = document.getElementById("Email").value;
    var pass = document.getElementById("pass").value;
    var passcheck = document.getElementById("PassCheck").value;
    var gender = document.getElementById("Gender").value;
    var city = document.getElementById("City").value;

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

    if (LName == FName) {
        alert("You'r last name can't be like you'r first name.");
        return false;

    }

    if (Phonenum.length == 0) {
        alert("Please enter you'r phone number.");
        return false;
    }

    for (var i = 0; i < Phonenum.length; i++) {
        if (isNaN(Phonenum.charAt(i))) {
            alert("Phone number should contain numbers.");
            return false;
        }
    }

    if (Phonenum.indexOf('0') == 0) {
        alert("Please start without zero.");
        return false;
    }

    if (Phonenum.indexOf('9') == 0 || Phonenum.indexOf('8') == 0 || Phonenum.indexOf('4') == 0 || Phonenum.indexOf('3') == 0 || Phonenum.indexOf('2') == 0) {

        if (Phonenum.length < 8 || Phonenum.length > 8) {
            alert("Phone number should be 8 numbers.");
            return false;
        }
    }

    else if (Phonenum.indexOf('5') == 0 || Phonenum.indexOf('7') == 0) {

        if (Phonenum.length < 9 || Phonenum.length > 9) {
            alert("Phone number should be 9 numbers.");
            return false;
        }
    }

    else {
        alert("Invalid phone number.");
        return false;
    }

    if (username.length == 0) {
        alert("Please enter a username.");
        return false;
    }

    for (var i = 0; i < sym.length; i++) {

        if (username.indexOf(sym[i]) >= 0) {
            alert("You'r username can't contain @,#,&,!.");
            return false;
        }
    }

    if (username == FName) {
        alert("You'r username can't be like you'r first name.");
        return false;
    }

    if (username == LName) {

        alert("You'r username can't be like you'r last name.");
        return false;
    }

    if (email.length == 0) {
        alert("Please enter you'r email.");
        return false;
    }


    if (pass.length == 0) {
        alert("Please enter a password.");
        return false;
    }
    if (pass.length < 6) {
        alert("Password should be over 6 characters.");
        return false;
    }
    for (var i = 0; i < sym.length; i++) {

        if (pass.indexOf(sym[i]) >= 0) {
            alert("You'r password can't contain @,#,&,!.");
            return false;
        }
    }
    if (pass == username) {
        alert("You'r password can't be like you'r username.");
        return false;
    }
    if (pass == LName) {
        alert("You'r password can't be like you'r last name.");
        return false;
    }
    if (pass == FName) {
        alert("You'r password can't be like you'r first name.");
        return false;
    }
    if (passcheck.length == 0) {
        alert("Please enter a confirm password.");
        return false;
    }
    if (passcheck != pass) {
        alert("You'r confirmation is diffrent from You'r password.");
        return false;
    }

    if (gender == "0") {
        alert("Choose a gender.");
        return false;
    }

    if (city == "0") {
        alert("Choose a City.");
        return false;
    }

    return true;
}