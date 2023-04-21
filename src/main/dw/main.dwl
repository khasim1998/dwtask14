%dw 2.0
output application/json
---
payload.products map ((item, index) -> {
 "id":item.id,
 "type":item."type",
 "price":(payload.price filter $.id == item.id).cost[0]
 }
)



/*Add/Update values in objects from other array objects based on matching ID field*/







