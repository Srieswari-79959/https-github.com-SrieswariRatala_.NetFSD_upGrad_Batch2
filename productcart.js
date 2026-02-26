
import { calculateTotal } from './cart.js';

const products = [
    { name: "Shirt", price: 500, quantity: 2 },
    { name: "Jeans", price: 1000, quantity: 1 },
    { name: "Shoes", price: 1500, quantity: 1 }
];

const total = calculateTotal(products);

products.map(item => {
    console.log(`${item.name} - ${item.price} x ${item.quantity}`);
});

console.log( `Total Cart Value: ${total} `);




