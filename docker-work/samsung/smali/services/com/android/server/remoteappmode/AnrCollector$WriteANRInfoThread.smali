.class public Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;
.super Ljava/lang/Thread;
.source "AnrCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/AnrCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteANRInfoThread"
.end annotation


# instance fields
.field public final mLastAnrFile:Ljava/io/File;

.field public final mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    const-string v0, "WriteANRInfoThread"

    .line 144
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    .line 146
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    return-void
.end method


# virtual methods
.method public final closeFileStream(Ljava/io/BufferedInputStream;)V
    .registers 3

    if-eqz p1, :cond_11

    :try_start_2
    const-string p0, "AnrCollector"

    const-string v0, "buf.close()"

    .line 176
    invoke-static {p0, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_11
    return-void
.end method

.method public final closeOutStream()V
    .registers 4

    const-string v0, "AnrCollector"

    :try_start_2
    const-string/jumbo v1, "write : 0"

    .line 187
    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    .line 189
    iget-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    const-string/jumbo v1, "mOut.close()"

    .line 191
    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_23
    return-void
.end method

.method public run()V
    .registers 7

    .line 151
    iget-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    if-nez v0, :cond_8

    .line 152
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :cond_8
    const/4 v0, 0x0

    const/16 v1, 0x4000

    :try_start_b
    new-array v2, v1, [B

    .line 160
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_2d
    .catchall {:try_start_b .. :try_end_19} :catchall_29

    :goto_19
    const/4 v0, 0x0

    .line 161
    :try_start_1a
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    .line 162
    iget-object v5, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v5, v2, v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_27
    .catchall {:try_start_1a .. :try_end_26} :catchall_3a

    goto :goto_19

    :catch_27
    move-exception v0

    goto :goto_30

    :catchall_29
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3b

    :catch_2d
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 165
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    .line 167
    :cond_33
    invoke-virtual {p0, v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :catchall_3a
    move-exception v0

    .line 167
    :goto_3b
    invoke-virtual {p0, v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    .line 170
    throw v0
.end method
