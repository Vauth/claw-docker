FROM catub/core:bullseye
WORKDIR /userbot
ENV TZ=Asia/Kolkata
COPY . . 
ENV PATH="/home/userbot/bin:$PATH"
CMD ["python3","-m","userbot"]
