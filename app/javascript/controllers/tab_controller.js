import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {
  static targets = ["tab", "selectedTab"]
  connect() {
    this.hide()
    this.tabTargets[0].style.display = "block"
  }

  reveal(event) {
    this.hide()
    let tabElementId = event.srcElement.id
    let targets = this.tabTargets
    let target_element = targets.find(element => element.id == tabElementId)
    target_element.style.display = "block"
    
  }
  hide() {
    console.log(this.tabTargets)
    this.tabTargets.forEach ((element, index) => {  
      if (element.style.display != "none") {
        element.style.display = "none"
      } 
    })
  }
} 
