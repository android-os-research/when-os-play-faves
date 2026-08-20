.class Landroid/location/GnssStatus$GnssSvInfo;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssSvInfo"
.end annotation


# instance fields
.field private final blacklist mAzimuth:F

.field private final blacklist mBasebandCn0DbHz:F

.field private final blacklist mCarrierFrequency:F

.field private final blacklist mCn0DbHz:F

.field private final blacklist mElevation:F

.field private final blacklist mSvidWithFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAzimuth(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBasebandCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierFrequency(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmElevation(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvidWithFlags(Landroid/location/GnssStatus$GnssSvInfo;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    return p0
.end method

.method private constructor blacklist <init>(IIFFFZZZZFZF)V
    .registers 19
    .param p1, "constellationType"    # I
    .param p2, "svid"    # I
    .param p3, "cn0DbHz"    # F
    .param p4, "elevation"    # F
    .param p5, "azimuth"    # F
    .param p6, "hasEphemeris"    # Z
    .param p7, "hasAlmanac"    # Z
    .param p8, "usedInFix"    # Z
    .param p9, "hasCarrierFrequency"    # Z
    .param p10, "carrierFrequency"    # F
    .param p11, "hasBasebandCn0DbHz"    # Z
    .param p12, "basebandCn0DbHz"    # F

    .line 524
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    shl-int/lit8 v1, p2, 0xc

    and-int/lit8 v2, p1, 0xf

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 528
    or-int/2addr v1, p6

    .line 529
    const/4 v2, 0x0

    if-eqz p7, :cond_12

    const/4 v4, 0x2

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    or-int/2addr v1, v4

    .line 530
    if-eqz p8, :cond_18

    const/4 v4, 0x4

    goto :goto_19

    :cond_18
    move v4, v2

    :goto_19
    or-int/2addr v1, v4

    .line 531
    if-eqz p9, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    or-int/2addr v1, v3

    .line 532
    if-eqz p11, :cond_23

    const/16 v2, 0x10

    :cond_23
    or-int/2addr v1, v2

    iput v1, v0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    .line 533
    move v1, p3

    iput v1, v0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    .line 534
    move v2, p4

    iput v2, v0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    .line 535
    move v3, p5

    iput v3, v0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    .line 536
    const/4 v4, 0x0

    if-eqz p9, :cond_35

    move/from16 v5, p10

    goto :goto_36

    :cond_35
    move v5, v4

    :goto_36
    iput v5, v0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    .line 537
    if-eqz p11, :cond_3c

    move/from16 v4, p12

    :cond_3c
    iput v4, v0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    .line 538
    return-void
.end method

.method synthetic constructor blacklist <init>(IIFFFZZZZFZFLandroid/location/GnssStatus$GnssSvInfo-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZF)V

    return-void
.end method
