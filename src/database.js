import mysqlConnection from 'mysql2/promise';
const properties = {
    host: 'localhost',
    user:'root',
    password: '',
    database: 'restapi',
};
export const pool = mysqlConnection.createPool(properties);