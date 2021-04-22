function Valid() {
    var sym = ["~", "`", ";", "!", "#", "$", "@", "%", "^", "&", "*", "(", ")", "_", "+", ",", "|", ":", "]", "[", "{", "}", "/", "\"", "\\","."];
    var pass = document.getElementById("passname").value;
    var passcheck = document.getElementById("passnamec").value;

    if (pass.length == 0) {
        alert("Please enter a password.");
        return false;
    }
    if (passcheck.length == 0) {
        alert("Please enter a confirm password.");
        return false;
    }
    if (pass.length < 8) {
        alert("Password should be over 8 characters.");
        return false;
    }
    for (var i = 0; i < sym.length; i++) {

        if (pass.indexOf(sym[i]) >= 0) {
            alert("You'r password can't contain @,#,&,!.");
            return false;
        }
    }

    if (passcheck != pass) {
        alert("You'r confirmation is diffrent from You'r password.");
        return false;
    }


    return true;
}