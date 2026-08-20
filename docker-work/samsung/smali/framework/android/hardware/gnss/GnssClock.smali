.class public Landroid/hardware/gnss/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_BIAS:I = 0x8

.field public static final blacklist HAS_BIAS_UNCERTAINTY:I = 0x10

.field public static final blacklist HAS_DRIFT:I = 0x20

.field public static final blacklist HAS_DRIFT_UNCERTAINTY:I = 0x40

.field public static final blacklist HAS_FULL_BIAS:I = 0x4

.field public static final blacklist HAS_LEAP_SECOND:I = 0x1

.field public static final blacklist HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field public blacklist biasNs:D

.field public blacklist biasUncertaintyNs:D

.field public blacklist driftNsps:D

.field public blacklist driftUncertaintyNsps:D

.field public blacklist fullBiasNs:J

.field public blacklist gnssClockFlags:I

.field public blacklist hwClockDiscontinuityCount:I

.field public blacklist leapSecond:I

.field public blacklist referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;

.field public blacklist timeNs:J

.field public blacklist timeUncertaintyNs:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/gnss/GnssClock$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssClock$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssClock;->gnssClockFlags:I

    .line 9
    iput v0, p0, Landroid/hardware/gnss/GnssClock;->leapSecond:I

    .line 10
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/GnssClock;->timeNs:J

    .line 11
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->timeUncertaintyNs:D

    .line 12
    iput-wide v1, p0, Landroid/hardware/gnss/GnssClock;->fullBiasNs:J

    .line 13
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->biasNs:D

    .line 14
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->biasUncertaintyNs:D

    .line 15
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->driftNsps:D

    .line 16
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->driftUncertaintyNsps:D

    .line 17
    iput v0, p0, Landroid/hardware/gnss/GnssClock;->hwClockDiscontinuityCount:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 103
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 106
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssClock;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 56
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_15a

    .line 59
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 83
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssClock;->gnssClockFlags:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 83
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssClock;->leapSecond:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 83
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->timeNs:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 83
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->timeUncertaintyNs:D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 83
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->fullBiasNs:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 83
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->biasNs:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 83
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->biasUncertaintyNs:D

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 83
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->driftNsps:D

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 83
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->driftUncertaintyNsps:D

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 83
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssClock;->hwClockDiscontinuityCount:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_158

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 83
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_13e
    :try_start_13e
    sget-object v2, Landroid/hardware/gnss/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssSignalType;

    iput-object v2, p0, Landroid/hardware/gnss/GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_158

    .line 82
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_152

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    nop

    .line 87
    return-void

    .line 83
    :cond_152
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :catchall_158
    move-exception v2

    goto :goto_162

    .line 58
    :cond_15a
    :try_start_15a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/GnssClock;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_162
    .catchall {:try_start_15a .. :try_end_162} :catchall_158

    .line 82
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/GnssClock;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_162
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_16b

    .line 83
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_16b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Landroid/hardware/gnss/GnssClock;->gnssClockFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/gnss/GnssClock;->leapSecond:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->timeNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->timeUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 41
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->fullBiasNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->biasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->biasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->driftNsps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->driftUncertaintyNsps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget v1, p0, Landroid/hardware/gnss/GnssClock;->hwClockDiscontinuityCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/hardware/gnss/GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 49
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void
.end method
