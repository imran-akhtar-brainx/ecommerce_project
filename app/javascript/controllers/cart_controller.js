import {Controller} from "@hotwired/stimulus"

export default class extends Controller {

    connect() {
        this.products_ids = [];
        this.products = [];
        this.productDict = {};
    }

    addToCart(event) {

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
        this.addToSession(product_id);
        document.cookie = "prod="+this.productDict.toString();

        this.addToDictionary(product_id);
        this.products_ids.push(product_id);
        document.getElementById('products_ids').value = this.products_ids;

    }

    addToDictionary(product_id){

    }
    addToSession(product_id){
        if (product_id in this.productDict){
            this.productDict[product_id] += 1;
        }
        else {
            this.productDict[product_id] = 1;
        }
        let product_keys = {'products_keys': this.productDict}
        let cookie = [name, '=', JSON.stringify(product_keys), '; domain=.', window.location.host.toString(), '; path=/;'].join('');
        document.cookie = cookie;
        document.getElementById('product_dict').value = this.productDict;
        this.read_cookie("name")
    }

    read_cookie(name) {
        let result = document.cookie.match(new RegExp(name + '=([^;]+)'));
        result && (result = JSON.parse(result[1]));
        console.log(result)
    }

}

