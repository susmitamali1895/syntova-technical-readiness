# Practical Example - Multiple API Requests
# Simulating multiple API calls using asynchronous programming.

import asyncio


async def get_student_data(name):
    print("Fetching data for:", name)

    await asyncio.sleep(2)

    print("Data received for:", name)


async def main():

    task1 = asyncio.create_task(get_student_data("Neeta"))
    task2 = asyncio.create_task(get_student_data("Shruti"))
    task3 = asyncio.create_task(get_student_data("Susmita"))

    await task1
    await task2
    await task3


asyncio.run(main())