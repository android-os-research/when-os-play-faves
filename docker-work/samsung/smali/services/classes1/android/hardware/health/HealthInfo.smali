.class public Landroid/hardware/health/HealthInfo;
.super Ljava/lang/Object;
.source "HealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BATTERY_CHARGE_TIME_TO_FULL_NOW_SECONDS_UNSUPPORTED:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/health/HealthInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryCapacityLevel:I

.field public batteryChargeCounterUah:I

.field public batteryChargeTimeToFullNowSeconds:J

.field public batteryCurrentAverageMicroamps:I

.field public batteryCurrentMicroamps:I

.field public batteryCycleCount:I

.field public batteryFullChargeDesignCapacityUah:I

.field public batteryFullChargeUah:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperatureTenthsCelsius:I

.field public batteryVoltageMillivolts:I

.field public chargerAcOnline:Z

.field public chargerDockOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public diskStats:[Landroid/hardware/health/DiskStats;

.field public maxChargingCurrentMicroamps:I

.field public maxChargingVoltageMicrovolts:I

.field public storageInfos:[Landroid/hardware/health/StorageInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/hardware/health/HealthInfo$1;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/health/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 8
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 9
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 10
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 11
    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 12
    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 15
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 16
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 17
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 18
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 19
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 20
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 21
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 22
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 24
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 29
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    invoke-virtual {p0, v0}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 140
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    invoke-virtual {p0, v1}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 145
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 147
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 148
    invoke-virtual {p0, v3}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 152
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 153
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_24e

    .line 82
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 130
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 130
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 130
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 130
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 130
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 130
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 130
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 130
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    goto/16 :goto_1a

    .line 130
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    goto/16 :goto_1a

    .line 130
    :cond_f2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_110

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10a

    goto/16 :goto_1a

    .line 130
    :cond_10a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_110
    :try_start_110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11a
    .catchall {:try_start_110 .. :try_end_11a} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_128

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_122

    goto/16 :goto_1a

    .line 130
    :cond_122
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_128
    :try_start_128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_140

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13a

    goto/16 :goto_1a

    .line 130
    :cond_13a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_140
    :try_start_140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14a
    .catchall {:try_start_140 .. :try_end_14a} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_158

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_152

    goto/16 :goto_1a

    .line 130
    :cond_152
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_158
    :try_start_158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_162
    .catchall {:try_start_158 .. :try_end_162} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_170

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16a

    goto/16 :goto_1a

    .line 130
    :cond_16a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_170
    :try_start_170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17a
    .catchall {:try_start_170 .. :try_end_17a} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_188

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_182

    goto/16 :goto_1a

    .line 130
    :cond_182
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_188
    :try_start_188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_192
    .catchall {:try_start_188 .. :try_end_192} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_19a

    goto/16 :goto_1a

    .line 130
    :cond_19a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_1a0
    :try_start_1a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1aa
    .catchall {:try_start_1a0 .. :try_end_1aa} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b2

    goto/16 :goto_1a

    .line 130
    :cond_1b2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_1b8
    :try_start_1b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c2
    .catchall {:try_start_1b8 .. :try_end_1c2} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ca

    goto/16 :goto_1a

    .line 130
    :cond_1ca
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_1d0
    :try_start_1d0
    sget-object v2, Landroid/hardware/health/DiskStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/health/DiskStats;

    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1de
    .catchall {:try_start_1d0 .. :try_end_1de} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ec

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e6

    goto/16 :goto_1a

    .line 130
    :cond_1e6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1ec
    :try_start_1ec
    sget-object v2, Landroid/hardware/health/StorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/health/StorageInfo;

    iput-object v2, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1fa
    .catchall {:try_start_1ec .. :try_end_1fa} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_208

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_202

    goto/16 :goto_1a

    .line 130
    :cond_202
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_208
    :try_start_208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_212
    .catchall {:try_start_208 .. :try_end_212} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_220

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_21a

    goto/16 :goto_1a

    .line 130
    :cond_21a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_220
    :try_start_220
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_22a
    .catchall {:try_start_220 .. :try_end_22a} :catchall_24c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_238

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_232

    goto/16 :goto_1a

    .line 130
    :cond_232
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_238
    :try_start_238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I
    :try_end_23e
    .catchall {:try_start_238 .. :try_end_23e} :catchall_24c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_246

    add-int/2addr v0, v1

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 130
    :cond_246
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_24c
    move-exception p0

    goto :goto_256

    .line 81
    :cond_24e
    :try_start_24e
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_256
    .catchall {:try_start_24e .. :try_end_256} :catchall_24c

    :goto_256
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_25f

    .line 130
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25f
    add-int/2addr v0, v1

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 51
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    iget v1, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 67
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 68
    iget p2, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
