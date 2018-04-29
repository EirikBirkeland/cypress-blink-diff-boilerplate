describe('index', () => {
  it('index', () => {
    cy.visit('http://localhost:1234');
    cy.screenshot();
  })
})
