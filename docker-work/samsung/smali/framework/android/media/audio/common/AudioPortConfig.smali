.class public Landroid/media/audio/common/AudioPortConfig;
.super Ljava/lang/Object;
.source "AudioPortConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPortConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist channelMask:Landroid/media/audio/common/AudioChannelLayout;

.field public blacklist ext:Landroid/media/audio/common/AudioPortExt;

.field public blacklist flags:Landroid/media/audio/common/AudioIoFlags;

.field public blacklist format:Landroid/media/audio/common/AudioFormatDescription;

.field public blacklist gain:Landroid/media/audio/common/AudioGainConfig;

.field public blacklist id:I

.field public blacklist portId:I

.field public blacklist sampleRate:Landroid/media/audio/common/Int;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/media/audio/common/AudioPortConfig$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPortConfig$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPortConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioPortConfig;->id:I

    .line 9
    iput v0, p0, Landroid/media/audio/common/AudioPortConfig;->portId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 123
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 126
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 117
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPortConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 92
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 93
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioPortConfig;

    if-nez v2, :cond_d

    return v1

    .line 94
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioPortConfig;

    .line 95
    .local v2, "that":Landroid/media/audio/common/AudioPortConfig;
    iget v3, p0, Landroid/media/audio/common/AudioPortConfig;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/media/audio/common/AudioPortConfig;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 96
    :cond_23
    iget v3, p0, Landroid/media/audio/common/AudioPortConfig;->portId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/media/audio/common/AudioPortConfig;->portId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    return v1

    .line 97
    :cond_36
    iget-object v3, p0, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    return v1

    .line 98
    :cond_41
    iget-object v3, p0, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    return v1

    .line 99
    :cond_4c
    iget-object v3, p0, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    return v1

    .line 100
    :cond_57
    iget-object v3, p0, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    return v1

    .line 101
    :cond_62
    iget-object v3, p0, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    return v1

    .line 102
    :cond_6d
    iget-object v3, p0, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;

    iget-object v4, v2, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    return v1

    .line 103
    :cond_78
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioPortConfig;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/audio/common/AudioPortConfig;->portId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11a

    .line 53
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 71
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioPortConfig;->id:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 71
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioPortConfig;->portId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 71
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_5e
    :try_start_5e
    sget-object v2, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/Int;

    iput-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 71
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    iput-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 71
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_9e
    :try_start_9e
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    iput-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_9e .. :try_end_ac} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_be

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b8

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 71
    :cond_b8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_be
    :try_start_be
    sget-object v2, Landroid/media/audio/common/AudioGainConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioGainConfig;

    iput-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_cc
    .catchall {:try_start_be .. :try_end_cc} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_de

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d8

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 71
    :cond_d8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_de
    :try_start_de
    sget-object v2, Landroid/media/audio/common/AudioIoFlags;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioIoFlags;

    iput-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_de .. :try_end_ec} :catchall_118

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fe

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f8

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 71
    :cond_f8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_fe
    :try_start_fe
    sget-object v2, Landroid/media/audio/common/AudioPortExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioPortExt;

    iput-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;
    :try_end_108
    .catchall {:try_start_fe .. :try_end_108} :catchall_118

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    nop

    .line 75
    return-void

    .line 71
    :cond_112
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :catchall_118
    move-exception v2

    goto :goto_122

    .line 52
    :cond_11a
    :try_start_11a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioPortConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_118

    .line 70
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioPortConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_122
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12b

    .line 71
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_12b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 78
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 79
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPortConfig;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPortConfig;->portId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioPortConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/media/audio/common/AudioPortConfig;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Landroid/media/audio/common/AudioPortConfig;->portId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->sampleRate:Landroid/media/audio/common/Int;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->gain:Landroid/media/audio/common/AudioGainConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v1, p0, Landroid/media/audio/common/AudioPortConfig;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 43
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
