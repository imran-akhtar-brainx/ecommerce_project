import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "myspan" ]
    static values = {
        url: String,
        product: Number
    }

    connect() {
        this.products_ids = [];
    }

    addToCart(event){
        let product_id = event.currentTarget.getAttribute("data-product");
        this.products_ids.push(product_id);
        // sessionStorage.setItem("product_ids", this.products_ids);
        document.getElementById('products_ids').value = this.products_ids;
        return this.products_ids
    }

    checkout(){
        let that = this
        $.ajax({
            type: "GET",
            url: that.urlValue,
            data: {product_ids: that.products_ids},
            success() {

            }
        })
        }

}

