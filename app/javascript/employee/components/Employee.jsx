import React from 'react';
import axios from 'axios';

export default class Employee extends React.Component {

    state = { employees: [] };

    componentDidMount = () => {
        var self = this;

        axios.defaults.headers.common['X-Requested-With'] = "XMLHttpRequest";
        axios.get('/')
            .then(function (response) {
                console.log(response.data);
                self.setState({ employees: response.data })
            })
            .catch(function (error) {
                console.log(error);
            });
    };  

    render = () => {
        return(
            <div>
                <h3>
                    There are {this.state.employees.length} employees waiting to be approved.
                </h3>
            </div>
        );
    };
}   