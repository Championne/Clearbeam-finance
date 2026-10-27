#!/usr/bin/env bash
# ARCHIVED: Clearbeam Finance was chosen on 21 Oct 2026; kept only for reference.
# Swap the working brand name across the site. Run from /workspace/website.
# Usage: brand/swap-brand.sh "Van Straalen Advisory"   (or "Strala Advisory")
# Afterwards: update the "Behind the name" note in index.html (marked <!-- BRAND -->),
# and, for Van Straalen Advisory, set the header mark to the GJ monogram:
#   cp brand/mark-monogram.svg assets/mark.svg && cp brand/mark-monogram.svg assets/favicon.svg
set -euo pipefail
NEW="${1:?usage: swap-brand.sh \"New Name\"}"
OLD="Clearbeam Finance"
sed -i "s/${OLD}/${NEW}/g" index.html
echo "Replaced '${OLD}' with '${NEW}' in index.html. Check the <!-- BRAND --> comments by hand."
