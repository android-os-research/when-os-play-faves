.class public final Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AidlConversionUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAidlToFrameworkFeature(B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_23

    if-ne p0, v0, :cond_7

    const/4 p0, 0x2

    return p0

    .line 205
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AidlConversionUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_23
    return v0
.end method

.method public static convertFrameworkToAidlFeature(I)B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    return v0

    .line 193
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AidlConversionUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .registers 1

    packed-switch p0, :pswitch_data_4c

    const/16 p0, 0x17

    return p0

    :pswitch_6
    const/16 p0, 0x1a

    return p0

    :pswitch_9
    const/16 p0, 0x19

    return p0

    :pswitch_c
    const/16 p0, 0x18

    return p0

    :pswitch_f
    const/16 p0, 0x16

    return p0

    :pswitch_12
    const/16 p0, 0x15

    return p0

    :pswitch_15
    const/16 p0, 0x14

    return p0

    :pswitch_18
    const/16 p0, 0x13

    return p0

    :pswitch_1b
    const/16 p0, 0x12

    return p0

    :pswitch_1e
    const/16 p0, 0x11

    return p0

    :pswitch_21
    const/16 p0, 0x10

    return p0

    :pswitch_24
    const/16 p0, 0xf

    return p0

    :pswitch_27
    const/16 p0, 0xe

    return p0

    :pswitch_2a
    const/16 p0, 0xd

    return p0

    :pswitch_2d
    const/16 p0, 0xc

    return p0

    :pswitch_30
    const/16 p0, 0xb

    return p0

    :pswitch_33
    const/16 p0, 0xa

    return p0

    :pswitch_36
    const/16 p0, 0x9

    return p0

    :pswitch_39
    const/16 p0, 0x8

    return p0

    :pswitch_3c
    const/4 p0, 0x7

    return p0

    :pswitch_3e
    const/4 p0, 0x6

    return p0

    :pswitch_40
    const/4 p0, 0x5

    return p0

    :pswitch_42
    const/4 p0, 0x4

    return p0

    :pswitch_44
    const/4 p0, 0x3

    return p0

    :pswitch_46
    const/4 p0, 0x2

    return p0

    :pswitch_48
    const/4 p0, 0x1

    return p0

    :pswitch_4a
    const/4 p0, 0x0

    return p0

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_42
        :pswitch_40
        :pswitch_3e
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;
    .registers 2

    .line 159
    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    iget-object p0, p0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    return-object v0
.end method

.method public static toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;
    .registers 9

    .line 172
    new-instance v7, Landroid/hardware/face/FaceDataFrame;

    iget-byte v0, p0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 173
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v1

    iget v2, p0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget v3, p0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    iget v4, p0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    iget v5, p0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    iget-boolean v6, p0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    return-object v7
.end method

.method public static toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_10

    .line 183
    :cond_4
    new-instance v0, Landroid/hardware/face/FaceEnrollCell;

    iget v1, p0, Landroid/hardware/biometrics/face/Cell;->x:I

    iget v2, p0, Landroid/hardware/biometrics/face/Cell;->y:I

    iget p0, p0, Landroid/hardware/biometrics/face/Cell;->z:I

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/face/FaceEnrollCell;-><init>(III)V

    move-object p0, v0

    :goto_10
    return-object p0
.end method

.method public static toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;
    .registers 4

    .line 164
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    .line 165
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkCell(Landroid/hardware/biometrics/face/Cell;)Landroid/hardware/face/FaceEnrollCell;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    .line 166
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentStage(I)I

    move-result v2

    iget-object p0, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 167
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkBaseFrame(Landroid/hardware/biometrics/face/BaseFrame;)Landroid/hardware/face/FaceDataFrame;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    return-object v0
.end method

.method public static toFrameworkEnrollmentStage(I)I
    .registers 1

    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static toFrameworkError(B)I
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/16 p0, 0x11

    return p0

    :pswitch_6
    const/16 p0, 0x10

    return p0

    :pswitch_9
    const/16 p0, 0x8

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_e
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x4

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_16
    const/4 p0, 0x1

    return p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
