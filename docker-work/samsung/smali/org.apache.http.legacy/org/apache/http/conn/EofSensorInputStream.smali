.class public Lorg/apache/http/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "watcher"    # Lorg/apache/http/conn/EofSensorWatcher;

    .line 109
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 110
    if-eqz p1, :cond_d

    .line 115
    iput-object p1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    .line 117
    iput-object p2, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    .line 118
    return-void

    .line 111
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    .line 327
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 328
    return-void
.end method

.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "a":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 201
    :try_start_7
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_f

    move v0, v1

    .line 206
    goto :goto_14

    .line 203
    :catch_f
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 205
    throw v1

    .line 209
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_14
    :goto_14
    return v0
.end method

.method protected checkAbort()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    .line 298
    const/4 v1, 0x1

    .line 299
    .local v1, "scws":Z
    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v3, :cond_f

    .line 300
    invoke-interface {v3, v0}, Lorg/apache/http/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    move v1, v0

    .line 301
    :cond_f
    if-eqz v1, :cond_16

    .line 302
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_19

    .line 304
    .end local v1    # "scws":Z
    :cond_16
    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 305
    goto :goto_1d

    .line 304
    :catchall_19
    move-exception v0

    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 305
    throw v0

    .line 307
    :cond_1d
    :goto_1d
    return-void
.end method

.method protected checkClose()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    .line 269
    const/4 v1, 0x1

    .line 270
    .local v1, "scws":Z
    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v3, :cond_f

    .line 271
    invoke-interface {v3, v0}, Lorg/apache/http/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    move v1, v0

    .line 272
    :cond_f
    if-eqz v1, :cond_16

    .line 273
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_19

    .line 275
    .end local v1    # "scws":Z
    :cond_16
    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 276
    goto :goto_1d

    .line 275
    :catchall_19
    move-exception v0

    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 276
    throw v0

    .line 278
    :cond_1d
    :goto_1d
    return-void
.end method

.method protected checkEOF(I)V
    .registers 6
    .param p1, "eof"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1f

    if-gez p1, :cond_1f

    .line 242
    const/4 v1, 0x1

    .line 243
    .local v1, "scws":Z
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v3, :cond_11

    .line 244
    invoke-interface {v3, v0}, Lorg/apache/http/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    move v1, v0

    .line 245
    :cond_11
    if-eqz v1, :cond_18

    .line 246
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1b

    .line 248
    .end local v1    # "scws":Z
    :cond_18
    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 249
    goto :goto_1f

    .line 248
    :catchall_1b
    move-exception v0

    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 249
    throw v0

    .line 251
    :cond_1f
    :goto_1f
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    .line 218
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkClose()V

    .line 219
    return-void
.end method

.method protected isReadAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    if-nez v0, :cond_c

    .line 134
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 132
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/4 v0, -0x1

    .line 143
    .local v0, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 145
    :try_start_7
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v0, v1

    .line 146
    invoke-virtual {p0, v0}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    .line 150
    goto :goto_17

    .line 147
    :catch_12
    move-exception v1

    .line 148
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 149
    throw v1

    .line 153
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_17
    :goto_17
    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/4 v0, -0x1

    .line 181
    .local v0, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 183
    :try_start_7
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v0, v1

    .line 184
    invoke-virtual {p0, v0}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    .line 188
    goto :goto_17

    .line 185
    :catch_12
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 187
    throw v1

    .line 190
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_17
    :goto_17
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const/4 v0, -0x1

    .line 162
    .local v0, "l":I
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 164
    :try_start_7
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v0, v1

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    .line 169
    goto :goto_17

    .line 166
    :catch_12
    move-exception v1

    .line 167
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    .line 168
    throw v1

    .line 172
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_17
    :goto_17
    return v0
.end method

.method public releaseConnection()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->close()V

    .line 315
    return-void
.end method
