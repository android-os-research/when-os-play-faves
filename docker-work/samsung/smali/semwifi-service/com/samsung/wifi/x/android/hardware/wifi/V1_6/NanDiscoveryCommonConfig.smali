.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;
.super Ljava/lang/Object;
.source "NanDiscoveryCommonConfig.java"


# instance fields
.field public configRangingIndications:I

.field public disableDiscoveryTerminationIndication:Z

.field public disableFollowupReceivedIndication:Z

.field public disableMatchExpirationIndication:Z

.field public discoveryCount:B

.field public discoveryMatchIndicator:I

.field public discoveryWindowPeriod:S

.field public distanceEgressCm:S

.field public distanceIngressCm:S

.field public extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public rangingIntervalMsec:I

.field public rangingRequired:Z

.field public rxMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

.field public serviceName:Ljava/util/ArrayList;
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

.field public sessionId:B

.field public ttlSec:S

.field public txMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public useRssiThreshold:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    .line 17
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    .line 24
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 30
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 43
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 84
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 90
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 105
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 116
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 123
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 135
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 136
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 293
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 296
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xc0

    int-to-long v5, v3

    .line 298
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 297
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 303
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;-><init>()V

    mul-int/lit16 v5, v3, 0xc0

    int-to-long v5, v5

    .line 304
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 305
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;",
            ">;)V"
        }
    .end annotation

    .line 404
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 406
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 407
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 408
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 409
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xc0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 411
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    mul-int/lit16 v5, v4, 0xc0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 413
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 416
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

    .line 146
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 149
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    .line 150
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 153
    :cond_1a
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    if-eq v2, v3, :cond_21

    return v1

    .line 156
    :cond_21
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    if-eq v2, v3, :cond_28

    return v1

    .line 159
    :cond_28
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    if-eq v2, v3, :cond_2f

    return v1

    .line 162
    :cond_2f
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 165
    :cond_3a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    if-eq v2, v3, :cond_41

    return v1

    .line 168
    :cond_41
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    return v1

    .line 171
    :cond_4c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    return v1

    .line 174
    :cond_57
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    return v1

    .line 177
    :cond_62
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    return v1

    .line 180
    :cond_6d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    if-eq v2, v3, :cond_74

    return v1

    .line 183
    :cond_74
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    if-eq v2, v3, :cond_7b

    return v1

    .line 186
    :cond_7b
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    if-eq v2, v3, :cond_82

    return v1

    .line 189
    :cond_82
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    if-eq v2, v3, :cond_89

    return v1

    .line 192
    :cond_89
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    return v1

    .line 195
    :cond_94
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    if-eq v2, v3, :cond_9b

    return v1

    .line 198
    :cond_9b
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    if-eq v2, v3, :cond_a2

    return v1

    .line 201
    :cond_a2
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    return v1

    .line 204
    :cond_b5
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    if-eq v2, v3, :cond_bc

    return v1

    .line 207
    :cond_bc
    iget-short p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

    iget-short p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

    if-eq p0, p1, :cond_c3

    return v1

    :cond_c3
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    .line 216
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    .line 217
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 218
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 219
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 220
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 222
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 223
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 224
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 225
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 226
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 228
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 230
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 234
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-short p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 235
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x13

    aput-object p0, v0, v1

    .line 215
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

    .line 314
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    const-wide/16 v4, 0x2

    add-long v4, p3, v4

    .line 315
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 316
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    const-wide/16 v4, 0x6

    add-long v4, p3, v4

    .line 317
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long v8, v6, v4

    .line 319
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 320
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 324
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_4e
    if-ge v9, v8, :cond_63

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 327
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 328
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    :cond_63
    const-wide/16 v8, 0x18

    add-long v8, p3, v8

    .line 331
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 333
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 334
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 338
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_8e
    if-ge v9, v6, :cond_a3

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 341
    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 342
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_8e

    :cond_a3
    const-wide/16 v8, 0x30

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 346
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 347
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 351
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_c4
    if-ge v9, v6, :cond_d9

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 354
    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 355
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_c4

    :cond_d9
    const-wide/16 v8, 0x40

    add-long v8, p3, v8

    add-long v10, v8, v4

    .line 359
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v16, v8, v2

    const/16 v18, 0x1

    move-object/from16 v11, p1

    .line 360
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 364
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v9, v7

    :goto_fa
    if-ge v9, v6, :cond_10f

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 367
    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 368
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_fa

    :cond_10f
    const-wide/16 v8, 0x50

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 372
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v11, v5

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 373
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 377
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_12e
    if-ge v7, v4, :cond_143

    mul-int/lit8 v3, v7, 0x1

    int-to-long v5, v3

    .line 380
    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 381
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_12e

    :cond_143
    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    const-wide/16 v2, 0x61

    add-long v2, p3, v2

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    const-wide/16 v2, 0x62

    add-long v2, p3, v2

    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    const-wide/16 v2, 0x63

    add-long v2, p3, v2

    .line 387
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 388
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    const-wide/16 v3, 0x68

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0xb0

    add-long v2, p3, v2

    .line 389
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    const-wide/16 v2, 0xb4

    add-long v2, p3, v2

    .line 390
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    const-wide/16 v2, 0xb8

    add-long v2, p3, v2

    .line 391
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->configRangingIndications:I

    const-wide/16 v2, 0xbc

    add-long v2, p3, v2

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    const-wide/16 v2, 0xbe

    add-long v2, p3, v2

    .line 393
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v1

    iput-short v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc0

    .line 287
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 288
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sessionId = "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ttlSec = "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .discoveryWindowPeriod = "

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .discoveryCount = "

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceName = "

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .discoveryMatchIndicator = "

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchAlg;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceSpecificInfo = "

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .extendedServiceSpecificInfo = "

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rxMatchFilter = "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .txMatchFilter = "

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .useRssiThreshold = "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .disableDiscoveryTerminationIndication = "

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .disableMatchExpirationIndication = "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .disableFollowupReceivedIndication = "

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .securityConfig = "

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rangingRequired = "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .rangingIntervalMsec = "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .configRangingIndications = "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .distanceIngressCm = "

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .distanceEgressCm = "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-short p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
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

    .line 421
    iget-byte v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->sessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x2

    add-long v4, p2, v4

    .line 422
    iget-short v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 423
    iget-short v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0x6

    add-long v4, p2, v4

    .line 424
    iget-byte v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 426
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    .line 427
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 428
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 429
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_47
    if-ge v12, v4, :cond_5f

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 431
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_47

    :cond_5f
    add-long/2addr v7, v2

    .line 433
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    .line 435
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 437
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long v11, v7, v5

    .line 438
    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 439
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 440
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v12, 0x0

    :goto_89
    if-ge v12, v4, :cond_a0

    mul-int/lit8 v13, v12, 0x1

    int-to-long v13, v13

    .line 442
    iget-object v15, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Byte;

    invoke-virtual {v15}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    :cond_a0
    add-long/2addr v7, v2

    .line 444
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 447
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    add-long v11, v7, v5

    .line 448
    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 449
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 450
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v12, 0x0

    :goto_c1
    if-ge v12, v4, :cond_d8

    mul-int/lit8 v13, v12, 0x1

    int-to-long v13, v13

    .line 452
    iget-object v15, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Byte;

    invoke-virtual {v15}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c1

    :cond_d8
    add-long/2addr v7, v2

    .line 454
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 457
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x40

    add-long v7, p2, v7

    add-long v11, v7, v5

    .line 458
    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 459
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 460
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v13, 0x0

    :goto_f9
    if-ge v13, v4, :cond_110

    mul-int/lit8 v12, v13, 0x1

    int-to-long v14, v12

    .line 462
    iget-object v12, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    invoke-virtual {v11, v14, v15, v12}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_f9

    :cond_110
    add-long/2addr v7, v2

    .line 464
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 467
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x50

    add-long v7, p2, v7

    add-long/2addr v5, v7

    .line 468
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v5, 0x0

    .line 469
    invoke-virtual {v1, v9, v10, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 470
    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x1

    invoke-direct {v6, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v5

    :goto_12f
    if-ge v13, v4, :cond_146

    mul-int/lit8 v5, v13, 0x1

    int-to-long v9, v5

    .line 472
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v6, v9, v10, v5}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_12f

    :cond_146
    add-long/2addr v7, v2

    .line 474
    invoke-virtual {v1, v7, v8, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x60

    add-long v2, p2, v2

    .line 476
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x61

    add-long v2, p2, v2

    .line 477
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x62

    add-long v2, p2, v2

    .line 478
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x63

    add-long v2, p2, v2

    .line 479
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 480
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    const-wide/16 v3, 0x68

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0xb0

    add-long v2, p2, v2

    .line 481
    iget-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0xb4

    add-long v2, p2, v2

    .line 482
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xb8

    add-long v2, p2, v2

    .line 483
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xbc

    add-long v2, p2, v2

    .line 484
    iget-short v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v2, 0xbe

    add-long v2, p2, v2

    .line 485
    iget-short v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putInt16(JS)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 397
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 398
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 399
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
