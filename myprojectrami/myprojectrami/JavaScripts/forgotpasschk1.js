function Valid() {
    var email = document.getElementById("Emailname").value;
    if (email.length==0) {
        alert("Please enter a email.");
        return false;
    }
    return true;
}