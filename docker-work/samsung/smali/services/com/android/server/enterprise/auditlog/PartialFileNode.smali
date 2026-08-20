.class public Lcom/android/server/enterprise/auditlog/PartialFileNode;
.super Ljava/lang/Object;
.source "PartialFileNode.java"


# static fields
.field public static FILESIZE:J = 0x80000L

.field public static final TAG:Ljava/lang/String; = "PartialFileNode"


# instance fields
.field public final deleteSync:Ljava/lang/Object;

.field public mChannel:Ljava/nio/channels/FileChannel;

.field public volatile mFile:Ljava/io/File;

.field public volatile mMarkAsDeprecated:Z

.field public mPackageName:Ljava/lang/String;

.field public mRandomAccessFile:Ljava/io/RandomAccessFile;

.field public mTimestamp:J

.field public mTruncateFileAt:J

.field public mWasWritten:Z

.field public mWriteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 82
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 63
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 64
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 65
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 66
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    const-wide/16 p1, 0x0

    .line 67
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 68
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    .line 70
    :try_start_3d
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    const-string/jumbo v0, "rwd"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 71
    sget-wide v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 72
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    .line 73
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    .line 74
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_69} :catch_6a

    goto :goto_8e

    :catch_6a
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PartialFileNode.Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PartialFileNode"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_8e
    return-void
.end method


# virtual methods
.method public closeFile()V
    .registers 5

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_2a

    .line 118
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 120
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 121
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    monitor-exit v0

    goto :goto_4e

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    const-string v1, "PartialFileNode"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeFile.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public compressFile()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v2, :cond_66

    .line 177
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_7c
    .catchall {:try_start_2 .. :try_end_29} :catchall_78

    .line 179
    :try_start_29
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_63
    .catchall {:try_start_29 .. :try_end_2e} :catchall_60

    .line 180
    :try_start_2e
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_5e
    .catchall {:try_start_2e .. :try_end_33} :catchall_90

    const/high16 v0, 0x10000

    :try_start_35
    new-array v0, v0, [B

    .line 182
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    :goto_3b
    if-lez v6, :cond_45

    .line 187
    invoke-virtual {v5, v0, v1, v6}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 189
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_3b

    .line 191
    :cond_45
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 196
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_55} :catch_5b
    .catchall {:try_start_35 .. :try_end_55} :catchall_58

    :cond_55
    move v1, v0

    move-object v0, v5

    goto :goto_68

    :catchall_58
    move-exception p0

    move-object v0, v5

    goto :goto_91

    :catch_5b
    move-exception p0

    move-object v0, v5

    goto :goto_7f

    :catch_5e
    move-exception p0

    goto :goto_7f

    :catchall_60
    move-exception p0

    move-object v4, v0

    goto :goto_91

    :catch_63
    move-exception p0

    move-object v4, v0

    goto :goto_7f

    :cond_66
    move-object v3, v0

    move-object v4, v3

    :goto_68
    if-eqz v0, :cond_6d

    .line 206
    :try_start_6a
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    if-eqz v3, :cond_72

    .line 211
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_72

    :catch_72
    :cond_72
    if-eqz v4, :cond_8f

    .line 217
    :goto_74
    :try_start_74
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_8f

    goto :goto_8f

    :catchall_78
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    goto :goto_91

    :catch_7c
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 202
    :goto_7f
    :try_start_7f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_90

    if-eqz v0, :cond_87

    .line 206
    :try_start_84
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_87

    :catch_87
    :cond_87
    if-eqz v3, :cond_8c

    .line 211
    :try_start_89
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8c

    :catch_8c
    :cond_8c
    if-eqz v4, :cond_8f

    goto :goto_74

    :catch_8f
    :cond_8f
    :goto_8f
    return v1

    :catchall_90
    move-exception p0

    :goto_91
    if-eqz v0, :cond_96

    .line 206
    :try_start_93
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_96

    :catch_96
    :cond_96
    if-eqz v3, :cond_9b

    .line 211
    :try_start_98
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9b

    :catch_9b
    :cond_9b
    if-eqz v4, :cond_a0

    .line 217
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_a0

    .line 220
    :catch_a0
    :cond_a0
    throw p0
.end method

.method public delete()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteSync:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_f

    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 136
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFileSize()J
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 146
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    return-wide v0
.end method

.method public getWasWritten()Z
    .registers 1

    .line 224
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    return p0
.end method

.method public isDeprecated()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    return p0
.end method

.method public declared-synchronized setDeprecated(Z)Z
    .registers 3

    monitor-enter p0

    .line 156
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 157
    monitor-exit p0

    return p1

    .line 160
    :cond_8
    :try_start_8
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_d

    const/4 p1, 0x1

    .line 161
    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTimestamp()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    :cond_c
    return-void
.end method

.method public setWasWritten(Z)V
    .registers 2

    .line 227
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    return-void
.end method

.method public write(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    .line 93
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_10

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_10
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_60

    .line 97
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_3b

    .line 98
    :try_start_17
    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    if-nez v2, :cond_1d

    .line 99
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 101
    :cond_1d
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    .line 102
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 103
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    monitor-exit v1

    goto :goto_60

    :catchall_38
    move-exception p1

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p1

    const-string v1, "PartialFileNode"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_60
    :goto_60
    return v0
.end method
