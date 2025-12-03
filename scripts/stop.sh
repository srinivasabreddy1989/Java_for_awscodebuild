#!/bin/bash
echo "Stopping existing app (if any)..."
pkill -f "java -jar" || true
sleep 2
