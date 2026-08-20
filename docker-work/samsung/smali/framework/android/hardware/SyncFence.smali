.class public final Landroid/hardware/SyncFence;
.super Ljava/lang/Object;
.source "SyncFence.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/SyncFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SIGNAL_TIME_INVALID:J = -0x1L

.field public static final whitelist SIGNAL_TIME_PENDING:J = 0x7fffffffffffffffL

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mCloser:Ljava/lang/Runnable;

.field private blacklist mNativePtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 78
    const-class v0, Landroid/hardware/SyncFence;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 80
    invoke-static {}, Landroid/hardware/SyncFence;->nGetDestructor()J

    move-result-wide v1

    .line 79
    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 284
    new-instance v0, Landroid/hardware/SyncFence$1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$1;-><init>()V

    sput-object v0, Landroid/hardware/SyncFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 126
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 5
    .param p1, "nativeFencePtr"    # J

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_14

    .line 118
    sget-object v0, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_1b

    .line 120
    :cond_14
    new-instance v0, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 122
    :goto_1b
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 97
    .local v0, "valid":Z
    const/4 v1, 0x0

    .line 98
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_e

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 101
    :cond_e
    if-eqz v1, :cond_23

    .line 102
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 103
    sget-object v4, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    goto :goto_2a

    .line 105
    :cond_23
    new-instance v2, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/hardware/SyncFence$$ExternalSyntheticLambda0;-><init>()V

    iput-object v2, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 107
    :goto_2a
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/SyncFence-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/SyncFence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SyncFence;->nCreate(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 92
    sget-object v2, Landroid/hardware/SyncFence;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method private blacklist await(J)Z
    .registers 8
    .param p1, "timeoutNanos"    # J

    .line 207
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    invoke-static {v1, v2, p1, p2}, Landroid/hardware/SyncFence;->nWait(JJ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 209
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static blacklist create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;
    .registers 2
    .param p0, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .line 146
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p0}, Landroid/hardware/SyncFence;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public static blacklist createEmpty()Landroid/hardware/SyncFence;
    .registers 1

    .line 135
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0}, Landroid/hardware/SyncFence;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0()V
    .registers 0

    .line 105
    return-void
.end method

.method static synthetic blacklist lambda$new$1()V
    .registers 0

    .line 120
    return-void
.end method

.method static synthetic blacklist lambda$new$2()V
    .registers 0

    .line 125
    return-void
.end method

.method private static native blacklist nCreate(I)J
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private static native blacklist nGetFd(J)I
.end method

.method private static native blacklist nGetSignalTime(J)J
.end method

.method private static native blacklist nIsValid(J)Z
.end method

.method private static native blacklist nWait(JJ)Z
.end method


# virtual methods
.method public whitelist await(Ljava/time/Duration;)Z
    .registers 5
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 186
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 187
    const-wide/16 v0, -0x1

    .local v0, "timeoutNanos":J
    goto :goto_d

    .line 189
    .end local v0    # "timeoutNanos":J
    :cond_9
    invoke-virtual {p1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    .line 191
    .restart local v0    # "timeoutNanos":J
    :goto_d
    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v2

    return v2
.end method

.method public whitelist awaitForever()Z
    .registers 3

    .line 203
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SyncFence;->await(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 238
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 239
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 240
    monitor-exit v0

    return-void

    .line 242
    :cond_d
    iput-wide v3, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    .line 243
    iget-object v1, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFdDup()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v4

    .line 156
    .local v1, "fd":I
    :goto_12
    if-eq v1, v4, :cond_1a

    .line 159
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 157
    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot dup the FD of an invalid SyncFence"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/SyncFence;
    throw v2

    .line 160
    .end local v1    # "fd":I
    .restart local p0    # "this":Landroid/hardware/SyncFence;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist getLock()Ljava/lang/Object;
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist getNativeFence()J
    .registers 3

    .line 259
    iget-wide v0, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getSignalTime()J
    .registers 6

    .line 227
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetSignalTime(J)J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, -0x1

    :goto_12
    monitor-exit v0

    return-wide v1

    .line 229
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist isValid()Z
    .registers 6

    .line 170
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nIsValid(J)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 172
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 271
    iget-object v0, p0, Landroid/hardware/SyncFence;->mCloser:Ljava/lang/Runnable;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/SyncFence;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    invoke-static {v1, v2}, Landroid/hardware/SyncFence;->nGetFd(J)I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v4

    .line 273
    .local v1, "fd":I
    :goto_12
    if-ne v1, v4, :cond_19

    .line 274
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_28

    .line 276
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 278
    .local v2, "temp":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 281
    .end local v1    # "fd":I
    .end local v2    # "temp":Ljava/io/FileDescriptor;
    :goto_28
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method
