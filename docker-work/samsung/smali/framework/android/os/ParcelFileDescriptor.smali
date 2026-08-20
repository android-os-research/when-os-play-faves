.class public Landroid/os/ParcelFileDescriptor;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelFileDescriptor$Status;,
        Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;,
        Landroid/os/ParcelFileDescriptor$OnCloseListener;,
        Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;,
        Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_STATUS:I = 0x400

.field public static final whitelist MODE_APPEND:I = 0x2000000

.field public static final whitelist MODE_CREATE:I = 0x8000000

.field public static final whitelist MODE_READ_ONLY:I = 0x10000000

.field public static final whitelist MODE_READ_WRITE:I = 0x30000000

.field public static final whitelist MODE_TRUNCATE:I = 0x4000000

.field public static final whitelist MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_WRITE_ONLY:I = 0x20000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ParcelFileDescriptor"


# instance fields
.field private volatile greylist-max-o mClosed:Z

.field private greylist-max-o mCommFd:Ljava/io/FileDescriptor;

.field private final greylist-max-o mFd:Ljava/io/FileDescriptor;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mStatus:Landroid/os/ParcelFileDescriptor$Status;

.field private greylist-max-o mStatusBuf:[B

.field private final greylist-max-o mWrapped:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1119
    new-instance v0, Landroid/os/ParcelFileDescriptor$2;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$2;-><init>()V

    sput-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    .line 180
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 182
    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 184
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 190
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "commChannel"    # Ljava/io/FileDescriptor;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    .line 194
    if-eqz p1, :cond_20

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 198
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 199
    invoke-static {p1, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 201
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 202
    if-eqz p2, :cond_1a

    .line 203
    invoke-static {p2, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 206
    :cond_1a
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 207
    return-void

    .line 195
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FileDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist adoptFd(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "fd"    # I

    .line 416
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 417
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 419
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method private greylist-max-o closeWithStatus(ILjava/lang/String;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 819
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_5

    return-void

    .line 820
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 821
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_f

    .line 822
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 825
    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    .line 826
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 827
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 828
    return-void
.end method

.method private static greylist-max-o createCommSocketPair()[Ljava/io/FileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 586
    .local v0, "comm1":Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 587
    .local v1, "comm2":Ljava/io/FileDescriptor;
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_CLOEXEC:I

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 588
    invoke-static {v0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 589
    invoke-static {v1, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 590
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/FileDescriptor;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v2

    .line 591
    .end local v0    # "comm1":Ljava/io/FileDescriptor;
    .end local v1    # "comm2":Ljava/io/FileDescriptor;
    :catch_28
    move-exception v0

    .line 592
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist createPipe()[Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v0

    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 496
    .local v0, "fds":[Ljava/io/FileDescriptor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/ParcelFileDescriptor;

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v2, v1, v3
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v1

    .line 499
    .end local v0    # "fds":[Ljava/io/FileDescriptor;
    :catch_22
    move-exception v0

    .line 500
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist createReliablePipe()[Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 517
    .local v0, "comm":[Ljava/io/FileDescriptor;
    sget v1, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 518
    .local v1, "fds":[Ljava/io/FileDescriptor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    aget-object v6, v0, v4

    invoke-direct {v3, v5, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    aget-object v6, v0, v4

    invoke-direct {v3, v5, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v3, v2, v4
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v2

    .line 521
    .end local v0    # "comm":[Ljava/io/FileDescriptor;
    .end local v1    # "fds":[Ljava/io/FileDescriptor;
    :catch_2a
    move-exception v0

    .line 522
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist createReliableSocketPair()[Landroid/os/ParcelFileDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createReliableSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createReliableSocketPair(I)[Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 569
    .local v0, "comm":[Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 570
    .local v1, "fd0":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 571
    .local v2, "fd1":Ljava/io/FileDescriptor;
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v4, Landroid/system/OsConstants;->SOCK_CLOEXEC:I

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v4

    or-int/2addr v4, p0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 572
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    aget-object v6, v0, v5

    invoke-direct {v4, v1, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {v4, v2, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v4, v3, v5
    :try_end_31
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_31} :catch_32

    return-object v3

    .line 575
    .end local v0    # "comm":[Ljava/io/FileDescriptor;
    .end local v1    # "fd0":Ljava/io/FileDescriptor;
    .end local v2    # "fd1":Ljava/io/FileDescriptor;
    :catch_32
    move-exception v0

    .line 576
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist createSocketPair()[Landroid/os/ParcelFileDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSocketPair(I)[Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 540
    .local v0, "fd0":Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 541
    .local v1, "fd1":Ljava/io/FileDescriptor;
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_CLOEXEC:I

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v3

    or-int/2addr v3, p0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 542
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v4, v2, v3
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_29} :catch_2a

    return-object v2

    .line 545
    .end local v0    # "fd0":Ljava/io/FileDescriptor;
    .end local v1    # "fd1":Ljava/io/FileDescriptor;
    :catch_2a
    move-exception v0

    .line 546
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "orig"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 355
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->isAtLeastQ()Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    goto :goto_10

    :cond_e
    sget v1, Landroid/system/OsConstants;->F_DUPFD:I

    :goto_10
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    .line 356
    .local v1, "intfd":I
    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 357
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v2

    .line 358
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "intfd":I
    :catch_1e
    move-exception v0

    .line 359
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static greylist fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 610
    :cond_4
    new-instance v1, Landroid/os/MemoryFile;

    array-length v2, p0

    invoke-direct {v1, p1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 612
    .local v1, "file":Landroid/os/MemoryFile;
    :try_start_a
    array-length v2, p0

    if-lez v2, :cond_12

    .line 613
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 615
    :cond_12
    invoke-virtual {v1}, Landroid/os/MemoryFile;->deactivate()V

    .line 616
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 617
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-eqz v2, :cond_1f

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_23

    .line 619
    :cond_1f
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 617
    return-object v0

    .line 619
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 620
    throw v0
.end method

.method public static whitelist fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "datagramSocket"    # Ljava/net/DatagramSocket;

    .line 480
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 482
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_12

    :try_start_6
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_13

    .line 483
    :catch_b
    move-exception v1

    .line 484
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 482
    .end local v1    # "e":Ljava/io/IOException;
    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public static whitelist fromFd(I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 389
    .local v0, "original":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 392
    :try_start_8
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 393
    .local v1, "dup":Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->isAtLeastQ()Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    goto :goto_18

    :cond_16
    sget v2, Landroid/system/OsConstants;->F_DUPFD:I

    :goto_18
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v2

    .line 394
    .local v2, "intfd":I
    invoke-virtual {v1, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 395
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_25} :catch_26

    return-object v3

    .line 396
    .end local v1    # "dup":Ljava/io/FileDescriptor;
    .end local v2    # "intfd":I
    :catch_26
    move-exception v1

    .line 397
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static greylist-max-o fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    if-eqz p1, :cond_2c

    .line 300
    if-eqz p2, :cond_24

    .line 304
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 305
    .local v0, "comm":[Ljava/io/FileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, p0, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 306
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    .line 307
    .local v2, "queue":Landroid/os/MessageQueue;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    new-instance v5, Landroid/os/ParcelFileDescriptor$1;

    invoke-direct {v5, v2, p2}, Landroid/os/ParcelFileDescriptor$1;-><init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    invoke-virtual {v2, v4, v3, v5}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 328
    return-object v1

    .line 301
    .end local v0    # "comm":[Ljava/io/FileDescriptor;
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "queue":Landroid/os/MessageQueue;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "socket"    # Ljava/net/Socket;

    .line 447
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 449
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_12

    :try_start_6
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_13

    .line 450
    :catch_b
    move-exception v1

    .line 451
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 449
    .end local v1    # "e":Ljava/io/IOException;
    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public static blacklist getFile(Ljava/io/FileDescriptor;)Ljava/io/File;
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/self/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 667
    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISCHR(I)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_4d

    .line 670
    :cond_34
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a regular file or character device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    throw v1

    .line 668
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_4d
    :goto_4d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_52} :catch_53

    return-object v1

    .line 672
    .end local v0    # "path":Ljava/lang/String;
    :catch_53
    move-exception v0

    .line 673
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getOrCreateStatusBuffer()[B
    .registers 2

    .line 839
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    if-nez v0, :cond_a

    .line 840
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    .line 842
    :cond_a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    return-object v0
.end method

.method private static blacklist ifAtLeastQ(I)I
    .registers 2
    .param p0, "value"    # I

    .line 1231
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->isAtLeastQ()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isAtLeastQ()Z
    .registers 2

    .line 1227
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 229
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 230
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 232
    :cond_8
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method public static whitelist open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    if-eqz p2, :cond_19

    .line 265
    if-eqz p3, :cond_11

    .line 269
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 270
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 272
    :cond_c
    invoke-static {v0, p2, p3}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 266
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 332
    invoke-static {p1}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result v0

    sget v1, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 334
    .local v0, "flags":I
    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    sget v2, Landroid/system/OsConstants;->S_IRWXG:I

    or-int/2addr v1, v2

    .line 335
    .local v1, "realMode":I
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_17

    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v1, v2

    .line 336
    :cond_17
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1e

    sget v2, Landroid/system/OsConstants;->S_IWOTH:I

    or-int/2addr v1, v2

    .line 338
    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "path":Ljava/lang/String;
    :try_start_22
    invoke-static {v2, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v3

    .line 341
    :catch_27
    move-exception v3

    .line 342
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static whitelist parseMode(Ljava/lang/String;)I
    .registers 2
    .param p0, "mode"    # Ljava/lang/String;

    .line 653
    invoke-static {p0}, Landroid/os/FileUtils;->translateModeStringToPosix(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/FileUtils;->translateModePosixToPfd(I)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .registers 10
    .param p0, "comm"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B

    .line 901
    const-string v0, "Failed to read status; assuming dead: "

    const-string v1, "ParcelFileDescriptor"

    const/4 v2, -0x2

    :try_start_5
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p0, p1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 902
    .local v3, "n":I
    if-nez v3, :cond_13

    .line 904
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    return-object v4

    .line 906
    :cond_13
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    .line 907
    .local v4, "status":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 908
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, -0x4

    const/4 v7, 0x4

    invoke-direct {v5, p1, v7, v6}, Ljava/lang/String;-><init>([BII)V

    .line 909
    .local v5, "msg":Ljava/lang/String;
    new-instance v6, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v6, v4, v5}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    return-object v6

    .line 911
    .end local v5    # "msg":Ljava/lang/String;
    :cond_2a
    new-instance v5, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v5, v4}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_2f} :catch_4b
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_2f} :catch_30

    return-object v5

    .line 921
    .end local v3    # "n":I
    .end local v4    # "status":I
    :catch_30
    move-exception v3

    .line 922
    .local v3, "e":Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    return-object v0

    .line 913
    .end local v3    # "e":Ljava/io/InterruptedIOException;
    :catch_4b
    move-exception v3

    .line 914
    .local v3, "e":Landroid/system/ErrnoException;
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v4, v5, :cond_54

    .line 916
    const/4 v0, 0x0

    return-object v0

    .line 918
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    return-object v0
.end method

.method public static whitelist wrap(Landroid/os/ParcelFileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 290
    .local v0, "original":Ljava/io/FileDescriptor;
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 291
    invoke-static {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o writeCommStatusAndClose(ILjava/lang/String;)V
    .registers 12
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 846
    const-string v0, "Failed to report status: "

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    const-string v2, "ParcelFileDescriptor"

    if-nez v1, :cond_21

    .line 848
    if-eqz p2, :cond_20

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to inform peer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_20
    return-void

    .line 854
    :cond_21
    const/4 v1, 0x2

    if-ne p1, v1, :cond_29

    .line 855
    const-string v1, "Peer expected signal when closed; unable to deliver after detach"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_29
    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_35

    .line 893
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 894
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 859
    return-void

    .line 863
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_a4

    .line 866
    if-eqz v1, :cond_4b

    .line 893
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 894
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 866
    return-void

    .line 869
    :cond_4b
    :try_start_4b
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v1

    .line 870
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 872
    .local v4, "writePtr":I
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v4, p1, v5}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 873
    add-int/lit8 v4, v4, 0x4

    .line 875
    const/4 v5, 0x0

    if-eqz p2, :cond_69

    .line 876
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 877
    .local v6, "rawMsg":[B
    array-length v7, v6

    array-length v8, v1

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 878
    .local v7, "len":I
    invoke-static {v6, v5, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    add-int/2addr v4, v7

    .line 883
    .end local v6    # "rawMsg":[B
    .end local v7    # "len":I
    :cond_69
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v6, v1, v5, v4}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6e
    .catch Landroid/system/ErrnoException; {:try_start_4b .. :try_end_6e} :catch_85
    .catch Ljava/io/InterruptedIOException; {:try_start_4b .. :try_end_6e} :catch_6f
    .catchall {:try_start_4b .. :try_end_6e} :catchall_a4

    .line 890
    .end local v1    # "buf":[B
    .end local v4    # "writePtr":I
    goto :goto_9b

    .line 887
    :catch_6f
    move-exception v1

    .line 889
    .local v1, "e":Ljava/io/InterruptedIOException;
    :try_start_70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 884
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :catch_85
    move-exception v1

    .line 886
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_70 .. :try_end_9a} :catchall_a4

    .line 890
    nop

    .line 893
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_9b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 894
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 895
    nop

    .line 896
    return-void

    .line 893
    :catchall_a4
    move-exception v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 894
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 895
    throw v0
.end method


# virtual methods
.method public whitelist canDetectErrors()Z
    .registers 2

    .line 934
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 935
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0

    return v0

    .line 937
    :cond_9
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist checkError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    .line 958
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 978
    return-void

    .line 960
    :cond_8
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-nez v0, :cond_22

    .line 961
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_18

    .line 962
    const-string v0, "ParcelFileDescriptor"

    const-string v1, "Peer didn\'t provide a comm channel; unable to check for errors"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 968
    :cond_18
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 971
    :cond_22
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-eqz v0, :cond_32

    iget v0, v0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    if-nez v0, :cond_2b

    goto :goto_32

    .line 975
    :cond_2b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 973
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_10

    .line 787
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 789
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 790
    goto :goto_15

    .line 789
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 790
    throw v0

    .line 792
    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    .line 794
    :goto_15
    return-void
.end method

.method public whitelist closeWithError(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_10

    .line 806
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 808
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 809
    goto :goto_16

    .line 808
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 809
    throw v0

    .line 811
    :cond_10
    if-eqz p1, :cond_17

    .line 814
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    .line 816
    :goto_16
    return-void

    .line 812
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1083
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 1084
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 1086
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist detachFd()I
    .registers 4

    .line 761
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 762
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    return v0

    .line 764
    :cond_9
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_24

    .line 767
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->acquireRawFd(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 768
    .local v0, "fd":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    .line 769
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 770
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 771
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 772
    return v0

    .line 765
    .end local v0    # "fd":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist dup()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 371
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 373
    :cond_9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_7

    .line 1066
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 1068
    :cond_7
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    .line 1069
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1072
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_17

    .line 1074
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1c

    .line 1077
    :cond_17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1078
    nop

    .line 1079
    return-void

    .line 1077
    :catchall_1c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1078
    throw v0
.end method

.method public whitelist getFd()I
    .registers 3

    .line 739
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 740
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    return v0

    .line 742
    :cond_9
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_14

    .line 745
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0

    .line 743
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 683
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 684
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 686
    :cond_9
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getStatSize()J
    .registers 6

    .line 695
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 696
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    return-wide v0

    .line 699
    :cond_9
    const-wide/16 v0, -0x1

    :try_start_b
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    .line 700
    .local v2, "st":Landroid/system/StructStat;
    iget v3, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v3

    if-nez v3, :cond_23

    iget v3, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    .line 703
    :cond_22
    return-wide v0

    .line 701
    :cond_23
    :goto_23
    iget-wide v0, v2, Landroid/system/StructStat;->st_size:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_25} :catch_26

    return-wide v0

    .line 705
    .end local v2    # "st":Landroid/system/StructStat;
    :catch_26
    move-exception v2

    .line 706
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fstat() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ParcelFileDescriptor"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-wide v0
.end method

.method public greylist-max-o releaseResources()V
    .registers 1

    .line 836
    return-void
.end method

.method public greylist seekTo(J)J
    .registers 5
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 720
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v0

    return-wide v0

    .line 723
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, p1, p2, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_11} :catch_12

    return-wide v0

    .line 724
    :catch_12
    move-exception v0

    .line 725
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1056
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    .line 1057
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1059
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ParcelFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1097
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_10

    .line 1099
    :try_start_4
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 1101
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 1102
    goto :goto_39

    .line 1101
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 1102
    throw v0

    .line 1104
    :cond_10
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_23

    .line 1105
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1107
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_2c

    .line 1109
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1112
    :goto_2c
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_39

    .line 1114
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    .line 1117
    :cond_39
    :goto_39
    return-void
.end method
