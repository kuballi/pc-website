function Valid() {
    var cardnum = document.getElementById("cardnumber").value;
    var month = document.getElementById("month").value;
    var year = document.getElementById("year").value;
    var address1 = document.getElementById("address1").value;
    var address2 = document.getElementById("address2").value;
    var item = document.getElementById("item").value;
    var zipcode = document.getElementById("zipcode").value;
    var cvv = document.getElementById("cvv").value;
    if (cardnum.length == 0) {
        alert("Please enter you'r card number.");
        return false;
    }
    for (var i = 0; i < cardnum.length; i++) {
        if (isNaN(cardnum.charAt(i))) {
            alert("Card number should contain numbers.");
            return false;
        }
    }
    if (cardnum.length > 16 || cardnum.length < 16) {
        alert("Card number is incorecct.");
        return false;
    }
    if (month == 0) {
        alert("Please enter a month.");
        return false;
    }
    if (year == 0) {
        alert("Please enter a year.");
        return false;
    }
    if (address1.length == 0) {
        alert("Please enter you'r address.");
        return false;
    }
    if (address2.length == 0) {
        alert("Please enter you'r confirm address.");
        return false;
    }
    if (address2 != address1) {
        alert("You'r confirmation is diffrent from You'r address.");
        return false;
    }
    if (zipcode.length == 0) {
        alert("Please enter you'r zip code.");
        return false;
    }
  
    for (var i = 0; i < zipcode.length; i++) {
        if (isNaN(zipcode.charAt(i))) {
            alert("Zip code should contain numbers.");
            return false;
        }
    }
    if (zipcode.length < 7) {
        alert("Zip code is incorecct.");
        return false;
    }
    if (cvv.length == 0) {
        alert("Please enter you'r CVV.");
        return false;
    }
  
    for (var i = 0; i < cvv.length; i++) {
        if (isNaN(cvv.charAt(i))) {
            alert("CVV should contain numbers.");
            return false;
        }
    }
    if (cvv.length < 3) {
        alert("CVV is incorecct.");
        return false;
    }
 

    if (item == 0) {
        alert("Please enter a item.");
        return false;
    }

    return true;
}
