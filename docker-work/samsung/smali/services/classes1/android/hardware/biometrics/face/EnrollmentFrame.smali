.class public Landroid/hardware/biometrics/face/EnrollmentFrame;
.super Ljava/lang/Object;
.source "EnrollmentFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/EnrollmentFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cell:Landroid/hardware/biometrics/face/Cell;

.field public data:Landroid/hardware/biometrics/face/BaseFrame;

.field public stage:B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroid/hardware/biometrics/face/EnrollmentFrame$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/EnrollmentFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/EnrollmentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/EnrollmentFrame;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 59
    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/EnrollmentFrame;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 64
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 65
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
    .registers 7

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_71

    .line 42
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_6f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 50
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/biometrics/face/Cell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/face/Cell;

    iput-object v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_6f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 50
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_6f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 50
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_57
    :try_start_57
    sget-object v2, Landroid/hardware/biometrics/face/BaseFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/face/BaseFrame;

    iput-object v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_6f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_69

    add-int/2addr v0, v1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 50
    :cond_69
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6f
    move-exception p0

    goto :goto_79

    .line 41
    :cond_71
    :try_start_71
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_6f

    :goto_79
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_82

    .line 50
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    add-int/2addr v0, v1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 29
    iget-byte v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 30
    iget-object p0, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
