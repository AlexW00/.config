function killport() {
    kill $(lsof -t -i:"$1")
}
