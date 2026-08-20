.class Lcom/android/internal/telephony/cat/CatBIPServerConnection;
.super Lcom/android/internal/telephony/cat/CatBIPConnection;
.source "CatBIPConnection.java"


# instance fields
.field blacklist byteArrayWriter:Ljava/io/ByteArrayOutputStream;

.field blacklist lastReadPosition:I

.field blacklist linkState:B

.field blacklist reader:Ljava/io/BufferedInputStream;

.field blacklist server:Ljava/net/ServerSocket;

.field blacklist socket:Ljava/net/Socket;

.field blacklist storeSendData:Ljava/io/ByteArrayOutputStream;

.field blacklist writer:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 4

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    .line 277
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    .line 279
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    .line 281
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    const/4 p1, 0x0

    .line 287
    iput-byte p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 288
    iput p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    return-void
.end method


# virtual methods
.method public blacklist terminateStreams()V
    .registers 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the streams  for channel ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1d

    .line 295
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 297
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_24

    .line 298
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 300
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2b

    .line 301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 303
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_32

    .line 304
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 306
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_39

    .line 307
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 309
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_40

    .line 310
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_40
    const-string v0, "handleCloseChannel: Closed socket and all streams!"

    .line 312
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_45} :catch_46

    goto :goto_5f

    :catch_46
    move-exception v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel; IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5f
    return-void
.end method
