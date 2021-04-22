function Valid() {
    var sym = ["~", "`", ";", "!", "#", "$", "@", "%", "^", "&", "*", "(", ")", "_", "+", ",", "|", ":", "]", "[", "{", "}", "/", "\"", "\\","."];
    var olduser = document.getElementById("olduser").value;
    var newuser = document.getElementById("newuser").value;
    var usercheck = document.getElementById("connewuser").value;
    if (olduser.length == 0) {
        alert("Please enter a username.");
        return false;
    }
 
    if (newuser.length == 0) {
        alert("Please enter a new username.");
        return false;
    }
    if (usercheck.length == 0) {
        alert("Please enter a confirm new username.");
        return false;
    }
  
    for (var i = 0; i < sym.length; i++) {

        if (newuser.indexOf(sym[i]) >= 0) {
            alert("You'r new username can't contain @,#,&,!.");
            return false;
        }
    }

    if (usercheck != newuser) {
        alert("You'r confirmation is diffrent from You'r username.");
        return false;
    }


    return true;
}