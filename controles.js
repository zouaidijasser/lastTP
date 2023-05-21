function verif() {
    let lang = !document.getElementById('r1').checked && !document.getElementById('r2').checked && !document.getElementById('r3').checked && !document.getElementById('r4').checked; 
    let ex = document.getElementById('ex').selectedIndex < 1 ;
    let test = true ;
    if (lang) {
        alert('lang ?');
        test = false;
    }else if (ex) {
        alert('ex ?');
        test = false;
    }else {
        alert('valid');
    }

    return test;
}