import React, { useEffect, useState } from 'react';
import AxiosInstance from "./AxiosInstance";

const Customers = () => {
    const [customers, setCustomers] = useState([]);

    useEffect(() => {
        AxiosInstance.get('/customers/')
            .then(response => {
                setCustomers(response.data);
            })
            .catch(error => {
                console.error('There was an error fetching the customers!', error);
            });
    }, []);

    return (
        <div style={styles.container}>
            <h1>Customers</h1>
            <ul style={styles.list}>
                {customers.map(customer => (
                    <li key={customer.id} style={styles.listItem}>
                        {customer.name} - {customer.email}
                    </li>
                ))}
            </ul>
        </div>
    );
};

const styles = {
    container: {
        padding: '20px',
    },
    list: {
        listStyle: 'none',
        padding: '0',
    },
    listItem: {
        padding: '10px',
        borderBottom: '1px solid #ccc',
    },
};

export default Customers;