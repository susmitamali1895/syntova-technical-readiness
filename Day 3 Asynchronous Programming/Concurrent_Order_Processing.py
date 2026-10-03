# Concurrent Order Processing

import asyncio


async def process_order(order_id, customer):
    print("Processing order:", order_id)

    await asyncio.sleep(2)

    return f"Order {order_id} for {customer} is completed"


async def main():

    results = await asyncio.gather(
        process_order(101, "Amit"),
        process_order(102, "Sneha"),
        process_order(103, "Karan")
    )

    for result in results:
        print(result)


asyncio.run(main())