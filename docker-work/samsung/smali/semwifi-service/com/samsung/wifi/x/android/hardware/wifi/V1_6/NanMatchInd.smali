.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;
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

.field public rangingMeasurementInMm:I

.field public rssiValue:B

.field public scid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 18
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 45
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    .line 58
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    .line 63
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    .line 70
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    .line 94
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 233
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    .line 238
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 237
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 243
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;-><init>()V

    mul-int/lit8 v5, v3, 0x68

    int-to-long v5, v5

    .line 244
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 245
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;",
            ">;)V"
        }
    .end annotation

    .line 331
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 334
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 335
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 336
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 338
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;

    mul-int/lit8 v5, v4, 0x68

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 340
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 343
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

    .line 116
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;

    if-eq v2, v3, :cond_11

    return v1

    .line 119
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;

    .line 120
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 123
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    if-eq v2, v3, :cond_21

    return v1

    .line 126
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 129
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 132
    :cond_37
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    return v1

    .line 135
    :cond_42
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    return v1

    .line 138
    :cond_4d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    if-eq v2, v3, :cond_54

    return v1

    .line 141
    :cond_54
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    if-eq v2, v3, :cond_5b

    return v1

    .line 144
    :cond_5b
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    if-eq v2, v3, :cond_62

    return v1

    .line 147
    :cond_62
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    if-eq v2, v3, :cond_69

    return v1

    .line 150
    :cond_69
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    if-eq v2, v3, :cond_70

    return v1

    .line 153
    :cond_70
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    if-eq v2, v3, :cond_77

    return v1

    .line 156
    :cond_77
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    if-eq v2, v3, :cond_7e

    return v1

    .line 159
    :cond_7e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingIndicationType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingIndicationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    return v1

    .line 162
    :cond_91
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    return v1

    :cond_9c
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    .line 171
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    .line 173
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 174
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 175
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 176
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    .line 178
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    .line 179
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingIndicationType:I

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    .line 185
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xe

    aput-object p0, v0, v1

    .line 170
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

    .line 254
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 255
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 258
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    const/4 v9, 0x6

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long v8, v6, v4

    .line 262
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 263
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 267
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_44
    if-ge v9, v8, :cond_59

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 270
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 271
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_59
    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 275
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 276
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 280
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_7a
    if-ge v9, v6, :cond_8f

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 283
    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 284
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    :cond_8f
    const-wide/16 v8, 0x30

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 288
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 289
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 293
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_b0
    if-ge v9, v6, :cond_c5

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 296
    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 297
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b0

    :cond_c5
    const-wide/16 v8, 0x40

    add-long v8, p3, v8

    .line 300
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    const-wide/16 v8, 0x41

    add-long v8, p3, v8

    .line 301
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    const-wide/16 v8, 0x42

    add-long v8, p3, v8

    .line 302
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    iput-byte v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    const-wide/16 v8, 0x44

    add-long v8, p3, v8

    .line 303
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    const-wide/16 v8, 0x48

    add-long v8, p3, v8

    .line 304
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    const-wide/16 v8, 0x49

    add-long v8, p3, v8

    .line 305
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    const-wide/16 v8, 0x4c

    add-long v8, p3, v8

    .line 306
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    const-wide/16 v8, 0x50

    add-long v8, p3, v8

    .line 307
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingIndicationType:I

    const-wide/16 v8, 0x58

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 309
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v11, v5

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 310
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 314
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_134
    if-ge v7, v4, :cond_149

    mul-int/lit8 v2, v7, 0x1

    int-to-long v2, v2

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    .line 318
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_134

    :cond_149
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x68

    .line 227
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 228
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".discoverySessionId = "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerId = "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .addr = "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceSpecificInfo = "

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .extendedServiceSpecificInfo = "

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .matchFilter = "

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .matchOccuredInBeaconFlag = "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .outOfResourceFlag = "

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .rssiValue = "

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerCipherType = "

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .peerRequiresSecurityEnabledInNdp = "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .peerRequiresRanging = "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .rangingMeasurementInMm = "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rangingIndicationType = "

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingIndicationType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .scid = "

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
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

    .line 348
    iget-byte v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 349
    iget v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 352
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->addr:[B

    if-eqz v8, :cond_14f

    .line 354
    array-length v9, v8

    const/4 v10, 0x6

    if-ne v9, v10, :cond_14f

    .line 358
    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 362
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x10

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 363
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 364
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 365
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_44
    if-ge v12, v6, :cond_5c

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 367
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

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

    .line 369
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 372
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long v11, v7, v4

    .line 373
    invoke-virtual {v1, v11, v12, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 374
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 375
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v12, 0x0

    :goto_7d
    if-ge v12, v6, :cond_94

    mul-int/lit8 v13, v12, 0x1

    int-to-long v13, v13

    .line 377
    iget-object v15, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Byte;

    invoke-virtual {v15}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7d

    :cond_94
    add-long/2addr v7, v2

    .line 379
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 382
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    add-long v11, v7, v4

    .line 383
    invoke-virtual {v1, v11, v12, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 384
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 385
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v13, 0x0

    :goto_b5
    if-ge v13, v6, :cond_cc

    mul-int/lit8 v12, v13, 0x1

    int-to-long v14, v12

    .line 387
    iget-object v12, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    invoke-virtual {v11, v14, v15, v12}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b5

    :cond_cc
    add-long/2addr v7, v2

    .line 389
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v6, 0x40

    add-long v6, p2, v6

    .line 391
    iget-boolean v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x41

    add-long v6, p2, v6

    .line 392
    iget-boolean v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x42

    add-long v6, p2, v6

    .line 393
    iget-byte v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rssiValue:B

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x44

    add-long v6, p2, v6

    .line 394
    iget v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerCipherType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x48

    add-long v6, p2, v6

    .line 395
    iget-boolean v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x49

    add-long v6, p2, v6

    .line 396
    iget-boolean v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x4c

    add-long v6, p2, v6

    .line 397
    iget v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingMeasurementInMm:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x50

    add-long v6, p2, v6

    .line 398
    iget v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->rangingIndicationType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 400
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x58

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 401
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v4, 0x0

    .line 402
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 403
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v6, 0x1

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v4

    :goto_133
    if-ge v13, v6, :cond_14a

    mul-int/lit8 v4, v13, 0x1

    int-to-long v9, v4

    .line 405
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->scid:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v5, v9, v10, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_133

    :cond_14a
    add-long/2addr v7, v2

    .line 407
    invoke-virtual {v1, v7, v8, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void

    .line 355
    :cond_14f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 324
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 325
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
