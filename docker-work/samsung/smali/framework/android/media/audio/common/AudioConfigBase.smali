.class public Landroid/media/audio/common/AudioConfigBase;
.super Ljava/lang/Object;
.source "AudioConfigBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioConfigBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist channelMask:Landroid/media/audio/common/AudioChannelLayout;

.field public blacklist format:Landroid/media/audio/common/AudioFormatDescription;

.field public blacklist sampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Landroid/media/audio/common/AudioConfigBase$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfigBase$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 90
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 92
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioConfigBase;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioConfigBase;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 68
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/AudioConfigBase;

    if-nez v2, :cond_d

    return v1

    .line 69
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioConfigBase;

    .line 70
    .local v2, "that":Landroid/media/audio/common/AudioConfigBase;
    iget v3, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    .line 71
    :cond_23
    iget-object v3, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    iget-object v4, v2, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    .line 72
    :cond_2e
    iget-object v3, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    iget-object v4, v2, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v1

    .line 73
    :cond_39
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    const/4 v2, 0x2

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

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 42
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7e

    .line 43
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void

    .line 51
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void

    .line 51
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_42
    :try_start_42
    sget-object v2, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    iput-object v2, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 51
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_62
    :try_start_62
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    iput-object v2, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_7c

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_76

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    nop

    .line 55
    return-void

    .line 51
    :cond_76
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :catchall_7c
    move-exception v2

    goto :goto_86

    .line 42
    :cond_7e
    :try_start_7e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioConfigBase;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_7c

    .line 50
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioConfigBase;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_86
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8f

    .line 51
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_8f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 58
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 59
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.audio.common.AudioConfigBase"

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

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 28
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v1, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 31
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 33
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    return-void
.end method
