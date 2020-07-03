{%- if grains.couchbase_role is defined and grains.couchbase_role == 'master' %}
{%- for bucket, bucket_details in pillar.couchbase.buckets.items() %}

{{ bucket }}
  couchbase_bucket.present:
    - name: {{ bucket }}
    - require:
      - cmd: couchbase_cluster_setup

{%- endfor %}
{%- endif %}
