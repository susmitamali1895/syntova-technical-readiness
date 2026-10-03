
# Simulating multiple files being processed asynchronously.

import asyncio


async def process_file(file_name):
    print("Processing:", file_name)

    await asyncio.sleep(2)

    return f"{file_name} processed successfully"


async def main():

    task1 = asyncio.create_task(process_file("sales.csv"))
    task2 = asyncio.create_task(process_file("customers.csv"))
    task3 = asyncio.create_task(process_file("products.csv"))

    result1 = await task1
    result2 = await task2
    result3 = await task3

    print(result1)
    print(result2)
    print(result3)


asyncio.run(main())