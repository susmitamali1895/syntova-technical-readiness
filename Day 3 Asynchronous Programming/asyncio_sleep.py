# Using asyncio.sleep()
# asyncio.sleep() pauses an async task for a given time.

import asyncio

async def task():
    print("Task started")

    await asyncio.sleep(3)

    print("Task completed")


asyncio.run(task())
