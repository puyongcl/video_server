package dbops

import (
	_ "github.com/go-sql-driver/mysql"
	"log"
)

func AddVideoDeletionRecord(vid string) error {
	stmtIns, err := dbConn.Prepare("INSERT INTO video_del_rec (video_id) VALUES (?)")
	if err != nil {
		return err
	}

	defer stmtIns.Close()

	_, err = stmtIns.Exec(vid)
	if err != nil {
		log.Printf("AddVideoDeletionRecord error: %v", err)
		return err
	}

	return nil
}
