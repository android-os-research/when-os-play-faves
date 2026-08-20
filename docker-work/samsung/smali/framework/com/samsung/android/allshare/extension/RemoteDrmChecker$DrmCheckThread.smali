.class Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
.super Ljava/lang/Thread;
.source "RemoteDrmChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/RemoteDrmChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCheckThread"
.end annotation


# instance fields
.field private blacklist mExtension:Ljava/lang/String;

.field private blacklist mMimeType:Ljava/lang/String;

.field private blacklist mSelectedItemUri:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "selectedItemUri"    # Ljava/lang/String;
    .param p3, "mExtension"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mSelectedItemUri:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    .line 191
    iput-object p4, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 17

    .line 195
    move-object/from16 v1, p0

    const-string v2, "RemoteDrmChecker"

    iget-object v0, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fputmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;I)V

    .line 197
    const/4 v4, 0x0

    .line 198
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 199
    .local v5, "inStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 201
    .local v6, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tempfile."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "filename":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-static {v8}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fgetmPath(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "filePath":Ljava/lang/String;
    :try_start_40
    new-instance v0, Ljava/io/File;

    iget-object v9, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-static {v9}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fgetmPath(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 205
    .local v9, "dirPath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " is not exist"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 209
    :cond_6b
    new-instance v0, Ljava/net/URL;

    iget-object v10, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mSelectedItemUri:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 210
    .local v10, "inputURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 211
    if-nez v4, :cond_9f

    .line 212
    const-string v0, " fail to openConnection connection"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_81} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_81} :catch_191
    .catchall {:try_start_40 .. :try_end_81} :catchall_18d

    .line 266
    if-eqz v4, :cond_86

    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    :cond_86
    if-eqz v6, :cond_92

    .line 271
    :try_start_88
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 274
    goto :goto_92

    .line 272
    :catch_8c
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_92
    :goto_92
    if-eqz v5, :cond_9e

    .line 278
    :try_start_94
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 281
    goto :goto_9e

    .line 279
    :catch_98
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 280
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9e
    :goto_9e
    return-void

    .line 215
    :cond_9f
    :try_start_9f
    const-string v0, "GET"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 216
    if-eqz v7, :cond_ab

    .line 217
    const-string v0, "User-Agent"

    invoke-virtual {v4, v0, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_ab
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v11

    .line 224
    const/16 v11, 0x2710

    new-array v11, v11, [B

    .line 226
    .local v11, "buf":[B
    const/4 v12, 0x0

    .line 227
    .local v12, "readCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c1
    const/4 v14, 0x3

    if-ge v13, v14, :cond_d1

    .line 228
    invoke-virtual {v5, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move v12, v14

    .line 229
    if-lez v12, :cond_ce

    .line 230
    invoke-virtual {v6, v11, v3, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 227
    :cond_ce
    add-int/lit8 v13, v13, 0x1

    goto :goto_c1

    .line 232
    .end local v13    # "i":I
    :cond_d1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 235
    new-instance v13, Landroid/drm/DrmManagerClient;

    iget-object v14, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-static {v14}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fgetmContext(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 236
    .local v13, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v14, 0x0

    .line 238
    .local v14, "temp_isDrmFile":Z
    iget-object v15, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    if-eqz v15, :cond_f0

    const-string v3, ".wma"

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_108

    :cond_f0
    iget-object v3, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_115

    const-string/jumbo v15, "wma"

    .line 239
    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_108

    iget-object v3, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    const-string/jumbo v15, "wav"

    .line 240
    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 241
    :cond_108
    const-string v3, " check DrmManagerClient - WMA_PLUGIN_MIME"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v3, "audio/x-ms-wma"

    invoke-virtual {v13, v8, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v14, v3

    goto :goto_13f

    .line 243
    :cond_115
    iget-object v3, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    if-eqz v3, :cond_125

    const-string v15, ".wmv"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_132

    :cond_125
    iget-object v3, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_13f

    const-string/jumbo v15, "wmv"

    .line 244
    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 245
    :cond_132
    const-string v3, " check DrmManagerClient - WMV_PLUGIN_MIME"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v3, "video/x-ms-wmv"

    invoke-virtual {v13, v8, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v14, v3

    .line 250
    :cond_13f
    :goto_13f
    const/4 v3, 0x1

    if-ne v14, v3, :cond_148

    .line 251
    iget-object v15, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-static {v15, v3}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fputmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;I)V

    goto :goto_14e

    .line 253
    :cond_148
    iget-object v15, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fputmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;I)V

    .line 256
    :goto_14e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  === THIS IS DRM FILE ? "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v15, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-static {v15}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fgetmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v3, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    const/4 v15, 0x1

    invoke-static {v3, v15}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fputmIsDrmChecked(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;Z)V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_170} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_170} :catch_191
    .catchall {:try_start_9f .. :try_end_170} :catchall_18d

    .line 266
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "dirPath":Ljava/io/File;
    .end local v10    # "inputURL":Ljava/net/URL;
    .end local v11    # "buf":[B
    .end local v12    # "readCount":I
    .end local v13    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v14    # "temp_isDrmFile":Z
    if-eqz v4, :cond_175

    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    :cond_175
    nop

    .line 271
    :try_start_176
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_17a

    .line 274
    goto :goto_180

    .line 272
    :catch_17a
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :goto_180
    if-eqz v5, :cond_1d1

    .line 278
    :try_start_182
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_186

    .line 281
    :goto_185
    goto :goto_1d1

    .line 279
    :catch_186
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 280
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_185

    .line 266
    :catchall_18d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1fd

    .line 261
    :catch_191
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    :try_start_192
    const-string v3, " Exception"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19a
    .catchall {:try_start_192 .. :try_end_19a} :catchall_18d

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_19f

    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    :cond_19f
    if-eqz v6, :cond_1ab

    .line 271
    :try_start_1a1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    .line 274
    goto :goto_1ab

    .line 272
    :catch_1a5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1ab
    :goto_1ab
    if-eqz v5, :cond_1d1

    .line 278
    :try_start_1ad
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b0} :catch_186

    goto :goto_185

    .line 258
    :catch_1b1
    move-exception v0

    .line 259
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_1b2
    const-string v3, " IOException"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1ba
    .catchall {:try_start_1b2 .. :try_end_1ba} :catchall_18d

    .line 266
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_1bf

    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    :cond_1bf
    if-eqz v6, :cond_1cb

    .line 271
    :try_start_1c1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c5

    .line 274
    goto :goto_1cb

    .line 272
    :catch_1c5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1cb
    :goto_1cb
    if-eqz v5, :cond_1d1

    .line 278
    :try_start_1cd
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_186

    goto :goto_185

    .line 285
    :cond_1d1
    :goto_1d1
    :try_start_1d1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d9} :catch_1da

    .line 288
    goto :goto_1e0

    .line 286
    :catch_1da
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, " fail to new File( filePath ).delete();"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  DRM check end : isDrmFile = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-static {v3}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->-$$Nest$fgetmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 266
    :goto_1fd
    if-eqz v4, :cond_202

    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 269
    :cond_202
    if-eqz v6, :cond_20e

    .line 271
    :try_start_204
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_208

    .line 274
    goto :goto_20e

    .line 272
    :catch_208
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20e
    :goto_20e
    if-eqz v5, :cond_21a

    .line 278
    :try_start_210
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_214

    .line 281
    goto :goto_21a

    .line 279
    :catch_214
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 280
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21a
    :goto_21a
    throw v2
.end method
