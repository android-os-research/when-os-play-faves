.class public Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "FullBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v0, 0x8000

    new-array v1, v0, [B

    .line 49
    :cond_13
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_39

    :goto_19
    if-lez v2, :cond_13

    if-le v2, v0, :cond_1f

    move v3, v0

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0, v1, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_2c

    .line 57
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v2, v3

    goto :goto_19

    :cond_2c
    const-string p0, "BackupManagerService"

    const-string p1, "Unexpectedly reached end of file while reading data"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_39
    return-void
.end method
