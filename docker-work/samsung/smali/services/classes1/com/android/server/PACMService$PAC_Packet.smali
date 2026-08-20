.class public Lcom/android/server/PACMService$PAC_Packet;
.super Ljava/lang/Object;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PAC_Packet"
.end annotation


# static fields
.field public static final MAX_PACKET_SIZE:I = 0x200

.field public static final PAC_PACKET_CMD_AT_CMD_CHECK:I = 0x1

.field public static final PAC_PACKET_CMD_GET_STATUS:I = 0x0

.field public static final PAC_PACKET_TYPE_AT_CMD:I = 0x2

.field public static final PAC_PACKET_TYPE_AT_CMD_ATD_DDEX:I = 0x4

.field public static final PAC_PACKET_TYPE_AT_CMD_RET:I = 0x3

.field public static final PAC_PACKET_TYPE_MODE:I = 0x0

.field public static final PAC_PACKET_TYPE_MODE_RET:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommand([B)I
    .registers 4

    const/high16 v0, -0x10000000

    if-nez p0, :cond_5

    return v0

    .line 618
    :cond_5
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_21

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buf len is abnormal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PACMService"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_21
    new-array v0, v2, [B

    const/4 v1, 0x0

    .line 623
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    aput-byte p0, v0, v1

    .line 624
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public static getItem([BI)[B
    .registers 10

    const/16 v0, 0x200

    .line 630
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x3

    .line 631
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 633
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 634
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item_count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACMService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v3, v1

    :goto_3e
    if-ge v3, v0, :cond_78

    .line 639
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 640
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 642
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, p1, :cond_6d

    .line 644
    new-array p1, v5, [B

    .line 645
    invoke-virtual {p0, p1, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_79

    .line 648
    :cond_6d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_78
    const/4 p1, 0x0

    :goto_79
    return-object p1
.end method

.method public static getVersion([B)I
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 610
    :cond_4
    aget-byte p0, p0, v0

    return p0
.end method

.method public static initPacket(I)[B
    .registers 5

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/16 v2, 0x200

    .line 658
    :try_start_5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 660
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short p0, p0

    .line 661
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 663
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 664
    invoke-virtual {v2, v1, p0, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    move-exception p0

    .line 666
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_24
    return-object v1
.end method

.method public static putItem([BLjava/lang/Object;I)[B
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BTT;I)[B"
        }
    .end annotation

    const/16 v0, 0x200

    .line 674
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x3

    .line 675
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 678
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 679
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    move v5, v3

    :goto_27
    if-ge v5, v2, :cond_3b

    .line 683
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 684
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 686
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_3b
    if-eq p2, v4, :cond_40

    if-eq p2, v1, :cond_40

    goto :goto_5e

    .line 692
    :cond_40
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    if-ge v5, v0, :cond_6f

    int-to-short p2, p2

    .line 693
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 694
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 695
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 703
    :goto_5e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 704
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 706
    new-array p2, p1, [B

    .line 707
    invoke-virtual {p0, p2, v3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v4

    int-to-byte p0, v2

    .line 708
    aput-byte p0, p2, v1

    return-object p2

    :cond_6f
    const-string p0, "PACMService"

    const-string p1, "Packet is full, Can\'t put item to packet"

    .line 697
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
