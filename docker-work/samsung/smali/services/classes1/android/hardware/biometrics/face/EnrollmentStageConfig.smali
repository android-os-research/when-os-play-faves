.class public Landroid/hardware/biometrics/face/EnrollmentStageConfig;
.super Ljava/lang/Object;
.source "EnrollmentStageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/EnrollmentStageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/face/Cell;",
            ">;"
        }
    .end annotation
.end field

.field public stage:B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-byte v0, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->stage:B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->cells:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1f

    .line 61
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_e

    :cond_1e
    return v0

    .line 66
    :cond_1f
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_2a

    .line 67
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_2a
    return v0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_54

    .line 40
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_52

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 46
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->stage:B

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_52

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 46
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_3c
    :try_start_3c
    sget-object v2, Landroid/hardware/biometrics/face/Cell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->cells:Ljava/util/List;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_52

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4c

    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 46
    :cond_4c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_52
    move-exception p0

    goto :goto_5c

    .line 39
    :cond_54
    :try_start_54
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_52

    :goto_5c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_65

    .line 46
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    add-int/2addr v0, v1

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-byte v0, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->stage:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    iget-object p0, p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->cells:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
