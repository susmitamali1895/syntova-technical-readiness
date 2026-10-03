# Practical Example - Async Order Processing
# An async function can return a result after completing its task.

import asyncio


async def process_order(order_id, customer):
    print("Processing order:", order_id)

    await asyncio.sleep(2)

    return f"Order {order_id} for {customer} is completed"


async def main():

    result1 = await process_order(101, "Amit")
    result2 = await process_order(102, "Sneha")

    print(result1)
    print(result2)


asyncio.run(main())