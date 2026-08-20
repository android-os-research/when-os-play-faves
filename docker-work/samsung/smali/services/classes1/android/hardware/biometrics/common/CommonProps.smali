.class public Landroid/hardware/biometrics/common/CommonProps;
.super Ljava/lang/Object;
.source "CommonProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/CommonProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

.field public maxEnrollmentsPerUser:I

.field public sensorId:I

.field public sensorStrength:B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Landroid/hardware/biometrics/common/CommonProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 8
    iput-byte v0, p0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 9
    iput v0, p0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/common/CommonProps;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 67
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 69
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 70
    invoke-virtual {p0, v3}, Landroid/hardware/biometrics/common/CommonProps;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 74
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 75
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_84

    .line 44
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 54
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 54
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 54
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_82

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 54
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_6a
    :try_start_6a
    sget-object v2, Landroid/hardware/biometrics/common/ComponentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/common/ComponentInfo;

    iput-object v2, p0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_82

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 54
    :cond_7c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_82
    move-exception p0

    goto :goto_8c

    .line 43
    :cond_84
    :try_start_84
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_82

    :goto_8c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_95

    .line 54
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v1, p0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-byte v1, p0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget v1, p0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p0, p0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
