import React from "react";
import ReactDOM from "react-dom";
import Payment from './components/Payment';

document.addEventListener("DOMContentLoaded", () => {
    const payment = document.querySelector("#payment");
    ReactDOM.render(<Payment />, payment);
});