package main

import (
	"flag"
	"log"
)

var (
	Token string
)

func init() {
	flag.StringVar(&Token, "t", "", "Bot Token")
	flag.Parse()
}

func main() {
	log.Printf("Ingenious Discord Gobot")
}
