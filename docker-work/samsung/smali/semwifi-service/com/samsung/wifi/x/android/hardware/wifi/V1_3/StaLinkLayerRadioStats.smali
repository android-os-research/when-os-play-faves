.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;
.super Ljava/lang/Object;
.source "StaLinkLayerRadioStats.java"


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

.field public channelStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;",
            ">;"
        }
    .end annotation
.end field

.field public onTimeInMsForBgScan:I

.field public onTimeInMsForHs20Scan:I

.field public onTimeInMsForNanScan:I

.field public onTimeInMsForPnoScan:I

.field public onTimeInMsForRoamScan:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 24
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 29
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 112
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 117
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 116
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 122
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;-><init>()V

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    .line 123
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 124
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;",
            ">;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 165
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 167
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 169
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    mul-int/lit8 v5, v4, 0x48

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 171
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 174
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

    .line 43
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 46
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;

    .line 47
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 50
    :cond_1e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    if-eq v2, v3, :cond_25

    return v1

    .line 53
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 56
    :cond_2c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    if-eq v2, v3, :cond_33

    return v1

    .line 59
    :cond_33
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    if-eq v2, v3, :cond_3a

    return v1

    .line 62
    :cond_3a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    if-eq v2, v3, :cond_41

    return v1

    .line 65
    :cond_41
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

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

    .line 73
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 74
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    .line 80
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 133
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x20

    add-long v5, p3, v5

    .line 134
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    const-wide/16 v5, 0x24

    add-long v5, p3, v5

    .line 135
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    const-wide/16 v5, 0x28

    add-long v5, p3, v5

    .line 136
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    const-wide/16 v5, 0x2c

    add-long v5, p3, v5

    .line 137
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    const-wide/16 v5, 0x30

    add-long v5, p3, v5

    .line 138
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    const-wide/16 v5, 0x38

    add-long v5, p3, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 140
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x18

    int-to-long v7, v2

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v5, v3

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    .line 141
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 145
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_66
    if-ge v2, v10, :cond_7b

    .line 147
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;-><init>()V

    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    .line 148
    invoke-virtual {v3, v9, v1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 149
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_7b
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x48

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 107
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V1_0 = "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForNanScan = "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForBgScan = "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForRoamScan = "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForPnoScan = "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .onTimeInMsForHs20Scan = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .channelStats = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 179
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x20

    add-long/2addr v3, p2

    .line 180
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForNanScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x24

    add-long/2addr v3, p2

    .line 181
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForBgScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    .line 182
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForRoamScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x2c

    add-long/2addr v3, p2

    .line 183
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForPnoScan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x30

    add-long/2addr v3, p2

    .line 184
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->onTimeInMsForHs20Scan:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 186
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x38

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 187
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 188
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 189
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4e
    if-ge v5, v0, :cond_61

    .line 191
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->channelStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;

    mul-int/lit8 v6, v5, 0x18

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/WifiChannelStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_61
    add-long/2addr p2, v1

    .line 193
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 155
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 156
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerRadioStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
