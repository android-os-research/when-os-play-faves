.class public Landroid/media/MicrophoneInfoData;
.super Ljava/lang/Object;
.source "MicrophoneInfoData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MicrophoneInfoData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist address:Ljava/lang/String;

.field public blacklist channelMapping:[I

.field public blacklist deviceGroup:I

.field public blacklist deviceId:Ljava/lang/String;

.field public blacklist deviceLocation:I

.field public blacklist directionality:I

.field public blacklist frequencies:[F

.field public blacklist frequencyResponses:[F

.field public blacklist geometricLocation:[F

.field public blacklist indexInTheGroup:I

.field public blacklist maxSpl:F

.field public blacklist minSpl:F

.field public blacklist orientation:[F

.field public blacklist portId:I

.field public blacklist sensitivity:F

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/media/MicrophoneInfoData$1;

    invoke-direct {v0}, Landroid/media/MicrophoneInfoData$1;-><init>()V

    sput-object v0, Landroid/media/MicrophoneInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MicrophoneInfoData;->portId:I

    .line 10
    iput v0, p0, Landroid/media/MicrophoneInfoData;->type:I

    .line 12
    iput v0, p0, Landroid/media/MicrophoneInfoData;->deviceLocation:I

    .line 13
    iput v0, p0, Landroid/media/MicrophoneInfoData;->deviceGroup:I

    .line 14
    iput v0, p0, Landroid/media/MicrophoneInfoData;->indexInTheGroup:I

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MicrophoneInfoData;->sensitivity:F

    .line 21
    iput v1, p0, Landroid/media/MicrophoneInfoData;->maxSpl:F

    .line 22
    iput v1, p0, Landroid/media/MicrophoneInfoData;->minSpl:F

    .line 23
    iput v0, p0, Landroid/media/MicrophoneInfoData;->directionality:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 64
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1e2

    .line 67
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 101
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->deviceId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 101
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->portId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 101
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->type:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 101
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->address:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 101
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->deviceLocation:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 101
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->deviceGroup:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 101
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->indexInTheGroup:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 101
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->geometricLocation:[F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 101
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->orientation:[F

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 101
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->frequencies:[F

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 101
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->frequencyResponses:[F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 101
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->channelMapping:[I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_176

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_170

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 101
    :cond_170
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_176
    :try_start_176
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->sensitivity:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_180
    .catchall {:try_start_176 .. :try_end_180} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_192

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18c

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 101
    :cond_18c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_192
    :try_start_192
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->maxSpl:F

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19c
    .catchall {:try_start_192 .. :try_end_19c} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ae

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a8

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 101
    :cond_1a8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1ae
    :try_start_1ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->minSpl:F

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1b8
    .catchall {:try_start_1ae .. :try_end_1b8} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ca

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c4

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 101
    :cond_1c4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1ca
    :try_start_1ca
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->directionality:I
    :try_end_1d0
    .catchall {:try_start_1ca .. :try_end_1d0} :catchall_1e0

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1da

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    nop

    .line 105
    return-void

    .line 101
    :cond_1da
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :catchall_1e0
    move-exception v2

    goto :goto_1ea

    .line 66
    :cond_1e2
    :try_start_1e2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/MicrophoneInfoData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_1ea
    .catchall {:try_start_1e2 .. :try_end_1ea} :catchall_1e0

    .line 100
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/MicrophoneInfoData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_1ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1f3

    .line 101
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1f3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v1, p0, Landroid/media/MicrophoneInfoData;->portId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/media/MicrophoneInfoData;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Landroid/media/MicrophoneInfoData;->deviceLocation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/media/MicrophoneInfoData;->deviceGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/media/MicrophoneInfoData;->indexInTheGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->geometricLocation:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 48
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->orientation:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 49
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->frequencies:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 50
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->frequencyResponses:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 51
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->channelMapping:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 52
    iget v1, p0, Landroid/media/MicrophoneInfoData;->sensitivity:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 53
    iget v1, p0, Landroid/media/MicrophoneInfoData;->maxSpl:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget v1, p0, Landroid/media/MicrophoneInfoData;->minSpl:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 55
    iget v1, p0, Landroid/media/MicrophoneInfoData;->directionality:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 57
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void
.end method
