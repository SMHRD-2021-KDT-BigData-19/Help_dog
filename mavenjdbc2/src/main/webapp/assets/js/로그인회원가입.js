function showLogin() {
    document.getElementById('main-page').style.display = 'none';
    document.getElementById('signup-page').style.display = 'none';
    document.getElementById('login-page').style.display = 'block';
}

function showSignup() {
    document.getElementById('main-page').style.display = 'none';
    document.getElementById('login-page').style.display = 'none';
    document.getElementById('signup-page').style.display = 'block';
}

function login() {
    // Add login logic here
    alert('Login button clicked');
}

function signup() {
    // Add signup logic here
    alert('Sign Up button clicked');
}