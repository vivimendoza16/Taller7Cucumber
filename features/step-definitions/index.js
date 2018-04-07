var {defineSupportCode} = require('cucumber');
var {expect} = require('chai');

defineSupportCode(({Given, When, Then}) => {
  Given('I go to Open Innovation home screen', () => {
    browser.url('/');

  });
// Si el usuario ya esta registrado comente las lineas 13 y 14 y siga las intrucciones 
//de la linea 23
  When('I open the Sign in screen', () => {
    browser.waitForVisible('.login-link-text', 20000);
    browser.element('.login-link-text').click();
    browser.waitForVisible('.additional-link', 20000);
    browser.element('.additional-link').click();

  });

  When(/^I fill the required fields of (.*) the (.*) and (.*) to create an account$/, (username, email, password) => {

    var createAccount = browser.element('.accounts-dialog');

    // Si el usuario ya esta registrado descomente la linea 25 y comente las lineas 27 y de la 31 a la 33

    // var userInput = createAccount.element('input[id="login-username-or-email"]');

    var userInput = createAccount.element('input[id="login-username"]');
    userInput.click();
    userInput.keys(username);

    var emailInput = createAccount.element('input[id="login-email"]');
    emailInput.click();
    emailInput.keys(email);

    var passwordInput = createAccount.element('input[id="login-password"]');
    passwordInput.click();
    passwordInput.keys(password);

  });

  When('I try to create the account', () => {
    var createAccount = browser.element('.accounts-dialog');
    createAccount.element('.login-button.login-button-form-submit').click();

  });

  When('I create an oportunity', () => {
    var createOp= browser.element('a=Crear oportunidad');
    createOp.click();

  });

  When(/^I insert the required (.*) and (.*) and (.*) and (.*) and (.*)$/, (name,slogan,description,url,tag) => {

    var createOp = browser.element('.form');
    browser.waitForVisible('.form-control', 20000);
    var nameInput = createOp.element('input[id="name"]');
    nameInput.click();
    nameInput.keys(name);

    var sloganInput = createOp.element('input[id="slogan"]');
    sloganInput.click();
    sloganInput.keys(slogan);

    var descInput = createOp.element('input[id="descript"]');
    descInput.click();
    descInput.keys(description);

    var urlInput = createOp.element('input[id="val"]');
    urlInput.click();
    urlInput.keys(url);

    browser.waitForVisible('.form-control', 20000);
    var tagInput = createOp.element('select[id="exampleSelect1"]').click();
        
    if (tag==1){
      tagInput.keys('Medicina');

    }
    else if (tag==2){
      tagInput.keys('Ingeniería');

    }
    else if (tag==3){
      tagInput.keys('Software');
 
    }
    else if (tag==4){
      tagInput.keys('Biología');

    }
    else {
      tagInput.keys('Finanzas');

    }


  });

  When('I submit the oportunity', () => {
    browser.waitForVisible('.form', 20000);
    var submitOp= browser.element('.form');
    submitOp.element('button=Submit').click();

  });

  Then('I expect to be see the oportunity', () => {
    browser.waitForVisible('.login-link-text', 30000);
    browser.element('.login-link-text').click();

    browser.waitForVisible('div=Sign out', 30000);
    browser.element('div=Sign out').click();
    browser.waitForVisible('.login-link-text', 30000);
  });
});