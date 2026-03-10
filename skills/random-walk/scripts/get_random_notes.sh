#!/bin/bash
# get_random_notes.sh — ZK Steward companion (link-proposer path C).
# Usage: ./get_random_notes.sh --mode <mode> [--count <count>]
# Optional env: NOTES_DIR (default 05_每日记录), INDEX_DIR (default 03_索引), EXTRA_DIR (default longlongago).

NOTES_DIR="${NOTES_DIR:-05_每日记录}"
INDEX_DIR="${INDEX_DIR:-03_索引}"
EXTRA_DIR="${EXTRA_DIR:-longlongago}"

MODE=""
COUNT=1

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --mode) MODE="$2"; shift ;;
        --count) COUNT="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

if [[ -z "$MODE" ]]; then
    echo "Error: --mode is required."
    exit 1
fi

case "$MODE" in
    tension)
        SEED=$(date +%s)
        find "$NOTES_DIR" "$EXTRA_DIR" -name "*.md" -type f 2>/dev/null | \
            awk -v seed=$SEED 'BEGIN{srand(seed)} {print rand() "\t" $0}' | \
            sort -n | cut -f2- | head -n "$COUNT"
        ;;
    forgotten)
        find "$NOTES_DIR" "$EXTRA_DIR" -type f -name "*.md" -mtime +90 2>/dev/null | while read -r file; do
            basename=$(basename "$file" .md)
            link_count=$(grep -rc "\[\[$basename\]\]" "$NOTES_DIR" "$INDEX_DIR" 2>/dev/null | awk -F: '{sum+=$2} END{print sum+0}')
            if [ "$link_count" -le 1 ]; then
                echo "$file"
            fi
        done | head -n 50 | sort -R | head -n "$COUNT"
        ;;
    recent)
        find "$NOTES_DIR" -type f -name "*.md" -mtime -7 2>/dev/null | sort -R | head -n "$COUNT"
        ;;
    *)
        echo "Error: Unknown mode '$MODE'. Supported modes: tension, forgotten, recent."
        exit 1
        ;;
esac
