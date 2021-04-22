Vaild()
{
    var cpu = document.getElementById("cpu").value;
    var gpu = document.getElementById("gpu").value;
    var mobo = document.getElementById("mobo").value;
    var ram = document.getElementById("ram").value;
    var cf = document.getElementById("cf").value;
    var ps = document.getElementById("ps").value;
    var ssd = document.getElementById("ssd").value;
    var bun = document.getElementById("bun").value;
    if (cpu== 0) {
        alert("Please select a CPU.");
        return false;
    } if (gpu== 0) {
        alert("Please select a GPU.");
        return false;
    } if (mobo== 0) {
        alert("Please select a motherboard.");
        return false;
    } if (ram== 0) {
        alert("Please select a RAM.");
        return false;
    } if (cf== 0) {
        alert("Please select a cooling fans.");
        return false;
    } if (ps== 0) {
        alert("Please select a power supply.");
        return false;
    } if (ssd== 0) {
        alert("Please select a SSD.");
        return false;
    } if (bun== 0) {
        alert("Please select a bundle.");
        return false;
    }

    return true;
}