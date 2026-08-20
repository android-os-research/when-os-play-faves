.class public final Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;
.super Ljava/lang/Object;
.source "AidlNativeHandleUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/hardware/common/NativeHandle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 70
    iget-object p0, p0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    if-eqz v2, :cond_f

    .line 72
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public static dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    new-instance v0, Landroid/hardware/common/NativeHandle;

    invoke-direct {v0}, Landroid/hardware/common/NativeHandle;-><init>()V

    .line 48
    invoke-virtual {p0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroid/os/NativeHandle;->getInts()[I

    move-result-object p0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->ints:[I

    .line 50
    array-length p0, v1

    new-array p0, p0, [Landroid/os/ParcelFileDescriptor;

    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    const/4 p0, 0x0

    .line 51
    :goto_1f
    array-length v2, v1

    if-ge p0, v2, :cond_2f

    .line 52
    iget-object v2, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v1, p0

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    aput-object v3, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_2f
    return-object v0
.end method
