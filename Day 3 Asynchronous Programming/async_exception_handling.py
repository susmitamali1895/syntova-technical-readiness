# Async Exception Handling
# Handling errors inside an asynchronous function.

import asyncio


async def process_payment(amount):
    try:
        print("Processing payment:", amount)

        await asyncio.sleep(2)

        if amount <= 0:
            raise ValueError("Payment amount must be greater than zero")

        print("Payment successful:", amount)

    except ValueError as error:
        print("Payment Error:", error)


async def main():
    await process_payment(500)
    await process_payment(0)


asyncio.run(main())