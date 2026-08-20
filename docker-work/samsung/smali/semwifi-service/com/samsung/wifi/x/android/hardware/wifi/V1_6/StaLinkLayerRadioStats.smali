.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;
.super Ljava/lang/Object;
.source "StaLinkLayerRadioStats.java"


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

.field public channelStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;",
            ">;"
        }
    .end annotation
.end field

.field public onTimeInMsForBgScan:I

.field public onTimeInMsForHs20Scan:I

.field public onTimeInMsForNanScan:I

.field public onTimeInMsForPnoScan:I

.field public onTimeInMsForRoamScan:I

.field public radioId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 24
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 29
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 40
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 125
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x50

    int-to-long v5, v3

    .line 130
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 129
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 135
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;-><init>()V

    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    .line 136
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 137
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 179
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 180
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 181
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 183
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    mul-int/lit8 v5, v4, 0x50

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 185
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 188
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

    .line 50
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 53
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;

    .line 54
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 57
    :cond_1e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    if-eq v2, v3, :cond_25

    return v1

    .line 60
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 63
    :cond_2c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    if-eq v2, v3, :cond_33

    return v1

    .line 66
    :cond_33
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    if-eq v2, v3, :cond_3a

    return v1

    .line 69
    :cond_3a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    if-eq v2, v3, :cond_41

    return v1

    .line 72
    :cond_41
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    return v1

    .line 75
    :cond_4c
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    if-eq p0, p1, :cond_53

    return v1

    :cond_53
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 84
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 90
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 83
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 146
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v9, v10, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    .line 147
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    const-wide/16 v4, 0x24

    add-long v4, p3, v4

    .line 148
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    .line 149
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    const-wide/16 v4, 0x2c

    add-long v4, p3, v4

    .line 150
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    .line 151
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    const-wide/16 v4, 0x38

    add-long v4, p3, v4

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    .line 153
    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v1, v11, 0x18

    int-to-long v6, v1

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v4, v2

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v12

    move-wide v6, v14

    .line 154
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 158
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_65
    if-ge v2, v11, :cond_7a

    .line 160
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;-><init>()V

    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    .line 161
    invoke-virtual {v3, v9, v1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 162
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_7a
    const-wide/16 v1, 0x48

    add-long v1, p3, v1

    .line 165
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x50

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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

    const-string v1, ".V1_0 = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForNanScan = "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForBgScan = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForRoamScan = "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForPnoScan = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForHs20Scan = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .channelStats = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .radioId = "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 193
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x20

    add-long/2addr v3, p2

    .line 194
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x24

    add-long/2addr v3, p2

    .line 195
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    .line 196
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x2c

    add-long/2addr v3, p2

    .line 197
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x30

    add-long/2addr v3, p2

    .line 198
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 200
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x38

    add-long/2addr v3, p2

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    .line 201
    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    .line 202
    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 203
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x18

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4e
    if-ge v7, v0, :cond_61

    .line 205
    iget-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;

    mul-int/lit8 v8, v7, 0x18

    int-to-long v8, v8

    invoke-virtual {v6, v5, v8, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_61
    add-long/2addr v3, v1

    .line 207
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x48

    add-long/2addr p2, v0

    .line 209
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->radioId:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 169
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 170
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
