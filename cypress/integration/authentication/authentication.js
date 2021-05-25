import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

const base_url = 'https://the-internet.herokuapp.com'

Given("user opens authentication form", () => {  
    cy.visit(base_url + '/login')
})

When("user enters {string} as {string}", (value,key) => { 
    cy.get("#"+key).type(value)
})

And("user clicks login button", () => {  
    cy.get('.fa').click()
})

Then("successful login message is displayed", () => {  
    cy.get('#flash').contains(" You logged into a secure area!")
})

Then("failure login message is displayed: {string}", (message) => {  
    cy.get('#flash').contains(message)
})
