import Dog, { playWith as play } from "./library.js";

let obj = new Dog(undefined, 3);
console.log(obj.weight, obj.location);
play(obj);
