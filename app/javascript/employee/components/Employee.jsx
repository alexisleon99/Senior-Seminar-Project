import React from 'react';
import axios from 'axios';

export default class Employee extends React.Component {

    state = { employee_pages: [] };

    componentDidMount = () => {
        var self = this;

        axios.defaults.headers.common['X-Requested-With'] = "XMLHttpRequest";
        axios.get('/')
            .then(function (response) {
                console.log(response.data);
                self.setState({ employee_pages: response.data })
            })
            .catch(function (error) {
                console.log(error);
            });
    };  

    render = () => {
        return(
            <div>
                <h3>
                    There are {this.state.employee_pages.length} pages in the payment.
                </h3>
            </div>
        );
    };
}   