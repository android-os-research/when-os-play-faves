.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;
.super Ljava/lang/Object;
.source "WifiDebugPacketFateFrameInfo.java"


# instance fields
.field public driverTimestampUsec:J

.field public firmwareTimestampUsec:J

.field public frameContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public frameLen:J

.field public frameType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    .line 26
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    .line 37
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 115
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 120
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 119
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 125
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 126
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 127
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;",
            ">;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 166
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 168
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 170
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 172
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 175
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 58
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 61
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    .line 62
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 65
    :cond_1a
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    return v1

    .line 68
    :cond_23
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    return v1

    .line 71
    :cond_2c
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_35

    return v1

    .line 74
    :cond_35
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    return v1

    :cond_40
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    .line 87
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 82
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 136
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 137
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    .line 138
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    .line 139
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    add-long/2addr v4, v6

    .line 141
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 142
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 146
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v4, :cond_60

    mul-int/lit8 v3, v2, 0x1

    int-to-long v5, v3

    .line 149
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 150
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_60
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x30

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 110
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".frameType = "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .frameLen = "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .driverTimestampUsec = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .firmwareTimestampUsec = "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .frameContent = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 180
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 181
    iget-wide v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameLen:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    .line 182
    iget-wide v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    .line 183
    iget-wide v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->firmwareTimestampUsec:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 185
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x20

    add-long/2addr p2, v5

    add-long/2addr v2, p2

    .line 186
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    const/4 v5, 0x0

    .line 187
    invoke-virtual {p1, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 188
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3d
    if-ge v5, v4, :cond_54

    mul-int/lit8 v3, v5, 0x1

    int-to-long v6, v3

    .line 190
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_54
    add-long/2addr p2, v0

    .line 192
    invoke-virtual {p1, p2, p3, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 156
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 157
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
