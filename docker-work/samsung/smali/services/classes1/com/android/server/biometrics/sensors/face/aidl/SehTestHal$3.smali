.class public Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;
.super Ljava/lang/Object;
.source "SehTestHal.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->InitTPA(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAcquiredEvent(II)V
    .registers 5

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 364
    new-instance v0, Landroid/hardware/biometrics/face/EnrollmentFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/EnrollmentFrame;-><init>()V

    .line 365
    iget-object v1, v0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    int-to-byte p1, p1

    iput-byte p1, v1, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 366
    iput p2, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 367
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    goto :goto_38

    .line 369
    :cond_1e
    new-instance v0, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 370
    iget-object v1, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    int-to-byte p1, p1

    iput-byte p1, v1, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 371
    iput p2, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 372
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public deliverAuthenticationResult(I)V
    .registers 3

    if-lez p1, :cond_14

    .line 401
    :try_start_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    const/16 v0, 0x45

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    goto :goto_22

    .line 403
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFailed()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 406
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public deliverEnrollResult(I)V
    .registers 3

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p0

    invoke-interface {v0, p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentProgress(II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public deliverErrorEvent(II)V
    .registers 3

    .line 382
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    int-to-byte p1, p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    .line 384
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method
