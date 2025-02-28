import React, { useEffect, useState } from 'react';
import AxiosInstance from "./AxiosInstance";

const CustomerSummary = () => {
    const [sales, setSales] = useState([]);

    useEffect(() => {
        AxiosInstance.get('/sales/')
            .then(response => {
                setSales(response.data);
            })
            .catch(error => {
                console.error('There was an error fetching the sales!', error);
            });
    }, []);

    return (
        <div style={styles.container}>
            <h1>Customer Summary</h1>
            <ul style={styles.list}>
                {sales.map(sale => (
                    <li key={sale.id} style={styles.listItem}>
                        {sale.product.name} - {sale.quantity} sold for {sale.total_price} THB
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

export default CustomerSummary;