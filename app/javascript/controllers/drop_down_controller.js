import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drop-down"
export default class extends Controller {
  static targets = []
  reveal(event) {
    let targetElements = event.srcElement.childNodes
    let targetStyle = targetElements[1].style.display 
    if(targetStyle == "block" || targetStyle == "") {
      targetElements[1].style.display = "none"
    } else {
      targetElements[1].style.display = "block"
    }
  }
}
