.class public Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
.super Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotRuntimeProfileCallback"
.end annotation


# instance fields
.field public mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field public mErrCode:I

.field public mProfileReadFd:Landroid/os/ParcelFileDescriptor;

.field public mSuccess:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmErrCode(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileReadFd(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 2148
    invoke-direct {p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2150
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    const/4 v0, -0x1

    .line 2151
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    const/4 v0, 0x0

    .line 2152
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    .line 2153
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3

    const/4 v0, 0x0

    .line 2171
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 2172
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 2173
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    const/4 v0, 0x1

    .line 2157
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 2162
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 2164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2166
    :goto_e
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public waitTillDone()Z
    .registers 6

    const/4 v0, 0x0

    .line 2181
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0x989680

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move v1, v0

    :goto_e
    if-eqz v1, :cond_15

    .line 2184
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
