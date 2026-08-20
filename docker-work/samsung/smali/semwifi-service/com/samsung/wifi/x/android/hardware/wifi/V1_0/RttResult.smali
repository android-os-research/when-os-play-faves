.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;
.super Ljava/lang/Object;
.source "RttResult.java"


# instance fields
.field public addr:[B

.field public burstDurationInMs:I

.field public burstNum:I

.field public distanceInMm:I

.field public distanceSdInMm:I

.field public distanceSpreadInMm:I

.field public lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

.field public lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

.field public measurementNumber:I

.field public negotiatedBurstNum:I

.field public numberPerBurstPeer:B

.field public retryAfterDuration:B

.field public rssi:I

.field public rssiSpread:I

.field public rtt:J

.field public rttSd:J

.field public rttSpread:J

.field public rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

.field public status:I

.field public successNumber:I

.field public timeStampInUs:J

.field public txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    .line 31
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    .line 35
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    .line 42
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    .line 46
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    .line 50
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    .line 54
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    .line 59
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    .line 64
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x0

    .line 68
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    .line 72
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    .line 76
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    .line 80
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    .line 84
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    .line 88
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    .line 92
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    .line 97
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    .line 102
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    .line 106
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 110
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 285
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xc0

    int-to-long v5, v3

    .line 290
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 289
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 293
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 295
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;-><init>()V

    mul-int/lit16 v5, v3, 0xc0

    int-to-long v5, v5

    .line 296
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 297
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 346
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 347
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 348
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xc0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 350
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;

    mul-int/lit16 v5, v4, 0xc0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 352
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 355
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

    .line 120
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;

    if-eq v2, v3, :cond_11

    return v1

    .line 123
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;

    .line 124
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 127
    :cond_1e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    if-eq v2, v3, :cond_25

    return v1

    .line 130
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 133
    :cond_2c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    if-eq v2, v3, :cond_33

    return v1

    .line 136
    :cond_33
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    if-eq v2, v3, :cond_3a

    return v1

    .line 139
    :cond_3a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    if-eq v2, v3, :cond_41

    return v1

    .line 142
    :cond_41
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    if-eq v2, v3, :cond_48

    return v1

    .line 145
    :cond_48
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    if-eq v2, v3, :cond_4f

    return v1

    .line 148
    :cond_4f
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    if-eq v2, v3, :cond_56

    return v1

    .line 151
    :cond_56
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    if-eq v2, v3, :cond_5d

    return v1

    .line 154
    :cond_5d
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    return v1

    .line 157
    :cond_68
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    return v1

    .line 160
    :cond_73
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7c

    return v1

    .line 163
    :cond_7c
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_85

    return v1

    .line 166
    :cond_85
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8e

    return v1

    .line 169
    :cond_8e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    if-eq v2, v3, :cond_95

    return v1

    .line 172
    :cond_95
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    if-eq v2, v3, :cond_9c

    return v1

    .line 175
    :cond_9c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    if-eq v2, v3, :cond_a3

    return v1

    .line 178
    :cond_a3
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_ac

    return v1

    .line 181
    :cond_ac
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    if-eq v2, v3, :cond_b3

    return v1

    .line 184
    :cond_b3
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    if-eq v2, v3, :cond_ba

    return v1

    .line 187
    :cond_ba
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c5

    return v1

    .line 190
    :cond_c5
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    return v1

    :cond_d0
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    .line 199
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    .line 203
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    .line 205
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    .line 209
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    .line 210
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    .line 211
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 220
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 221
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x16

    aput-object p0, v0, v1

    .line 198
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 308
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    const/4 v3, 0x6

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 311
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 312
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 313
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 314
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 315
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 316
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 317
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 318
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 319
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    .line 320
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x2c

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 321
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x58

    add-long/2addr v0, p3

    .line 322
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    const-wide/16 v0, 0x60

    add-long/2addr v0, p3

    .line 323
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    const-wide/16 v0, 0x68

    add-long/2addr v0, p3

    .line 324
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    const-wide/16 v0, 0x70

    add-long/2addr v0, p3

    .line 325
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    const-wide/16 v0, 0x74

    add-long/2addr v0, p3

    .line 326
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    const-wide/16 v0, 0x78

    add-long/2addr v0, p3

    .line 327
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    const-wide/16 v0, 0x80

    add-long/2addr v0, p3

    .line 328
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    const-wide/16 v0, 0x88

    add-long/2addr v0, p3

    .line 329
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    const-wide/16 v0, 0x8c

    add-long/2addr v0, p3

    .line 330
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    .line 331
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v1, 0x90

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 332
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v0, 0xa8

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc0

    .line 279
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 280
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".addr = "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .burstNum = "

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .measurementNumber = "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .successNumber = "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .numberPerBurstPeer = "

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .status = "

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .retryAfterDuration = "

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .rssi = "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rssiSpread = "

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .txRate = "

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rxRate = "

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rtt = "

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .rttSd = "

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .rttSpread = "

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .distanceInMm = "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .distanceSdInMm = "

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .distanceSpreadInMm = "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .timeStampInUs = "

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .burstDurationInMs = "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .negotiatedBurstNum = "

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .lci = "

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .lcr = "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 362
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->addr:[B

    if-eqz v2, :cond_bf

    .line 364
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_bf

    .line 368
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 371
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 372
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 373
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 374
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 375
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->status:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 376
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 377
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 378
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 379
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 380
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x2c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 381
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    .line 382
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    .line 383
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    .line 384
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    .line 385
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x74

    add-long/2addr v0, p2

    .line 386
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    .line 387
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    .line 388
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x88

    add-long/2addr v0, p2

    .line 389
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8c

    add-long/2addr v0, p2

    .line 390
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 391
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v1, 0x90

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 392
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v0, 0xa8

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void

    .line 365
    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 336
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 337
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 338
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
