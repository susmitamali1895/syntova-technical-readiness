# Practical Example - Async Database Queries
# Simulating multiple database queries asynchronously.

import asyncio


async def fetch_records(query_name):
    print("Executing query:", query_name)

    await asyncio.sleep(2)

    return f"Records received for {query_name}"


async def main():

    results = await asyncio.gather(
        fetch_records("Employee Data"),
        fetch_records("Sales Data"),
        fetch_records("Product Data")
    )

    for result in results:
        print(result)


asyncio.run(main())