.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;
.super Ljava/lang/Object;
.source "NanTransmitFollowupRequest.java"


# instance fields
.field public addr:[B

.field public disableFollowupResultIndication:Z

.field public discoverySessionId:B

.field public extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public isHighPriority:Z

.field public peerId:I

.field public serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public shouldUseDiscoveryWindow:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    .line 15
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 20
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    .line 24
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    .line 29
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 48
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 133
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 138
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 137
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 143
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    .line 144
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 145
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 203
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 207
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 209
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
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

    .line 58
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 61
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    .line 62
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 65
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    if-eq v2, v3, :cond_21

    return v1

    .line 68
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 71
    :cond_2c
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    if-eq v2, v3, :cond_33

    return v1

    .line 74
    :cond_33
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    if-eq v2, v3, :cond_3a

    return v1

    .line 77
    :cond_3a
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    return v1

    .line 80
    :cond_45
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    return v1

    .line 83
    :cond_50
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    if-eq p0, p1, :cond_57

    return v1

    :cond_57
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    .line 92
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    .line 94
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 97
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 98
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 154
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 155
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 158
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    const/4 v9, 0x6

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v6, 0xe

    add-long v6, p3, v6

    .line 161
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    const-wide/16 v6, 0xf

    add-long v6, p3, v6

    .line 162
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long v8, v6, v4

    .line 164
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 165
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 169
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_58
    if-ge v9, v8, :cond_6d

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 172
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 173
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_58

    :cond_6d
    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 177
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v11, v5

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 178
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 182
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_8c
    if-ge v7, v4, :cond_a1

    mul-int/lit8 v3, v7, 0x1

    int-to-long v5, v3

    .line 185
    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 186
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    :cond_a1
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x38

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 128
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".discoverySessionId = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerId = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .addr = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .isHighPriority = "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .shouldUseDiscoveryWindow = "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceSpecificInfo = "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .extendedServiceSpecificInfo = "

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .disableFollowupResultIndication = "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
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

    .line 217
    iget-byte v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 218
    iget v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 221
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    if-eqz v8, :cond_b2

    .line 223
    array-length v9, v8

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b2

    .line 227
    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v6, 0xe

    add-long v6, p2, v6

    .line 230
    iget-boolean v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0xf

    add-long v6, p2, v6

    .line 231
    iget-boolean v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 233
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x10

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 234
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 235
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 236
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_56
    if-ge v12, v6, :cond_6e

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 238
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_56

    :cond_6e
    add-long/2addr v7, v2

    .line 240
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 243
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 244
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v4, 0x0

    .line 245
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 246
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v6, 0x1

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v4

    :goto_8d
    if-ge v13, v6, :cond_a4

    mul-int/lit8 v4, v13, 0x1

    int-to-long v9, v4

    .line 248
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v5, v9, v10, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8d

    :cond_a4
    add-long/2addr v7, v2

    .line 250
    invoke-virtual {v1, v7, v8, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x30

    add-long v2, p2, v2

    .line 252
    iget-boolean v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void

    .line 224
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 193
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
