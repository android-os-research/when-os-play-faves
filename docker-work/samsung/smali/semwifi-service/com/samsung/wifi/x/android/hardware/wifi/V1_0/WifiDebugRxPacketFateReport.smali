.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
.super Ljava/lang/Object;
.source "WifiDebugRxPacketFateReport.java"


# instance fields
.field public fate:I

.field public frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    .line 6
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 55
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 60
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 59
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 65
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;-><init>()V

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    .line 66
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 91
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 93
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 95
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 97
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 100
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

    .line 16
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    if-eq v2, v3, :cond_11

    return v1

    .line 19
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    .line 20
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 23
    :cond_1a
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    .line 33
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 76
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    .line 77
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x38

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fate = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFate;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .frameInfo = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 105
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 106
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 81
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
