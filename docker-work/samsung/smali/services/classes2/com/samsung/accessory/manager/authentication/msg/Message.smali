.class public Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public final INF_SIZE:I

.field public final RES_ATQS:I

.field public apdu:[B

.field public data:[B

.field public inf:[B


# direct methods
.method public constructor <init>(BBBBB)V
    .registers 8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    new-array v1, v0, [B

    .line 21
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    .line 22
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    .line 23
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 25
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(BBBBB[B)V
    .registers 9

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    .line 29
    array-length v1, p6

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    .line 30
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    .line 31
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    .line 32
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 33
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    .line 13
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    .line 16
    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->parseMessage(I)V

    return-void
.end method


# virtual methods
.method public getApdu()[B
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getData()[B
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getInf(I)B
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final parseMessage(I)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_11

    add-int/lit8 v1, v1, -0x2

    .line 59
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 60
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1a

    :cond_11
    add-int/lit8 v1, v1, -0x3

    .line 62
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    .line 63
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    return-void
.end method

.method public final setApdu()V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    if-eqz v0, :cond_16

    .line 47
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    array-length p0, p0

    array-length v2, v0

    invoke-static {v0, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    return-void
.end method

.method public final setInf(BBBBB)V
    .registers 7

    .line 37
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    const/4 p1, 0x1

    .line 38
    aput-byte p2, p0, p1

    const/4 p1, 0x2

    .line 39
    aput-byte p3, p0, p1

    const/4 p1, 0x3

    .line 40
    aput-byte p4, p0, p1

    const/4 p1, 0x4

    .line 41
    aput-byte p5, p0, p1

    return-void
.end method
