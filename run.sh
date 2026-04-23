#!/bin/bash
if ! command -v java &> /dev/null; then
    echo "Error: Java is not installed."
    exit 1
fi
echo "Launching JMT..."
java -jar bin/jmt.jar &
