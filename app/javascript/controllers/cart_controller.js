import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "myspan" ]
    static values = {
        url: String,
        product: Number,

    }

    connect() {
        this.products_ids = [];
        debugger
    }

    addToCart(event){
        let product_id = event.currentTarget.getAttribute("data-product-id");
        let product_name = event.currentTarget.getAttribute("data-product-name");
        let product_price = event.currentTarget.getAttribute("data-product-price");
        const element = document.createElement("div");
        const header = document.createElement("h4");
        header.innerText = product_name;
        const paragh = document.createElement("p");
        paragh.innerText = `Price ${product_price}$ `
        element.appendChild(header);
        element.appendChild(paragh);
        const divElement = document.getElementById('cart');
        element.classList.add("border")
        divElement.appendChild(element);

        this.products_ids.push(product_id);
        // sessionStorage.setItem("product_ids", this.products_ids);
        document.getElementById('products_ids').value = this.products_ids;
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

