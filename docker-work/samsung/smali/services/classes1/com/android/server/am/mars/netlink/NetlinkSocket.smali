.class public Lcom/android/server/am/mars/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"


# static fields
.field public static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field public static final IO_TIMEOUT_MS:J = 0x12cL

.field public static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field public static final TAG:Ljava/lang/String; = "MARs::NetlinkSocket"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTimeout(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_7

    return-void

    .line 65
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative timeouts not permitted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static connectToKernel(Ljava/io/FileDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-static {v0, v0}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static forProto(I)Ljava/io/FileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 49
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 50
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v2, 0x10000

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-object p0
.end method

.method public static recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 77
    invoke-static {p2, p3}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 79
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object p2

    invoke-static {p0, v0, v1, p2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 81
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 103
    invoke-static {p4, p5}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 104
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object p4

    invoke-static {p0, v0, v1, p4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 105
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    return p0
.end method
