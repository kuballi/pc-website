function Valid() {
    var oldemail = document.getElementById("oldemail").value;
    var newemail = document.getElementById("newuemail").value;
    var emailcheck = document.getElementById("connewemail").value;
    if (oldemail.length == 0) {
        alert("Please enter a email.");
        return false;
    }
    if (newemail.length == 0) {
        alert("Please enter a new email.");
        return false;
    }
    if (emailcheck.length == 0) {
        alert("Please enter a confirm new email.");
        return false;
    }



    if (emailcheck != newemail) {
        alert("You'r confirmation is diffrent from You'r email.");
        return false;
    }


    return true;
}