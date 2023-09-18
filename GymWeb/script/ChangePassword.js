     // Left-sidebar Active Tab Handler
    const activeTab = sessionStorage.getItem('activeTab');
    // console.log(activeTab);
    navListItems[activeTab].classList.add("active-item");

    for (y = 0; y < navListItems.length; y++) {
        if (navListItems[y] !== navListItems[activeTab]) {
            navListItems[y].classList.remove("active-item");
        }
    }

    // Password Checker
    const pwdHint1 = document.getElementById("pwdHint1");
    const pwdHint2 = document.getElementById("pwdHint2");
    const pwdHint3 = document.getElementById("pwdHint3");
    const txtNewPwd = document.getElementsByClassName("txtNewPassword")[0];

    // Event Listeners
    txtNewPwd.addEventListener("change", checkPwdFormat);

    // Functions
    function checkPwdFormat() {
        checkPwdLength();
        checkPwdLowUpCase();
        checkPwdNumberSymbol();
    }

    function checkPwdLength() {
        // Check Password Length
        if (txtNewPwd.value.length > 7 && txtNewPwd.value.length < 16) {
            pwdHint1.style.color = "black";
        }
    else {
        pwdHint1.style.color = "red";
        }
    }

    function checkPwdLowUpCase() {
         const regex = new RegExp('(?=.*[a-z])(?=.*[A-Z])');

        // Check Lower & Upper Case
        if (regex.test(txtNewPwd.value)) {
            pwdHint2.style.color = "black";
        }
        else {
            pwdHint2.style.color = "red";
        }
    }

    function checkPwdNumberSymbol() {
        const regex = new RegExp('(?=.*[^A-Za-z0-9])');

        // Check Number & Symbol
        if (regex.test(txtNewPwd.value)) {
            pwdHint3.style.color = "black";
        }
        else {
            pwdHint3.style.color = "red";
        }
    }