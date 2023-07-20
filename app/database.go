package app

import (
	"database/sql"
	"time"
	"vick1208/restful-api/helper"
)

func NewDatabase() *sql.DB {
	db, err := sql.Open("mysql", "root@tcp(localhost:3306)/golang_rest_api")
	helper.PanicIE(err)
	db.SetMaxIdleConns(5)
	db.SetMaxOpenConns(20)
	db.SetConnMaxLifetime(60 * time.Minute)
	db.SetConnMaxIdleTime(10 * time.Minute)

	return db
}
