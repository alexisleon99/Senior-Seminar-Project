import React from 'react';
import ReactDOM from "react-dom";
import Employee from './components/Employee';

document.addEventListener("DOMContentLoaded", () => {
    const employee = document.querySelector("#employee");
    ReactDOM.render(<Employee />, employee);
});