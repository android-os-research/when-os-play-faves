.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;
.super Ljava/lang/Object;
.source "NanDebugConfig.java"


# instance fields
.field public clusterIdBottomRangeVal:S

.field public clusterIdTopRangeVal:S

.field public discoveryChannelMhzVal:[I

.field public hopCountForceVal:B

.field public intfAddrVal:[B

.field public ouiVal:I

.field public randomFactorForceVal:B

.field public useBeaconsInBandVal:[Z

.field public useSdfInBandVal:[Z

.field public validClusterIdVals:Z

.field public validDiscoveryChannelVal:Z

.field public validHopCountForceVal:Z

.field public validIntfAddrVal:Z

.field public validOuiVal:Z

.field public validRandomFactorForceVal:Z

.field public validUseBeaconsInBandVal:Z

.field public validUseSdfInBandVal:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    .line 12
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 13
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 19
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 20
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    .line 25
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    .line 26
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    .line 32
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 33
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    .line 40
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    .line 41
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    .line 46
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 47
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 52
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    new-array v2, v1, [Z

    .line 53
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    new-array v0, v1, [Z

    .line 59
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 198
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2c

    int-to-long v5, v3

    .line 203
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 202
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 208
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x2c

    int-to-long v5, v5

    .line 209
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 210
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;",
            ">;)V"
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 264
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 265
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 266
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 267
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x2c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 269
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;

    mul-int/lit8 v5, v4, 0x2c

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 271
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 274
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

    .line 69
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 72
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;

    .line 73
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 76
    :cond_1a
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    if-eq v2, v3, :cond_21

    return v1

    .line 79
    :cond_21
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    if-eq v2, v3, :cond_28

    return v1

    .line 82
    :cond_28
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    if-eq v2, v3, :cond_2f

    return v1

    .line 85
    :cond_2f
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 88
    :cond_3a
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    if-eq v2, v3, :cond_41

    return v1

    .line 91
    :cond_41
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    if-eq v2, v3, :cond_48

    return v1

    .line 94
    :cond_48
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    if-eq v2, v3, :cond_4f

    return v1

    .line 97
    :cond_4f
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    if-eq v2, v3, :cond_56

    return v1

    .line 100
    :cond_56
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    if-eq v2, v3, :cond_5d

    return v1

    .line 103
    :cond_5d
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    if-eq v2, v3, :cond_64

    return v1

    .line 106
    :cond_64
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    if-eq v2, v3, :cond_6b

    return v1

    .line 109
    :cond_6b
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    return v1

    .line 112
    :cond_76
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    if-eq v2, v3, :cond_7d

    return v1

    .line 115
    :cond_7d
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    return v1

    .line 118
    :cond_88
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    if-eq v2, v3, :cond_8f

    return v1

    .line 121
    :cond_8f
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    return v1

    :cond_9a
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 129
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    .line 131
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    .line 132
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    .line 134
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    .line 138
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    .line 140
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 142
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 144
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    .line 146
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x10

    aput-object p0, v0, v1

    .line 129
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 219
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    .line 220
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 221
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    .line 222
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    const-wide/16 v0, 0x7

    add-long/2addr v0, p3

    .line 225
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    const/4 v2, 0x6

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v0, 0xd

    add-long/2addr v0, p3

    .line 228
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 229
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 230
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    const-wide/16 v0, 0x15

    add-long/2addr v0, p3

    .line 231
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    const-wide/16 v0, 0x16

    add-long/2addr v0, p3

    .line 232
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    const-wide/16 v0, 0x17

    add-long/2addr v0, p3

    .line 233
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 234
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 237
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 240
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    const-wide/16 v0, 0x25

    add-long/2addr v0, p3

    .line 243
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    const-wide/16 v0, 0x27

    add-long/2addr v0, p3

    .line 246
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    const-wide/16 v0, 0x28

    add-long/2addr p3, v0

    .line 249
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-virtual {p2, p3, p4, p0, v2}, Landroid/os/HwBlob;->copyToBoolArray(J[ZI)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x2c

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 193
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".validClusterIdVals = "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .clusterIdBottomRangeVal = "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .clusterIdTopRangeVal = "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .validIntfAddrVal = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .intfAddrVal = "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .validOuiVal = "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .ouiVal = "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .validRandomFactorForceVal = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .randomFactorForceVal = "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .validHopCountForceVal = "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .hopCountForceVal = "

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .validDiscoveryChannelVal = "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .discoveryChannelMhzVal = "

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .validUseBeaconsInBandVal = "

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .useBeaconsInBandVal = "

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .validUseSdfInBandVal = "

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .useSdfInBandVal = "

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 10

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 279
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 280
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 281
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    .line 282
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x7

    add-long/2addr v0, p2

    .line 285
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_b3

    .line 287
    array-length v4, v2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b3

    .line 291
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    .line 294
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 295
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 296
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x15

    add-long/2addr v0, p2

    .line 297
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x16

    add-long/2addr v0, p2

    .line 298
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x17

    add-long/2addr v0, p2

    .line 299
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 300
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 303
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    if-eqz v2, :cond_ad

    .line 305
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ad

    .line 309
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 312
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x25

    add-long/2addr v0, p2

    .line 315
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    if-eqz v2, :cond_a7

    .line 317
    array-length v4, v2

    if-ne v4, v5, :cond_a7

    .line 321
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    const-wide/16 v0, 0x27

    add-long/2addr v0, p2

    .line 324
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x28

    add-long/2addr p2, v0

    .line 327
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    if-eqz p0, :cond_a1

    .line 329
    array-length v0, p0

    if-ne v0, v5, :cond_a1

    .line 333
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBoolArray(J[Z)V

    return-void

    .line 330
    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 255
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 256
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
