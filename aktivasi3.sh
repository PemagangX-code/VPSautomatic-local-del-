curl -s -X POST "https://api.cloudflare.com/client/v4/zones/zone id masukkan di sini/dns_records" \
     -H "X-Auth-Email: emaimumasukkandisini@gmail.com" \
     -H "X-Auth-Key: global api key masukkan di sini" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"www.carolinahosting.my.id","content":"192.168.1.118","ttl":120,"priority":10,"proxied":true}' > /dev/null
