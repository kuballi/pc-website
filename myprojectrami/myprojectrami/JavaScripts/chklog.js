function Valid() {
    var pass = document.getElementById("Pass").value;
    var username = document.getElementById("UserName").value;

    if (username.length == 0) {
        alert("Please enter a username.");
        return false;
    }
    if (pass.length == 0) {
        alert("Please enter a Password");
        return false;
    }
    return true;
}