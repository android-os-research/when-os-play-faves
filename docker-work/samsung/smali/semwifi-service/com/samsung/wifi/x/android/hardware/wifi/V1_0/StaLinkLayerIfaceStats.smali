.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;
.super Ljava/lang/Object;
.source "StaLinkLayerIfaceStats.java"


# instance fields
.field public avgRssiMgmt:I

.field public beaconRx:I

.field public wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 16
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 20
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 24
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 28
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 101
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 106
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 105
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 111
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;-><init>()V

    mul-int/lit16 v5, v3, 0x88

    int-to-long v5, v5

    .line 112
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;",
            ">;)V"
        }
    .end annotation

    .line 138
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 141
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 142
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 143
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x88

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 145
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    mul-int/lit16 v5, v4, 0x88

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 147
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 150
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

    .line 38
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 41
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 42
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 45
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    if-eq v2, v3, :cond_21

    return v1

    .line 48
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 51
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 54
    :cond_37
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    return v1

    .line 57
    :cond_42
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    return v1

    :cond_4d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 69
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 70
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    .line 71
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 122
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 123
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    .line 124
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 125
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 126
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 127
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v0, 0x68

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x88

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 96
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".beaconRx = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .avgRssiMgmt = "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeBePktStats = "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeBkPktStats = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeViPktStats = "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeVoPktStats = "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 155
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 156
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 158
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 160
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v0, 0x68

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 131
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 132
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
