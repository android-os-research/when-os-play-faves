.class public Lcom/android/server/biometrics/sensors/face/SemFaceUtils;
.super Ljava/lang/Object;
.source "SemFaceUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemFace"

.field public static mBundle:Landroid/os/Bundle;

.field public static mFidoRequestData:[B

.field public static mFidoResultData:[B

.field public static mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 7

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 104
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBundle()Landroid/os/Bundle;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getFidoRequestData()[B
    .registers 2

    .line 41
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    const/4 v1, 0x0

    .line 42
    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    if-nez v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_a
    return-object v0
.end method

.method public static getFidoRequestDataAsArrayList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    if-eqz v1, :cond_1c

    array-length v2, v1

    if-lez v2, :cond_1c

    .line 52
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1c

    aget-byte v4, v1, v3

    .line 53
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    const/4 v1, 0x0

    .line 56
    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    return-object v0
.end method

.method public static getFidoResultData()[B
    .registers 2

    .line 82
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 83
    :goto_d
    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    return-object v0
.end method

.method public static getSecurityMode(Landroid/content/Context;)I
    .registers 3

    .line 163
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isOpenEyesMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 166
    :goto_9
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isMaskSettingOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Landroid/hardware/face/FaceManager;->semIsSupportOnMask()Z

    move-result p0

    if-eqz p0, :cond_17

    or-int/lit8 v0, v0, 0x10

    .line 170
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode=0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemFace"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static hasPrivilegedAttr(Landroid/os/Bundle;I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move p0, v0

    goto :goto_c

    :cond_5
    const-string/jumbo v1, "sem_privileged_attr"

    .line 108
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_c
    and-int/2addr p0, p1

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static isCameraPrivacyEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 113
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-nez v0, :cond_e

    .line 114
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 116
    :cond_e
    sget-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const-string v0, "SemFace"

    if-nez p0, :cond_1c

    const-string/jumbo p0, "isCameraPrivacyEnabled: mSensorPrivacyManager null"

    .line 117
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 121
    sget-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    .line 122
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_32

    const-string/jumbo v1, "isCameraPrivacyEnabled : CameraPrivacyEnabled"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return p0
.end method

.method public static isMaskSettingOn(Landroid/content/Context;)Z
    .registers 4

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_recognize_mask"

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isNoFaceGuideEvents(II)Z
    .registers 3

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_12

    :pswitch_4
    goto :goto_f

    :pswitch_5
    packed-switch p1, :pswitch_data_38

    :pswitch_8
    goto :goto_f

    :pswitch_9
    return v0

    .line 143
    :pswitch_a
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    xor-int/2addr p0, v0

    return p0

    :pswitch_e
    return v0

    :goto_f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x3ee
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static isOpenEyesMode(Landroid/content/Context;)Z
    .registers 4

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_open_eyes"

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static resetBundle()V
    .registers 1

    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static setBundle(Landroid/os/Bundle;)V
    .registers 1

    .line 89
    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static setFidoRequestData([B)V
    .registers 3

    .line 33
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fidoRequestData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_14

    const-string/jumbo v1, "null"

    goto :goto_18

    :cond_14
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFace"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_24
    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    return-void
.end method

.method public static setFidoResultData(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_8

    new-array p0, v0, [B

    .line 62
    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    return-void

    .line 65
    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 66
    :goto_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 67
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 69
    :cond_27
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_47

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fidoResultData = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFace"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method public static setFidoResultData([B)V
    .registers 2

    if-eqz p0, :cond_3

    goto :goto_6

    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 75
    :goto_6
    sput-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 76
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_28

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fidoResultData = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFace"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method
