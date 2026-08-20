.class public Landroid/media/audio/common/AudioPort;
.super Ljava/lang/Object;
.source "AudioPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist ext:Landroid/media/audio/common/AudioPortExt;

.field public blacklist extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

.field public blacklist flags:Landroid/media/audio/common/AudioIoFlags;

.field public blacklist gains:[Landroid/media/audio/common/AudioGain;

.field public blacklist id:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist profiles:[Landroid/media/audio/common/AudioProfile;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/media/audio/common/AudioPort$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPort$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioPort;->id:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 116
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 119
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/media/audio/common/AudioPort;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 118
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 121
    :cond_19
    return v1

    .line 123
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 126
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPort;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 108
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPort;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 109
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPort;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPort;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 111
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPort;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 112
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 87
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 88
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioPort;

    if-nez v2, :cond_d

    return v1

    .line 89
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioPort;

    .line 90
    .local v2, "that":Landroid/media/audio/common/AudioPort;
    iget v3, p0, Landroid/media/audio/common/AudioPort;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/media/audio/common/AudioPort;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 91
    :cond_23
    iget-object v3, p0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 92
    :cond_2e
    iget-object v3, p0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    iget-object v4, v2, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v1

    .line 93
    :cond_39
    iget-object v3, p0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    iget-object v4, v2, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    return v1

    .line 94
    :cond_44
    iget-object v3, p0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    iget-object v4, v2, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    return v1

    .line 95
    :cond_4f
    iget-object v3, p0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    iget-object v4, v2, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    return v1

    .line 96
    :cond_5a
    iget-object v3, p0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    iget-object v4, v2, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    return v1

    .line 97
    :cond_65
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioPort;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    const/4 v2, 0x6

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

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_fa

    .line 51
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 67
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioPort;->id:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 67
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_5e
    :try_start_5e
    sget-object v2, Landroid/media/audio/common/AudioProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioProfile;

    iput-object v2, p0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/media/audio/common/AudioIoFlags;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioIoFlags;

    iput-object v2, p0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_9e
    :try_start_9e
    sget-object v2, Landroid/media/audio/common/ExtraAudioDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/ExtraAudioDescriptor;

    iput-object v2, p0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_9e .. :try_end_ac} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_be

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b8

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_b8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_be
    :try_start_be
    sget-object v2, Landroid/media/audio/common/AudioGain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioGain;

    iput-object v2, p0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_cc
    .catchall {:try_start_be .. :try_end_cc} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_de

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d8

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_d8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_de
    :try_start_de
    sget-object v2, Landroid/media/audio/common/AudioPortExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioPortExt;

    iput-object v2, p0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;
    :try_end_e8
    .catchall {:try_start_de .. :try_end_e8} :catchall_f8

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    .line 69
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_f2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :catchall_f8
    move-exception v2

    goto :goto_102

    .line 50
    :cond_fa
    :try_start_fa
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioPort;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_102
    .catchall {:try_start_fa .. :try_end_102} :catchall_f8

    .line 66
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioPort;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_102
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10b

    .line 67
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_10b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 74
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 75
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioPort;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraAudioDescriptors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

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

    const-string v2, "android.media.audio.common.AudioPort"

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

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 32
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v1, p0, Landroid/media/audio/common/AudioPort;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 36
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 39
    iget-object v1, p0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 41
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void
.end method
