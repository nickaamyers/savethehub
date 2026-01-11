#!/bin/bash

# Create all index pages
cat > content/en/financials/_index.md << 'EOF'
---
title: "Financials"
linkTitle: "Financials"
weight: 2
menu:
  main:
    weight: 20
---

The Arkansas Innovation Hub is built on earned income sustainability. Core operations are funded by memberships, educational programming, fabrication services, and facility rentals—not grant dependency.
EOF

cat > content/en/programming/_index.md << 'EOF'
---
title: "Programming"
linkTitle: "Programming"
weight: 3
menu:
  main:
    weight: 30
---

Hands-on learning experiences in making, agriculture, and arts for all ages and skill levels.
EOF

cat > content/en/operations/_index.md << 'EOF'
---
title: "Operations"
linkTitle: "Operations"
weight: 4
menu:
  main:
    weight: 40
---

Information about staffing, marketing, and operational management of the Hub.
EOF

cat > content/en/get-involved/_index.md << 'EOF'
---
title: "Get Involved"
linkTitle: "Get Involved"
weight: 5
menu:
  main:
    weight: 50
---

Join us in restoring Arkansas's premier community innovation center. Membership, volunteering, partnerships, and support opportunities.
EOF

cat > content/en/blog/_index.md << 'EOF'
---
title: "News & Updates"
linkTitle: "News"
weight: 6
menu:
  main:
    weight: 60
---

Latest news, updates, and announcements from the Arkansas Innovation Hub.
EOF

echo "All index pages created"

