---
layout: default
title: Privacy Policy Versions
description: All versions of the Privacy Policy for Streaks (For YNAB)
permalink: /privacy/versions
---

# Privacy Policy Versions

This page contains all versions of the Privacy Policy for Streaks (For YNAB). The most recent
version is always available at [the main privacy page]({{ '/privacy' | relative_url }}).

## Available Versions

{% assign sorted_versions = site.privacy_versions | sort: 'date' | reverse %}
{% for version in sorted_versions %} {% assign version_date = version.date | date: "%B %d, %Y" %}
{% assign is_latest = forloop.first %}

<div class="version-item {% if is_latest %}latest{% endif %}">
  <h3>
    <a href="{{ version.url | relative_url }}">{{ version_date }}</a>
    {% if is_latest %}<span class="latest-badge">Latest</span>{% endif %}
  </h3>
  {% if version.changes %}
    <p class="version-changes"><strong>Changes:</strong> {{ version.changes }}</p>
  {% endif %}
</div>
{% endfor %}

## About Version History

We maintain a complete history of our Privacy Policy to ensure transparency about how we handle your
data. Each version is preserved exactly as it was when it was in effect.

- **Current Version**: Always available at [the main privacy page]({{ '/privacy' | relative_url }})
- **Version History**: This page shows all previous versions
- **Change Tracking**: Major changes are documented with each version

---

_For questions about our privacy practices, please contact us at
[support@streaksforynab.app](mailto:support@streaksforynab.app)_
