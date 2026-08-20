.class public final Landroid/hardware/health/V1_0/HealthInfo;
.super Ljava/lang/Object;
.source "HealthInfo.java"


# instance fields
.field public batteryChargeCounter:I

.field public batteryCurrent:I

.field public batteryCycleCount:I

.field public batteryFullCharge:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 16
    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 20
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 24
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 25
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 26
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 30
    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 34
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 42
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 46
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 50
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 54
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 58
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 62
    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

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
            "Landroid/hardware/health/V1_0/HealthInfo;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 199
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 202
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 204
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 203
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 209
    new-instance v4, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v4}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    .line 210
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/health/V1_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 211
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
            "Landroid/hardware/health/V1_0/HealthInfo;",
            ">;)V"
        }
    .end annotation

    .line 252
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 255
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 256
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 257
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 259
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/health/V1_0/HealthInfo;

    mul-int/lit8 v5, v4, 0x48

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/health/V1_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 261
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 264
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

    .line 76
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V1_0/HealthInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 79
    :cond_11
    check-cast p1, Landroid/hardware/health/V1_0/HealthInfo;

    .line 80
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 83
    :cond_1a
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eq v2, v3, :cond_21

    return v1

    .line 86
    :cond_21
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eq v2, v3, :cond_28

    return v1

    .line 89
    :cond_28
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    if-eq v2, v3, :cond_2f

    return v1

    .line 92
    :cond_2f
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    if-eq v2, v3, :cond_36

    return v1

    .line 95
    :cond_36
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v2, v3, :cond_3d

    return v1

    .line 98
    :cond_3d
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    if-eq v2, v3, :cond_44

    return v1

    .line 101
    :cond_44
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-eq v2, v3, :cond_4b

    return v1

    .line 104
    :cond_4b
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v2, v3, :cond_52

    return v1

    .line 107
    :cond_52
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    if-eq v2, v3, :cond_59

    return v1

    .line 110
    :cond_59
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    if-eq v2, v3, :cond_60

    return v1

    .line 113
    :cond_60
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    if-eq v2, v3, :cond_67

    return v1

    .line 116
    :cond_67
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    if-eq v2, v3, :cond_6e

    return v1

    .line 119
    :cond_6e
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    if-eq v2, v3, :cond_75

    return v1

    .line 122
    :cond_75
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    if-eq v2, v3, :cond_7c

    return v1

    .line 125
    :cond_7c
    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    return v1

    :cond_87
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 134
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 149
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xf

    aput-object p0, v0, v1

    .line 133
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 15

    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    .line 220
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const-wide/16 v2, 0x1

    add-long/2addr v2, p3

    .line 221
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    const-wide/16 v2, 0x2

    add-long/2addr v2, p3

    .line 222
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    const-wide/16 v2, 0x4

    add-long/2addr v2, p3

    .line 223
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    .line 224
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-wide/16 v2, 0xc

    add-long/2addr v2, p3

    .line 225
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-wide/16 v2, 0x10

    add-long/2addr v2, p3

    .line 226
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-wide/16 v2, 0x14

    add-long/2addr v2, p3

    .line 227
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-wide/16 v2, 0x18

    add-long/2addr v2, p3

    .line 228
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-wide/16 v2, 0x1c

    add-long/2addr v2, p3

    .line 229
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-wide/16 v2, 0x20

    add-long/2addr v2, p3

    .line 230
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-wide/16 v2, 0x24

    add-long/2addr v2, p3

    .line 231
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-wide/16 v2, 0x28

    add-long/2addr v2, p3

    .line 232
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    const-wide/16 v2, 0x2c

    add-long/2addr v2, p3

    .line 233
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    const-wide/16 v2, 0x30

    add-long/2addr v2, p3

    .line 234
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-wide/16 v2, 0x38

    add-long/2addr p3, v2

    .line 235
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v3, p0

    .line 239
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, p3, v0

    const/4 v9, 0x0

    move-object v2, p1

    .line 237
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x48

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 194
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V1_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".chargerAcOnline = "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerUsbOnline = "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerWirelessOnline = "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .maxChargingCurrent = "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxChargingVoltage = "

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryStatus = "

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-static {v1}, Landroid/hardware/health/V1_0/BatteryStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryHealth = "

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v1}, Landroid/hardware/health/V1_0/BatteryHealth;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryPresent = "

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryLevel = "

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryVoltage = "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryTemperature = "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrent = "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCycleCount = "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryFullCharge = "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryChargeCounter = "

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryTechnology = "

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 269
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 270
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 271
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 272
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 273
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 274
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 275
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 276
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 277
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 278
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 279
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 280
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 281
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 282
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 283
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    .line 284
    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 245
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 246
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V1_0/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
