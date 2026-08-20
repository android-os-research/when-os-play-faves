.class public Landroid/hardware/contexthub/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist chreApiMajorVersion:B

.field public blacklist chreApiMinorVersion:B

.field public blacklist chrePatchVersion:C

.field public blacklist chrePlatformId:J

.field public blacklist id:I

.field public blacklist maxSupportedMessageLengthBytes:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist peakMips:F

.field public blacklist supportedPermissions:[Ljava/lang/String;

.field public blacklist toolchain:Ljava/lang/String;

.field public blacklist vendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/contexthub/ContextHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    .line 11
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    .line 12
    iput v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    .line 13
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    .line 14
    iput-byte v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    .line 15
    iput-byte v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    .line 16
    iput-char v0, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_157

    .line 58
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 82
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 82
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 82
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 82
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 82
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 82
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 82
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 82
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 82
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 82
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12d
    .catchall {:try_start_122 .. :try_end_12d} :catchall_155

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13f

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_139

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 82
    :cond_139
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_13f
    :try_start_13f
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;
    :try_end_145
    .catchall {:try_start_13f .. :try_end_145} :catchall_155

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14f

    .line 84
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    nop

    .line 86
    return-void

    .line 82
    :cond_14f
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :catchall_155
    move-exception v2

    goto :goto_15f

    .line 57
    :cond_157
    :try_start_157
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/contexthub/ContextHubInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_15f
    .catchall {:try_start_157 .. :try_end_15f} :catchall_155

    .line 81
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/contexthub/ContextHubInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_15f
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_168

    .line 82
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_168
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 41
    iget v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-byte v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    iget-byte v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    iget-char v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 48
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void
.end method
