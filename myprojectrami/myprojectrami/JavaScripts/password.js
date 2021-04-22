function Valid() {
    var sym = ["~", "`", ";", "!", "#", "$", "@", "%", "^", "&", "*", "(", ")", "_", "+", ",", "|", ":", "]", "[", "{", "}", "/", "\"", "\\","."];
    var oldpass = document.getElementById("oldpass").value;
    var newpass = document.getElementById("newpass").value;
    var passcheck = document.getElementById("connewpass").value;
    if (oldpass.length == 0) {
        alert("Please enter a password.");
        return false;
    }
    if (newpass.length == 0) {
        alert("Please enter a new password.");
        return false;
    }
    if (passcheck.length == 0) {
        alert("Please enter a confirm new password.");
        return false;
    }
    for (var i = 0; i < sym.length; i++) {

        if (newpass.indexOf(sym[i]) >= 0) {
            alert("You'r new password can't contain @,#,&,!.");
            return false;
        }
    }
    if (newpass.length < 6) {
        alert("Password should be over 6 characters.");
        return false;
    }
 

    if (passcheck != newpass) {
        alert("You'r confirmation is diffrent from You'r password.");
        return false;
    }


    return true;
}