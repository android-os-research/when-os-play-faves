.class public Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;
.super Ljava/lang/Object;
.source "FreecessNetlinkMessage.java"


# static fields
.field public static final FREECESS_FW_VERSION:I = 0x2

.field public static final KERNEL_ID_NETLINK:I = 0x12341234

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static mLength:I = 0x9c


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreecessNetlinkMessageSize()I
    .registers 1

    .line 45
    sget v0, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->mLength:I

    return v0
.end method

.method public static newFreecessRequest(IIIII)[B
    .registers 9

    .line 20
    sget v0, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->mLength:I

    new-array v0, v0, [B

    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 22
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    new-instance v2, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;

    invoke-direct {v2}, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;-><init>()V

    .line 25
    sget v3, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->mLength:I

    iput v3, v2, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    const/16 v3, 0x1e

    .line 26
    iput-short v3, v2, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 v3, 0x0

    .line 27
    iput-short v3, v2, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 28
    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 29
    new-instance v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    invoke-direct {v2}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;-><init>()V

    .line 30
    iput p0, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 31
    iput p1, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 32
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    iput p0, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    const p0, 0x12341234

    .line 33
    iput p0, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    const/high16 p0, 0x20000000

    .line 34
    iput p0, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 35
    iput p2, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 36
    iput v3, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 37
    iput v3, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 38
    iput p4, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    .line 39
    iput p3, v2, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 40
    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->pack(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "FreecessNetlinkMessage"

    return-object p0
.end method
