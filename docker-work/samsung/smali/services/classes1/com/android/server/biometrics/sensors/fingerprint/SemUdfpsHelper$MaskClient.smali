.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MaskClient"
.end annotation


# instance fields
.field public mIsCalibrationMode:Z

.field public mIsKeyguard:Z

.field public mPackageName:Ljava/lang/String;

.field public mSessionId:I

.field public mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;


# direct methods
.method public static synthetic $r8$lambda$_4GOROwwMz1ddtncTbcDzmFiGCw(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->lambda$binderDied$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;Landroid/os/IBinder;Ljava/lang/String;ZI)V
    .registers 10

    .line 454
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mToken:Landroid/os/IBinder;

    .line 456
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mPackageName:Ljava/lang/String;

    .line 457
    iput-boolean p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mIsCalibrationMode:Z

    .line 458
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_PACKAGE_NAME"

    .line 459
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.android.systemui"

    .line 460
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 461
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mIsKeyguard:Z

    const-string v0, "KEY_KEYGUARD"

    .line 462
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_25
    const/4 v0, 0x0

    .line 465
    :try_start_26
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_45

    :catch_2a
    move-exception v0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaskClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FingerprintService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    const/16 v0, 0x1f4

    .line 470
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mIsCalibrationMode:Z

    if-eqz v2, :cond_72

    const/16 v0, 0x1f5

    .line 472
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$fgetmOpticalImpl(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "nits"

    if-ne p5, v1, :cond_64

    .line 474
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$fgetmOpticalImpl(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p5

    invoke-static {p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmBrightnessColor(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_64
    const/4 v3, 0x2

    if-ne p5, v3, :cond_72

    .line 476
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$fgetmOpticalImpl(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p5

    invoke-static {p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmBrightnessColorForLowBrightness(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_72
    :goto_72
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p5, v2, p2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mSessionId:I

    .line 496
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mSessionId:I

    invoke-virtual {p1, p0, v0, v1, p4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .registers 4

    .line 503
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mIsCalibrationMode:Z

    if-eqz v0, :cond_11

    .line 504
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->handleCalibrationMode(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_1a

    .line 506
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaskClient: binderDied, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .registers 6

    const/4 v0, 0x0

    .line 513
    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    goto :goto_22

    :catch_7
    move-exception v1

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaskClient: destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    const/16 v1, 0x1f4

    .line 518
    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mIsCalibrationMode:Z

    if-eqz v2, :cond_2a

    const/16 v1, 0x1f5

    .line 521
    :cond_2a
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mSessionId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 522
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 523
    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mToken:Landroid/os/IBinder;

    .line 524
    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 1

    .line 528
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public isKeyguard()Z
    .registers 1

    .line 536
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->mIsKeyguard:Z

    return p0
.end method
