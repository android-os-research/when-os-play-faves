.class public Landroid/hardware/keymaster/HardwareAuthToken;
.super Ljava/lang/Object;
.source "HardwareAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/keymaster/HardwareAuthToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authenticatorId:J

.field public authenticatorType:I

.field public challenge:J

.field public mac:[B

.field public timestamp:Landroid/hardware/keymaster/Timestamp;

.field public userId:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Landroid/hardware/keymaster/HardwareAuthToken$1;

    invoke-direct {v0}, Landroid/hardware/keymaster/HardwareAuthToken$1;-><init>()V

    sput-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    .line 8
    iput-wide v0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    .line 9
    iput-wide v0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    invoke-virtual {p0, v0}, Landroid/hardware/keymaster/HardwareAuthToken;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 75
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 76
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b2

    .line 48
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 62
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 62
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 62
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 62
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 62
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_81
    :try_start_81
    sget-object v2, Landroid/hardware/keymaster/Timestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/keymaster/Timestamp;

    iput-object v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    goto :goto_1a

    .line 62
    :cond_96
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_9c
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    add-int/2addr v0, v1

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 62
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b0
    move-exception p0

    goto :goto_ba

    .line 47
    :cond_b2
    :try_start_b2
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_b0

    :goto_ba
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c3

    .line 62
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c3
    add-int/2addr v0, v1

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-wide v1, p0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget-wide v1, p0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-wide v1, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget v1, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v1, p0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    iget-object p0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
