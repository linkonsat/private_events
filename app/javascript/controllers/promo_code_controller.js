import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="promo-code"
export default class extends Controller {
  static targets = ["promoCode"]

  generate_code() {
    let targetElement = document.getElementById('code');
    fetch(`${window.location.pathname}`)
    .then(function(response) {
      if(response.ok) {
        let code = response.headers.get("code")
        targetElement.value = code
      } else {
        this.promoCodeTarget.textContent = "Request unable to be processed"
      }
    })

  }
}
