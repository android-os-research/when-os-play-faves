.class public Landroid/hardware/tv/tuner/AudioExtraMetaData;
.super Ljava/lang/Object;
.source "AudioExtraMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/AudioExtraMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist adFade:B

.field public blacklist adGainCenter:B

.field public blacklist adGainFront:B

.field public blacklist adGainSurround:B

.field public blacklist adPan:B

.field public blacklist versionTextTag:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/hardware/tv/tuner/AudioExtraMetaData$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/AudioExtraMetaData$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adFade:B

    .line 9
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adPan:B

    .line 10
    iput-char v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->versionTextTag:C

    .line 11
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainCenter:B

    .line 12
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainFront:B

    .line 13
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainSurround:B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_cb

    .line 49
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 63
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adFade:B

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 63
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adPan:B

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 63
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->versionTextTag:C

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7b

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_75

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 63
    :cond_75
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_7b
    :try_start_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainCenter:B

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_97

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_91

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 63
    :cond_91
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_97
    :try_start_97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainFront:B

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b3

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ad

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 63
    :cond_ad
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_b3
    :try_start_b3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainSurround:B
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_c9

    .line 62
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c3

    .line 65
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    nop

    .line 67
    return-void

    .line 63
    :cond_c3
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :catchall_c9
    move-exception v2

    goto :goto_d3

    .line 48
    :cond_cb
    :try_start_cb
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/AudioExtraMetaData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_c9

    .line 62
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/AudioExtraMetaData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d3
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_dc

    .line 63
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_dc
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-byte v1, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adFade:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-byte v1, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adPan:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    iget-char v1, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->versionTextTag:C

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-byte v1, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainCenter:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    iget-byte v1, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainFront:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-byte v1, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainSurround:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 39
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void
.end method
