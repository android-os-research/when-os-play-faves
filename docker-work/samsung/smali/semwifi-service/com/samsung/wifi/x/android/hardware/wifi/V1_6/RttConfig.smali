.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;
.super Ljava/lang/Object;
.source "RttConfig.java"


# instance fields
.field public addr:[B

.field public burstDuration:I

.field public burstPeriod:I

.field public bw:I

.field public channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

.field public mustRequestLci:Z

.field public mustRequestLcr:Z

.field public numBurst:I

.field public numFramesPerBurst:I

.field public numRetriesPerFtmr:I

.field public numRetriesPerRttFrame:I

.field public peer:I

.field public preamble:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 20
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 26
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 39
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 49
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 54
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 63
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 67
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 82
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 86
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 90
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 211
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x44

    int-to-long v5, v3

    .line 216
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 215
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 221
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x44

    int-to-long v5, v5

    .line 222
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 223
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;",
            ">;)V"
        }
    .end annotation

    .line 260
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 263
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 264
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 265
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x44

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 267
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    mul-int/lit8 v5, v4, 0x44

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 269
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 272
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

    .line 100
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 103
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;

    .line 104
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 107
    :cond_1e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    if-eq v2, v3, :cond_25

    return v1

    .line 110
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 113
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 116
    :cond_37
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    if-eq v2, v3, :cond_3e

    return v1

    .line 119
    :cond_3e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    if-eq v2, v3, :cond_45

    return v1

    .line 122
    :cond_45
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    if-eq v2, v3, :cond_4c

    return v1

    .line 125
    :cond_4c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    if-eq v2, v3, :cond_53

    return v1

    .line 128
    :cond_53
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    if-eq v2, v3, :cond_5a

    return v1

    .line 131
    :cond_5a
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    if-eq v2, v3, :cond_61

    return v1

    .line 134
    :cond_61
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    if-eq v2, v3, :cond_68

    return v1

    .line 137
    :cond_68
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    if-eq v2, v3, :cond_6f

    return v1

    .line 140
    :cond_6f
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    if-eq v2, v3, :cond_76

    return v1

    .line 143
    :cond_76
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    if-eq p0, p1, :cond_7d

    return v1

    :cond_7d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    .line 152
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    .line 155
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xd

    aput-object p0, v0, v1

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 234
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    const/4 v3, 0x6

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 237
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 238
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    .line 239
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 240
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 241
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 242
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    .line 243
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    .line 244
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    .line 245
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    const-wide/16 v0, 0x35

    add-long/2addr v0, p3

    .line 246
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    .line 247
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    const-wide/16 v0, 0x3c

    add-long/2addr v0, p3

    .line 248
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    const-wide/16 v0, 0x40

    add-long/2addr p3, v0

    .line 249
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x44

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 206
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".addr = "

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .peer = "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttPeerType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .channel = "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .burstPeriod = "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numBurst = "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numFramesPerBurst = "

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numRetriesPerRttFrame = "

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numRetriesPerFtmr = "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .mustRequestLci = "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .mustRequestLcr = "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .burstDuration = "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .preamble = "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttPreamble;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .bw = "

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttBw;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 279
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->addr:[B

    if-eqz v2, :cond_77

    .line 281
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_77

    .line 285
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 288
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 289
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->peer:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 290
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 291
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstPeriod:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 292
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numBurst:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 293
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numFramesPerBurst:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 294
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerRttFrame:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 295
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->numRetriesPerFtmr:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    .line 296
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLci:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x35

    add-long/2addr v0, p2

    .line 297
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->mustRequestLcr:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    .line 298
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->burstDuration:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    .line 299
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->preamble:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x40

    add-long/2addr p2, v0

    .line 300
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->bw:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void

    .line 282
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 253
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 254
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
