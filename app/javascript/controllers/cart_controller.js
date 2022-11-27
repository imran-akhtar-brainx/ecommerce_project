import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static values = {count: Number, products: Array, product: String}
    static targets = [ "myspan" ]
    connect() {
        debugger
        // this.element.textContent = "Hello World!"
    }

    addToCart(){
        debugger
        this.countValue+=1;
      document.getElementById('mys').innerText = this.countValue;
    }

}
