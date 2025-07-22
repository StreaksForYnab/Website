---
layout: default
title: Privacy Policy
description: Privacy Policy for Streaks (For YNAB)
permalink: /privacy
---

{% assign latest_version = site.privacy_versions | sort: 'date' | reverse | first %}

{% if latest_version %} {{ latest_version.content }} {% else %}

<h1>Privacy Policy</h1>
<p>Privacy policy versions are being updated. Please check back soon.</p>
{% endif %}

<div class="version-info">
  <p><em>Last Updated: {{ latest_version.date | date: "%B %d, %Y" }}</em></p>
  <p><a href="{{ '/privacy/versions' | relative_url }}">View all versions</a></p>
</div>
