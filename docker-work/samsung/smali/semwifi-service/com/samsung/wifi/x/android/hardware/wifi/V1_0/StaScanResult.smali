.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;
.super Ljava/lang/Object;
.source "StaScanResult.java"


# instance fields
.field public beaconPeriodInMs:S

.field public bssid:[B

.field public capability:S

.field public frequency:I

.field public informationElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public rssi:I

.field public ssid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public timeStampInUs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 10
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 11
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 97
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 102
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 101
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 107
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;-><init>()V

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    .line 108
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 167
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 173
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
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

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    if-eq v2, v3, :cond_11

    return v1

    .line 25
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;

    .line 26
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    return v1

    .line 29
    :cond_1c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 32
    :cond_27
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 35
    :cond_32
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    if-eq v2, v3, :cond_39

    return v1

    .line 38
    :cond_39
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    if-eq v2, v3, :cond_40

    return v1

    .line 41
    :cond_40
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    if-eq v2, v3, :cond_47

    return v1

    .line 44
    :cond_47
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    if-eq v2, v3, :cond_4e

    return v1

    .line 47
    :cond_4e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    return v1

    :cond_59
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    .line 58
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    .line 61
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    .line 62
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    .line 63
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 55
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

    .line 118
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long v8, v6, v4

    .line 120
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 121
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 125
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_30
    if-ge v9, v8, :cond_45

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 128
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 129
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_45
    const-wide/16 v8, 0x18

    add-long v8, p3, v8

    .line 134
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    const/4 v10, 0x6

    invoke-virtual {v1, v8, v9, v6, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    .line 137
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    const-wide/16 v8, 0x24

    add-long v8, p3, v8

    .line 138
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    const-wide/16 v8, 0x28

    add-long v8, p3, v8

    .line 139
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v6

    iput-short v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    const-wide/16 v8, 0x2a

    add-long v8, p3, v8

    .line 140
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v6

    iput-short v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    const-wide/16 v8, 0x30

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 142
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x18

    int-to-long v11, v5

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 143
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 147
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_96
    if-ge v7, v4, :cond_ad

    .line 149
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    mul-int/lit8 v3, v7, 0x18

    int-to-long v5, v3

    move-object/from16 v3, p1

    .line 150
    invoke-virtual {v2, v3, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_96

    :cond_ad
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x40

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 92
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".timeStampInUs = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .ssid = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .bssid = "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .rssi = "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .frequency = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .beaconPeriodInMs = "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .capability = "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .informationElements = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
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

    .line 181
    iget-wide v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 183
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    .line 184
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 185
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 186
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_2c
    if-ge v12, v4, :cond_44

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 188
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_2c

    :cond_44
    add-long/2addr v7, v2

    .line 190
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    .line 194
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    if-eqz v4, :cond_ae

    .line 196
    array-length v11, v4

    const/4 v12, 0x6

    if-ne v11, v12, :cond_ae

    .line 200
    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    .line 203
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x24

    add-long v7, p2, v7

    .line 204
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x28

    add-long v7, p2, v7

    .line 205
    iget-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v7, 0x2a

    add-long v7, p2, v7

    .line 206
    iget-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 208
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    add-long/2addr v5, v7

    .line 209
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v5, 0x0

    .line 210
    invoke-virtual {v1, v9, v10, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 211
    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x18

    invoke-direct {v6, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v5

    :goto_96
    if-ge v13, v4, :cond_a9

    .line 213
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    mul-int/lit8 v9, v13, 0x18

    int-to-long v9, v9

    invoke-virtual {v5, v6, v9, v10}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_96

    :cond_a9
    add-long/2addr v7, v2

    .line 215
    invoke-virtual {v1, v7, v8, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void

    .line 197
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
