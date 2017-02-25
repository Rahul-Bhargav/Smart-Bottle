const Sequelize = require('Sequelize')

const dbName = process.env.DEV_MODE === 'test' ? 'test-sb-db' : 'moviedb'

const sequelize = new Sequelize('postgres://rahulsurabhi:rah1161!@localhost:5432/test-sb-db')

const databaseOprations = {
  insertUser: function (userName, address = '') {
    return sequelize.query('INSERT INTO USERS (NAME, ADDRESS) VALUES (:username, :address) RETURNING ID', {  replacements: { username: userName, address: address } })
  },
  insertBottle: function (bottleName, capacity) {
    return sequelize.query('INSERT INTO BOTTLE (NAME, CAPACITY) VALUES (:bottlename, :capacity) RETURNING ID', {  replacements: { bottlename: bottleName, capacity } })
  },
  addBottleToUser: function (bottleName, userid) {
    return sequelize.query('INSERT INTO USER_BOTTLE (USER_ID, BOTTLE_ID) VALUES (:userid, (SELECT ID FROM BOTTLE WHERE NAME=":bottleName"))', {  replacements: { userid, bottleName } })
  }
}

module.exports = databaseOprations
