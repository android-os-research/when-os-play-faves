.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;
.super Ljava/lang/Object;
.source "NanMatchInd.java"


# instance fields
.field public addr:[B

.field public discoverySessionId:B

.field public extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public matchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public matchOccuredInBeaconFlag:Z

.field public outOfResourceFlag:Z

.field public peerCipherType:I

.field public peerId:I

.field public peerRequiresRanging:Z

.field public peerRequiresSecurityEnabledInNdp:Z

.field public rangingIndicationType:I

.field public rangingMeasurementInCm:I

.field public rssiValue:B

.field public serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 18
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 45
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 58
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 63
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 70
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 94
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 220
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 225
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 224
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 230
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    .line 231
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 232
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;",
            ">;)V"
        }
    .end annotation

    .line 305
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 308
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 309
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 310
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 312
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 314
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 317
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

    .line 109
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    if-eq v2, v3, :cond_11

    return v1

    .line 112
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    .line 113
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 116
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    if-eq v2, v3, :cond_21

    return v1

    .line 119
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 122
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 125
    :cond_37
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    return v1

    .line 128
    :cond_42
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    return v1

    .line 131
    :cond_4d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    if-eq v2, v3, :cond_54

    return v1

    .line 134
    :cond_54
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    if-eq v2, v3, :cond_5b

    return v1

    .line 137
    :cond_5b
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    if-eq v2, v3, :cond_62

    return v1

    .line 140
    :cond_62
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    if-eq v2, v3, :cond_69

    return v1

    .line 143
    :cond_69
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    if-eq v2, v3, :cond_70

    return v1

    .line 146
    :cond_70
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    if-eq v2, v3, :cond_77

    return v1

    .line 149
    :cond_77
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    if-eq v2, v3, :cond_7e

    return v1

    .line 152
    :cond_7e
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    return v1

    :cond_91
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 161
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 163
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 164
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 165
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 166
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 169
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xd

    aput-object p0, v0, v1

    .line 160
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 241
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 242
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 245
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    const/4 v9, 0x6

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long v8, v6, v4

    .line 249
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 250
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 254
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_44
    if-ge v9, v8, :cond_59

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 257
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 258
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_59
    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 262
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 263
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 267
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_7a
    if-ge v9, v6, :cond_8f

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 270
    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 271
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    :cond_8f
    const-wide/16 v8, 0x30

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 275
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v11, v5

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 276
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 280
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_ae
    if-ge v7, v4, :cond_c3

    mul-int/lit8 v3, v7, 0x1

    int-to-long v5, v3

    .line 283
    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 284
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_ae

    :cond_c3
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    .line 287
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    const-wide/16 v2, 0x41

    add-long v2, p3, v2

    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    const-wide/16 v2, 0x42

    add-long v2, p3, v2

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    const-wide/16 v2, 0x44

    add-long v2, p3, v2

    .line 290
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    .line 291
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    const-wide/16 v2, 0x49

    add-long v2, p3, v2

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    .line 293
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    .line 294
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x58

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 215
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".discoverySessionId = "

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerId = "

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .addr = "

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceSpecificInfo = "

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .extendedServiceSpecificInfo = "

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .matchFilter = "

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .matchOccuredInBeaconFlag = "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .outOfResourceFlag = "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .rssiValue = "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerCipherType = "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .peerRequiresSecurityEnabledInNdp = "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .peerRequiresRanging = "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .rangingMeasurementInCm = "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rangingIndicationType = "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
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

    .line 322
    iget-byte v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 323
    iget v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 326
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    if-eqz v8, :cond_117

    .line 328
    array-length v9, v8

    const/4 v10, 0x6

    if-ne v9, v10, :cond_117

    .line 332
    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 336
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x10

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 337
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 338
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 339
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_44
    if-ge v12, v6, :cond_5c

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 341
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_44

    :cond_5c
    add-long/2addr v7, v2

    .line 343
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 346
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long v11, v7, v4

    .line 347
    invoke-virtual {v1, v11, v12, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 348
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 349
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v13, 0x0

    :goto_7d
    if-ge v13, v6, :cond_94

    mul-int/lit8 v12, v13, 0x1

    int-to-long v14, v12

    .line 351
    iget-object v12, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    invoke-virtual {v11, v14, v15, v12}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7d

    :cond_94
    add-long/2addr v7, v2

    .line 353
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 356
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 357
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v4, 0x0

    .line 358
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 359
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v6, 0x1

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v4

    :goto_b3
    if-ge v13, v6, :cond_ca

    mul-int/lit8 v4, v13, 0x1

    int-to-long v9, v4

    .line 361
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v5, v9, v10, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b3

    :cond_ca
    add-long/2addr v7, v2

    .line 363
    invoke-virtual {v1, v7, v8, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x40

    add-long v2, p2, v2

    .line 365
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x41

    add-long v2, p2, v2

    .line 366
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x42

    add-long v2, p2, v2

    .line 367
    iget-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v2, 0x44

    add-long v2, p2, v2

    .line 368
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x48

    add-long v2, p2, v2

    .line 369
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x49

    add-long v2, p2, v2

    .line 370
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x4c

    add-long v2, p2, v2

    .line 371
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x50

    add-long v2, p2, v2

    .line 372
    iget v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void

    .line 329
    :cond_117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 298
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 299
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
