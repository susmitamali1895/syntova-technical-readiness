
# Simulating multiple API requests using asynchronous programming.

import asyncio


async def fetch_data(api_name):
    print("Fetching data from:", api_name)

    await asyncio.sleep(2)

    return f"Data received from {api_name}"


async def main():

    results = await asyncio.gather(
        fetch_data("Weather API"),
        fetch_data("Sales API"),
        fetch_data("Customer API")
    )

    for result in results:
        print(result)


asyncio.run(main())