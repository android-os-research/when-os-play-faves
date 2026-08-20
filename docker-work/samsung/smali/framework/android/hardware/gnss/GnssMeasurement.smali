.class public Landroid/hardware/gnss/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final blacklist ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final blacklist ADR_STATE_RESET:I = 0x2

.field public static final blacklist ADR_STATE_UNKNOWN:I = 0x0

.field public static final blacklist ADR_STATE_VALID:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final blacklist HAS_CARRIER_CYCLES:I = 0x400

.field public static final blacklist HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final blacklist HAS_CARRIER_PHASE:I = 0x800

.field public static final blacklist HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final blacklist HAS_CORRELATION_VECTOR:I = 0x200000

.field public static final blacklist HAS_FULL_ISB:I = 0x10000

.field public static final blacklist HAS_FULL_ISB_UNCERTAINTY:I = 0x20000

.field public static final blacklist HAS_SATELLITE_ISB:I = 0x40000

.field public static final blacklist HAS_SATELLITE_ISB_UNCERTAINTY:I = 0x80000

.field public static final blacklist HAS_SATELLITE_PVT:I = 0x100000

.field public static final blacklist HAS_SNR:I = 0x1

.field public static final blacklist STATE_2ND_CODE_LOCK:I = 0x10000

.field public static final blacklist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final blacklist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final blacklist STATE_BIT_SYNC:I = 0x2

.field public static final blacklist STATE_CODE_LOCK:I = 0x1

.field public static final blacklist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final blacklist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final blacklist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final blacklist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final blacklist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final blacklist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final blacklist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final blacklist STATE_SBAS_SYNC:I = 0x2000

.field public static final blacklist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final blacklist STATE_SYMBOL_SYNC:I = 0x20

.field public static final blacklist STATE_TOW_DECODED:I = 0x8

.field public static final blacklist STATE_TOW_KNOWN:I = 0x4000

.field public static final blacklist STATE_UNKNOWN:I


# instance fields
.field public blacklist accumulatedDeltaRangeM:D

.field public blacklist accumulatedDeltaRangeState:I

.field public blacklist accumulatedDeltaRangeUncertaintyM:D

.field public blacklist agcLevelDb:D

.field public blacklist antennaCN0DbHz:D

.field public blacklist basebandCN0DbHz:D

.field public blacklist carrierCycles:J

.field public blacklist carrierPhase:D

.field public blacklist carrierPhaseUncertainty:D

.field public blacklist correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

.field public blacklist flags:I

.field public blacklist fullInterSignalBiasNs:D

.field public blacklist fullInterSignalBiasUncertaintyNs:D

.field public blacklist multipathIndicator:I

.field public blacklist pseudorangeRateMps:D

.field public blacklist pseudorangeRateUncertaintyMps:D

.field public blacklist receivedSvTimeInNs:J

.field public blacklist receivedSvTimeUncertaintyInNs:J

.field public blacklist satelliteInterSignalBiasNs:D

.field public blacklist satelliteInterSignalBiasUncertaintyNs:D

.field public blacklist satellitePvt:Landroid/hardware/gnss/SatellitePvt;

.field public blacklist signalType:Landroid/hardware/gnss/GnssSignalType;

.field public blacklist snrDb:D

.field public blacklist state:I

.field public blacklist svid:I

.field public blacklist timeOffsetNs:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/hardware/gnss/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    .line 9
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    .line 11
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    .line 12
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    .line 13
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    .line 14
    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 15
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    .line 16
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    .line 17
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    .line 18
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 19
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    .line 20
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 21
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 22
    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    .line 23
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    .line 24
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    .line 25
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    .line 26
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    .line 27
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    .line 28
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    .line 29
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 30
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 31
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 193
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 196
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 195
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 198
    :cond_19
    return v1

    .line 200
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 201
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 203
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 187
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 188
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 189
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 86
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_306

    .line 89
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 143
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 143
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 143
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_5e
    :try_start_5e
    sget-object v2, Landroid/hardware/gnss/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssSignalType;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 143
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 143
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 143
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 143
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 143
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 143
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 143
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 143
    :cond_13c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15e

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_158

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 143
    :cond_158
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_15e
    :try_start_15e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17a

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_174

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 143
    :cond_174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_17a
    :try_start_17a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_184
    .catchall {:try_start_17a .. :try_end_184} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_196

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_190

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void

    .line 143
    :cond_190
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_196
    :try_start_196
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a0
    .catchall {:try_start_196 .. :try_end_1a0} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b2

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ac

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 143
    :cond_1ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_1b2
    :try_start_1b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1bc
    .catchall {:try_start_1b2 .. :try_end_1bc} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ce

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c8

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    return-void

    .line 143
    :cond_1c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_1ce
    :try_start_1ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d8
    .catchall {:try_start_1ce .. :try_end_1d8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ea

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e4

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    return-void

    .line 143
    :cond_1e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_1ea
    :try_start_1ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1f4
    .catchall {:try_start_1ea .. :try_end_1f4} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_206

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_200

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    return-void

    .line 143
    :cond_200
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_206
    :try_start_206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_210
    .catchall {:try_start_206 .. :try_end_210} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_222

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_21c

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    return-void

    .line 143
    :cond_21c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_222
    :try_start_222
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_22c
    .catchall {:try_start_222 .. :try_end_22c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23e

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_238

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    return-void

    .line 143
    :cond_238
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_23e
    :try_start_23e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_248
    .catchall {:try_start_23e .. :try_end_248} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25a

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_254

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    return-void

    .line 143
    :cond_254
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_25a
    :try_start_25a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_264
    .catchall {:try_start_25a .. :try_end_264} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_276

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_270

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    return-void

    .line 143
    :cond_270
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_276
    :try_start_276
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_280
    .catchall {:try_start_276 .. :try_end_280} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_292

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_28c

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    return-void

    .line 143
    :cond_28c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_292
    :try_start_292
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_29c
    .catchall {:try_start_292 .. :try_end_29c} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2ae

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2a8

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    return-void

    .line 143
    :cond_2a8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_2ae
    :try_start_2ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2b8
    .catchall {:try_start_2ae .. :try_end_2b8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2ca

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2c4

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    return-void

    .line 143
    :cond_2c4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_2ca
    :try_start_2ca
    sget-object v2, Landroid/hardware/gnss/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatellitePvt;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2d8
    .catchall {:try_start_2ca .. :try_end_2d8} :catchall_304

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2ea

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2e4

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 139
    return-void

    .line 143
    :cond_2e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_2ea
    :try_start_2ea
    sget-object v2, Landroid/hardware/gnss/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/CorrelationVector;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;
    :try_end_2f4
    .catchall {:try_start_2ea .. :try_end_2f4} :catchall_304

    .line 142
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2fe

    .line 145
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    nop

    .line 147
    return-void

    .line 143
    :cond_2fe
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :catchall_304
    move-exception v2

    goto :goto_30e

    .line 88
    :cond_306
    :try_start_306
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/GnssMeasurement;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_30e
    .catchall {:try_start_306 .. :try_end_30e} :catchall_304

    .line 142
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/GnssMeasurement;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_30e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_317

    .line 143
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_317
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 55
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 62
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 65
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 66
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 68
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 72
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 75
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 76
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 79
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void
.end method
