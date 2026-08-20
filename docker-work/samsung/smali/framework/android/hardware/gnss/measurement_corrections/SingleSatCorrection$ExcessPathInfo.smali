.class public Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
.super Ljava/lang/Object;
.source "SingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessPathInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXCESS_PATH_INFO_HAS_ATTENUATION:I = 0x8

.field public static final blacklist EXCESS_PATH_INFO_HAS_EXCESS_PATH_LENGTH:I = 0x1

.field public static final blacklist EXCESS_PATH_INFO_HAS_EXCESS_PATH_LENGTH_UNC:I = 0x2

.field public static final blacklist EXCESS_PATH_INFO_HAS_REFLECTING_PLANE:I = 0x4


# instance fields
.field public blacklist attenuationDb:F

.field public blacklist excessPathInfoFlags:I

.field public blacklist excessPathLengthMeters:F

.field public blacklist excessPathLengthUncertaintyMeters:F

.field public blacklist reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathInfoFlags:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthMeters:F

    .line 108
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthUncertaintyMeters:F

    .line 110
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->attenuationDb:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 174
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 175
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 177
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 170
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 142
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b2

    .line 145
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 156
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 159
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    return-void

    .line 157
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathInfoFlags:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 156
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 159
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 147
    return-void

    .line 157
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthMeters:F

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 156
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 159
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    return-void

    .line 157
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthUncertaintyMeters:F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 156
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 159
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    return-void

    .line 157
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_7a
    :try_start_7a
    sget-object v2, Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    iput-object v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 156
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 159
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 153
    return-void

    .line 157
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->attenuationDb:F
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_b0

    .line 156
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 159
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :cond_aa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :catchall_b0
    move-exception v2

    goto :goto_ba

    .line 144
    :cond_b2
    :try_start_b2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_b0

    .line 156
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_ba
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c3

    .line 157
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_c3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 128
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathInfoFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->attenuationDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 135
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-void
.end method
