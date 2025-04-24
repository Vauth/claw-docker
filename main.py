import os
from telethon import TelegramClient, events

BOT_TOKEN = os.getenv('BOT_TOKEN')
if not BOT_TOKEN:
    raise ValueError("BOT_TOKEN environment variable not set!")

bot = TelegramClient('bot', api_id=8138160, "1ad2dae5b9fddc7fe7bfee2db9d54ff2").start(bot_token=BOT_TOKEN)

@bot.on(events.NewMessage)
async def handle_message(event):
    await event.respond(f"You said: {event.text}")

print("Bot is running...")
bot.run_until_disconnected()
