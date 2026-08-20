.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;
.super Ljava/lang/Object;
.source "NanBandSpecificConfig.java"


# instance fields
.field public discoveryWindowIntervalVal:B

.field public dwellTimeMs:B

.field public rssiClose:B

.field public rssiCloseProximity:B

.field public rssiMiddle:B

.field public scanPeriodSec:S

.field public validDiscoveryWindowIntervalVal:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 10
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 17
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 22
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 27
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 39
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 40
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 119
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 124
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 123
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 129
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x8

    int-to-long v5, v5

    .line 130
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 131
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;",
            ">;)V"
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 160
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 161
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 162
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 164
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    mul-int/lit8 v5, v4, 0x8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 166
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 169
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

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 53
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    .line 54
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 57
    :cond_1a
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    if-eq v2, v3, :cond_21

    return v1

    .line 60
    :cond_21
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    if-eq v2, v3, :cond_28

    return v1

    .line 63
    :cond_28
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    if-eq v2, v3, :cond_2f

    return v1

    .line 66
    :cond_2f
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    if-eq v2, v3, :cond_36

    return v1

    .line 69
    :cond_36
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    if-eq v2, v3, :cond_3d

    return v1

    .line 72
    :cond_3d
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    iget-byte p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    if-eq p0, p1, :cond_44

    return v1

    :cond_44
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    .line 81
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    .line 82
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 83
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    .line 84
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    .line 85
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 87
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 80
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 140
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 141
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    .line 142
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 144
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    .line 145
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    const-wide/16 v0, 0x7

    add-long/2addr p3, v0

    .line 146
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x8

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rssiClose = "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rssiMiddle = "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rssiCloseProximity = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .dwellTimeMs = "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .scanPeriodSec = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .validDiscoveryWindowIntervalVal = "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .discoveryWindowIntervalVal = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 174
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 175
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 176
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    .line 177
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 178
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    .line 179
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x7

    add-long/2addr p2, v0

    .line 180
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8(JB)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 150
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
