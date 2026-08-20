.class public Lcom/android/server/am/mars/netlink/StructNlMsgHdr;
.super Ljava/lang/Object;
.source "StructNlMsgHdr.java"


# static fields
.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public nlmsg_flags:S

.field public nlmsg_len:I

.field public nlmsg_pid:I

.field public nlmsg_seq:I

.field public nlmsg_type:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 55
    iput-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 56
    iput-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 57
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 58
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_pid:I

    return-void
.end method

.method public static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructNlMsgHdr;
    .registers 4

    .line 28
    invoke-static {p0}, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 33
    :cond_8
    new-instance v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 40
    iget p0, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    const/16 v2, 0x10

    if-ge p0, v2, :cond_32

    return-object v1

    :cond_32
    return-object v0
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 68
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    iget-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    iget-short v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 71
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    iget p0, p0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_pid:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
