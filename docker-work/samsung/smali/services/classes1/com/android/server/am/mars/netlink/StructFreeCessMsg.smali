.class public Lcom/android/server/am/mars/netlink/StructFreeCessMsg;
.super Ljava/lang/Object;
.source "StructFreeCessMsg.java"


# static fields
.field public static final INTERFACETOKEN_BUFF_SIZE:I = 0x64

.field public static final STRUCT_SIZE:I = 0x8c


# instance fields
.field public cmd:I

.field public code:I

.field public dst_portid:I

.field public flag:I

.field public mod:I

.field public rpcname:[B

.field public src_portid:I

.field public target_uid:I

.field public type:I

.field public uid:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [B

    .line 25
    iput-object v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 31
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 32
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 33
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 34
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 35
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 36
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 37
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 38
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;
    .registers 5

    .line 62
    new-instance v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 72
    new-instance v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    invoke-direct {v0}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    const/4 v1, 0x0

    :goto_59
    const/16 v2, 0x64

    if-ge v1, v2, :cond_68

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 83
    iget-object v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 85
    :cond_68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    return-object v0
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 45
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_29
    const/16 v1, 0x64

    if-ge v0, v1, :cond_37

    .line 54
    iget-object v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    aget-byte v1, v1, v0

    .line 55
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 57
    :cond_37
    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget p0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "struct.type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "struct.mode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "struct.src_portid = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "struct.dst_portid = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
