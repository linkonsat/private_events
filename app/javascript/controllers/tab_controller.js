import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {
  static targets = ["tab", "selectedTab"]
  
  reveal(event) {
    this.hide()
    let tabElementId = event.srcElement.id
    let targets = this.tabTargets
    let target_element = targets.find(element => element.id == tabElementId)
    target_element.style.display = "flex"
    
  }
  hide() {
    this.tabTargets.forEach ((element, index) => {  
      if (element.style.display != "none") {
        element.style.display = "none"
      } 
    })
  }
} 
