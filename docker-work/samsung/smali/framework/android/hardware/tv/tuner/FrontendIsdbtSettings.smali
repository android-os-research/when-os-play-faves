.class public Landroid/hardware/tv/tuner/FrontendIsdbtSettings;
.super Ljava/lang/Object;
.source "FrontendIsdbtSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendIsdbtSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidth:I

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist guardInterval:I

.field public blacklist inversion:I

.field public blacklist layerSettings:[Landroid/hardware/tv/tuner/FrontendIsdbtLayerSettings;

.field public blacklist mode:I

.field public blacklist partialReceptionFlag:I

.field public blacklist serviceAreaId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendIsdbtSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->frequency:J

    .line 9
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->endFrequency:J

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->inversion:I

    .line 11
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->bandwidth:I

    .line 12
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->mode:I

    .line 13
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->guardInterval:I

    .line 14
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->serviceAreaId:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->partialReceptionFlag:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 88
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 91
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 90
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 93
    :cond_19
    return v1

    .line 95
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 96
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 98
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->layerSettings:[Landroid/hardware/tv/tuner/FrontendIsdbtLayerSettings;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_122

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 75
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->frequency:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 75
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->endFrequency:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 75
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->inversion:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 75
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->bandwidth:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 75
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->mode:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 75
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->guardInterval:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 75
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->serviceAreaId:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 75
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->partialReceptionFlag:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_120

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 75
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_106
    :try_start_106
    sget-object v2, Landroid/hardware/tv/tuner/FrontendIsdbtLayerSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/tv/tuner/FrontendIsdbtLayerSettings;

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->layerSettings:[Landroid/hardware/tv/tuner/FrontendIsdbtLayerSettings;
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_120

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11a

    .line 77
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    nop

    .line 79
    return-void

    .line 75
    :cond_11a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :catchall_120
    move-exception v2

    goto :goto_12a

    .line 54
    :cond_122
    :try_start_122
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/FrontendIsdbtSettings;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_120

    .line 74
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/FrontendIsdbtSettings;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_12a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_133

    .line 75
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_133
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->frequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->endFrequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->inversion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->bandwidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->mode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->guardInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->serviceAreaId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->partialReceptionFlag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendIsdbtSettings;->layerSettings:[Landroid/hardware/tv/tuner/FrontendIsdbtLayerSettings;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 45
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
