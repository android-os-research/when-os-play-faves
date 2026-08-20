.class public Landroid/hardware/biometrics/fingerprint/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public halControlsIllumination:Z

.field public halHandlesDisplayTouches:Z

.field public sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

.field public sensorType:B

.field public supportsDetectInteraction:Z

.field public supportsNavigationGestures:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/hardware/biometrics/fingerprint/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 10
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 11
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 13
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 75
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 82
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 83
    invoke-virtual {p0, v3}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 87
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 88
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

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ce

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 66
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 66
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 66
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_57
    :try_start_57
    sget-object v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_72

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6c

    goto :goto_1a

    .line 66
    :cond_6c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_72
    :try_start_72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_89

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_83

    goto :goto_1a

    .line 66
    :cond_83
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9a

    goto :goto_1a

    .line 66
    :cond_9a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_a0
    :try_start_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_cc

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b2

    goto/16 :goto_1a

    .line 66
    :cond_b2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_b8
    :try_start_b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_cc

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c6

    add-int/2addr v0, v1

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 66
    :cond_c6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_cc
    move-exception p0

    goto :goto_d6

    .line 49
    :cond_ce
    :try_start_ce
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_cc

    :goto_d6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_df

    .line 66
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_df
    add-int/2addr v0, v1

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 33
    iget-byte v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 35
    iget-boolean p2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 36
    iget-boolean p2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 37
    iget-boolean p2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 38
    iget-boolean p0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
