.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;
.super Ljava/lang/Object;
.source "NanSubscribeRequest.java"


# instance fields
.field public baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

.field public intfAddr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public isSsiRequiredForMatch:Z

.field public shouldUseSrf:Z

.field public srfRespondIfInAddressSet:Z

.field public srfType:I

.field public subscribeType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    .line 18
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    .line 25
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    .line 38
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 123
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xd0

    int-to-long v5, v3

    .line 128
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 127
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 133
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    mul-int/lit16 v5, v3, 0xd0

    int-to-long v5, v5

    .line 134
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 135
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 180
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 182
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xd0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 184
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    mul-int/lit16 v5, v4, 0xd0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 186
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 189
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

    .line 54
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 57
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    .line 58
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 61
    :cond_1e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    if-eq v2, v3, :cond_25

    return v1

    .line 64
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 67
    :cond_2c
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    if-eq v2, v3, :cond_33

    return v1

    .line 70
    :cond_33
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    if-eq v2, v3, :cond_3a

    return v1

    .line 73
    :cond_3a
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    if-eq v2, v3, :cond_41

    return v1

    .line 76
    :cond_41
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    return v1

    :cond_4c
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 85
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    .line 91
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p2

    .line 144
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0xb0

    add-long v5, p3, v5

    .line 145
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    const-wide/16 v5, 0xb4

    add-long v5, p3, v5

    .line 146
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    const-wide/16 v5, 0xb8

    add-long v5, p3, v5

    .line 147
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    const-wide/16 v5, 0xb9

    add-long v5, p3, v5

    .line 148
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    const-wide/16 v5, 0xba

    add-long v5, p3, v5

    .line 149
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    const-wide/16 v5, 0xc0

    add-long v5, p3, v5

    const-wide/16 v8, 0x8

    add-long/2addr v8, v5

    .line 151
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v8, v2, 0x6

    int-to-long v8, v8

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v5, v3

    const/4 v14, 0x1

    .line 152
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 156
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_5f
    if-ge v3, v2, :cond_72

    const/4 v4, 0x6

    new-array v5, v4, [B

    mul-int/lit8 v6, v3, 0x6

    int-to-long v6, v6

    .line 161
    invoke-virtual {v1, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 164
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_72
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xd0

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 118
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".baseConfigs = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .subscribeType = "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .srfType = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSrfType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .srfRespondIfInAddressSet = "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .shouldUseSrf = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .isSsiRequiredForMatch = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .intfAddr = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 194
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0xb0

    add-long/2addr v3, p2

    .line 195
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xb4

    add-long/2addr v3, p2

    .line 196
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfType:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xb8

    add-long/2addr v3, p2

    .line 197
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v3, 0xb9

    add-long/2addr v3, p2

    .line 198
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->shouldUseSrf:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v3, 0xba

    add-long/2addr v3, p2

    .line 199
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 201
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0xc0

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 202
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 203
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 204
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x6

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4e
    if-ge v5, v0, :cond_6f

    mul-int/lit8 v4, v5, 0x6

    int-to-long v6, v4

    .line 208
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->intfAddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_67

    .line 210
    array-length v8, v4

    const/4 v9, 0x6

    if-ne v8, v9, :cond_67

    .line 214
    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 211
    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    add-long/2addr p2, v1

    .line 218
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 170
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 171
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
