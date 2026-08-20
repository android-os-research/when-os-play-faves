.class public Landroid/hardware/biometrics/fingerprint/PointerContext;
.super Ljava/lang/Object;
.source "PointerContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/PointerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public gestureStart:J

.field public isAod:Z

.field public major:F

.field public minor:F

.field public orientation:F

.field public pointerId:I

.field public time:J

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 9
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 10
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 11
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 12
    iput v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 15
    iput-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f6

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 74
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 74
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 74
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 74
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 74
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 74
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 74
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 74
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_f4

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    goto/16 :goto_1a

    .line 74
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_f4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ee

    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 74
    :cond_ee
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_f4
    move-exception p0

    goto :goto_fe

    .line 53
    :cond_f6
    :try_start_f6
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_f4

    :goto_fe
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_107

    .line 74
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_107
    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 36
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 37
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 40
    iget-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 41
    iget-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v0, p0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
