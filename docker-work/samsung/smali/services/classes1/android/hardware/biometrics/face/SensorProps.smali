.class public Landroid/hardware/biometrics/face/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public enrollPreviewHeight:I

.field public enrollPreviewScale:F

.field public enrollPreviewWidth:I

.field public enrollTranslationX:F

.field public enrollTranslationY:F

.field public halControlsPreview:Z

.field public previewDisplayId:I

.field public sensorType:B

.field public supportsDetectInteraction:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/hardware/biometrics/face/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 9
    iput-boolean v0, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 10
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    .line 11
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    .line 12
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    .line 14
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    .line 15
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    .line 16
    iput-boolean v0, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 91
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 92
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

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_112

    .line 56
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 78
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v2, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 78
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 78
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_68

    goto :goto_1a

    .line 78
    :cond_68
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_6e
    :try_start_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_85

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7f

    goto :goto_1a

    .line 78
    :cond_7f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_85
    :try_start_85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    goto :goto_1a

    .line 78
    :cond_96
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_9c
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    goto/16 :goto_1a

    .line 78
    :cond_ae
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cc

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c6

    goto/16 :goto_1a

    .line 78
    :cond_c6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_cc
    :try_start_cc
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_de

    goto/16 :goto_1a

    .line 78
    :cond_de
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_e4
    :try_start_e4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_110

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fc

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f6

    goto/16 :goto_1a

    .line 78
    :cond_f6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_fc
    :try_start_fc
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z
    :try_end_102
    .catchall {:try_start_fc .. :try_end_102} :catchall_110

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10a

    add-int/2addr v0, v1

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 78
    :cond_10a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_110
    move-exception p0

    goto :goto_11a

    .line 55
    :cond_112
    :try_start_112
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_110

    :goto_11a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_123

    .line 78
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_123
    add-int/2addr v0, v1

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v1, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    iget-byte p2, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-boolean p2, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 38
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget-boolean p0, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
