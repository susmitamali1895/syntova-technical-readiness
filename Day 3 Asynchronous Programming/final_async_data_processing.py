
# Processing multiple data sources asynchronously.

import asyncio


async def fetch_data(source_name, records):
    try:
        print("Fetching data from:", source_name)

        await asyncio.sleep(2)

        if records < 0:
            raise ValueError("Number of records cannot be negative")

        return f"{source_name}: {records} records received"

    except ValueError as error:
        return f"{source_name}: Error - {error}"


async def main():

    task1 = asyncio.create_task(
        fetch_data("Sales Data", 150)
    )

    task2 = asyncio.create_task(
        fetch_data("Customer Data", 200)
    )

    task3 = asyncio.create_task(
        fetch_data("Product Data", -10)
    )

    results = await asyncio.gather(
        task1,
        task2,
        task3
    )

    print("\nResults:")

    for result in results:
        print(result)


asyncio.run(main())