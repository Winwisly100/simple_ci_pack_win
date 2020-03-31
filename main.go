package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	fmt.Print("Your name:")
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	fmt.Println(scanner.Text())
}
