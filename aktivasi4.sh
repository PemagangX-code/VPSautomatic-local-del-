curl -s -X POST "https://api.cloudflare.com/client/v4/zones/4bfa9e840f45b79a59d529430d98efc5/dns_records" \
     -H "X-Auth-Email: carolinadatajogja@gmail.com" \
     -H "X-Auth-Key: 8b5e867573e2aadfbb4f75f41f63364c0dc0b" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"monitor.carolinahosting.my.id","content":"192.168.1.118","ttl":120,"priority":10,"proxied":true}' > /dev/null
