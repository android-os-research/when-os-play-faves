.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;
.super Ljava/lang/Object;
.source "NanDataPathScheduleUpdateInd.java"


# instance fields
.field public channelInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public ndpInstanceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public peerDiscoveryAddress:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 71
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 76
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 75
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 81
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;-><init>()V

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    .line 82
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 83
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;",
            ">;)V"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 136
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 137
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 138
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 140
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 142
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 26
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;

    if-eq v2, v3, :cond_11

    return v1

    .line 29
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;

    .line 30
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 33
    :cond_1e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 36
    :cond_29
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    .line 47
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 94
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    const/4 v7, 0x6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long v8, v6, v4

    .line 98
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0xc

    int-to-long v11, v9

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 99
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 103
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_30
    if-ge v9, v8, :cond_47

    .line 105
    new-instance v10, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;

    invoke-direct {v10}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;-><init>()V

    mul-int/lit8 v11, v9, 0xc

    int-to-long v11, v11

    move-object/from16 v13, p1

    .line 106
    invoke-virtual {v10, v13, v6, v11, v12}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_47
    move-object/from16 v13, p1

    const-wide/16 v8, 0x18

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 111
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v14, v5

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v18, v8, v2

    const/16 v20, 0x1

    .line 112
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 116
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_66
    if-ge v7, v4, :cond_7b

    mul-int/lit8 v2, v7, 0x4

    int-to-long v2, v2

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 120
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    :cond_7b
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x28

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 66
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".peerDiscoveryAddress = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .channelInfo = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .ndpInstanceIds = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 152
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->peerDiscoveryAddress:[B

    if-eqz v6, :cond_83

    .line 154
    array-length v7, v6

    const/4 v8, 0x6

    if-ne v7, v8, :cond_83

    .line 158
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 162
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    .line 163
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 164
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 165
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0xc

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_32
    if-ge v12, v4, :cond_47

    .line 167
    iget-object v14, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;

    mul-int/lit8 v15, v12, 0xc

    int-to-long v9, v15

    invoke-virtual {v14, v11, v9, v10}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_32

    :cond_47
    add-long/2addr v7, v2

    .line 169
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 172
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    add-long/2addr v5, v7

    .line 173
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long v9, v7, v5

    .line 174
    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 175
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v13, v4, :cond_7e

    mul-int/lit8 v6, v13, 0x4

    int-to-long v9, v6

    .line 177
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->ndpInstanceIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    :cond_7e
    add-long/2addr v7, v2

    .line 179
    invoke-virtual {v1, v7, v8, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void

    .line 155
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 126
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 127
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
