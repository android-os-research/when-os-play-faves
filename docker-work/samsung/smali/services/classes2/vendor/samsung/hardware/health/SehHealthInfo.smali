.class public Lvendor/samsung/hardware/health/SehHealthInfo;
.super Ljava/lang/Object;
.source "SehHealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/samsung/hardware/health/SehHealthInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aospHealthInfo:Landroid/hardware/health/HealthInfo;

.field public batteryChargeType:I

.field public batteryCurrentEvent:I

.field public batteryCurrentNow:I

.field public batteryEvent:I

.field public batteryHighVoltageCharger:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public chargerOtgOnline:Z

.field public chargerPogoOnline:Z

.field public wirelessPowerSharingTxEvent:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Lvendor/samsung/hardware/health/SehHealthInfo$1;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/SehHealthInfo$1;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/health/SehHealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 22
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 30
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 32
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 34
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 43
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 71
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 76
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 78
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 114
    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 187
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/health/SehHealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 192
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 193
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_12a

    .line 155
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 179
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/health/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/health/HealthInfo;

    iput-object v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 179
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 179
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_68

    goto :goto_1a

    .line 179
    :cond_68
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_6e
    :try_start_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_85

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7f

    goto :goto_1a

    .line 179
    :cond_7f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_85
    :try_start_85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    goto :goto_1a

    .line 179
    :cond_96
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_9c
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    goto/16 :goto_1a

    .line 179
    :cond_ae
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cc

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c6

    goto/16 :goto_1a

    .line 179
    :cond_c6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_cc
    :try_start_cc
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_de

    goto/16 :goto_1a

    .line 179
    :cond_de
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_e4
    :try_start_e4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fc

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f6

    goto/16 :goto_1a

    .line 179
    :cond_f6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_fc
    :try_start_fc
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_106
    .catchall {:try_start_fc .. :try_end_106} :catchall_128

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_114

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10e

    goto/16 :goto_1a

    .line 179
    :cond_10e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_114
    :try_start_114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I
    :try_end_11a
    .catchall {:try_start_114 .. :try_end_11a} :catchall_128

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_122

    add-int/2addr v0, v1

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 179
    :cond_122
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_128
    move-exception p0

    goto :goto_132

    .line 154
    :cond_12a
    :try_start_12a
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_132
    .catchall {:try_start_12a .. :try_end_132} :catchall_128

    :goto_132
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_13b

    .line 179
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13b
    add-int/2addr v0, v1

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 182
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v1, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 134
    iget p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-boolean p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 138
    iget-boolean p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    iget p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean p2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 143
    iget p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 146
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
