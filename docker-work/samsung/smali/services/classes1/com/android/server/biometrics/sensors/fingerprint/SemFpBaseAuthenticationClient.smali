.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "SemFpBaseAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field public mAttribute:Landroid/os/Bundle;

.field public mAuthenticationFailedReason:I

.field public mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

.field public mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

.field public mCanIgnoreLockout:Z

.field public mCaptureStartTime:J

.field public mErrorEscrow:I

.field public mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

.field public mIsAuthenticated:Z

.field public mIsInteractiveWhenStartCapture:Z

.field public final mIsKeyguard:Z

.field public mIsSetEarlyWakeUp:Z

.field public final mIsSettingApp:Z

.field public mLastErrorCode:I

.field public mPrivilegedFlags:I

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mQualityErrorCount:I

.field public mRejectCount:I

.field public mTotalQualityErrorCount:I

.field public mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

.field public mVendorErrorEscrow:I


# direct methods
.method public static synthetic $r8$lambda$0InyVv02yRD0puQHwVsZXdsOT3c(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->lambda$pauseFaceAuth$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ldnsjBMXITZ8sojvp4OKS6OwKTY(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;ZJII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->lambda$handleBigDataOnBackgroundThread$0(ZJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$nN_On4WH6_IqAcsyEMAf77IGKoU(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->lambda$resumeFaceAuth$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mErrorEscrow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVendorErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mVendorErrorEscrow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationAction(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleNotificationAction(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "ZZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 249
    invoke-direct/range {p0 .. p20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    .line 254
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 255
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isRestricted()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_22

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_34

    move-object v1, p1

    move-object v4, p9

    invoke-static {p1, p9}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    move v2, v3

    :goto_35
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSettingApp:Z

    return-void
.end method

.method private initForUdfps()V
    .registers 6

    const/16 v0, 0x10

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v0

    if-nez v0, :cond_14

    const v0, 0x8000

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasExtraAuthenticationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 333
    :goto_15
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->createUdfpsSysUiImpl(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Z)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 335
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x4

    .line 336
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiType(I)V

    .line 338
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_51

    .line 339
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->checkGuideLayerAndTouchBlock(I)V

    .line 340
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setCustomIconAttribute(Landroid/os/Bundle;I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V

    :cond_51
    return-void
.end method

.method private synthetic lambda$handleBigDataOnBackgroundThread$0(ZJII)V
    .registers 13

    if-eqz p1, :cond_11

    .line 493
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsInteractiveWhenStartCapture:Z

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->sendBigDataForAuthenticationSucceed(Ljava/lang/String;JIIZ)V

    goto :goto_1c

    .line 498
    :cond_11
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p4

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsInteractiveWhenStartCapture:Z

    invoke-virtual {p1, p4, p2, p3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->sendBigDataForAuthenticationFail(Ljava/lang/String;JZ)V

    :goto_1c
    return-void
.end method

.method private synthetic lambda$pauseFaceAuth$1()V
    .registers 2

    .line 663
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_11

    .line 665
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semPauseAuth()V

    :cond_11
    return-void
.end method

.method private synthetic lambda$resumeFaceAuth$2()V
    .registers 2

    .line 677
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_11

    .line 679
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semResumeAuth()V

    :cond_11
    return-void
.end method

.method private showBackgroundAuthenticationNotificationIfNeeded()V
    .registers 7

    .line 408
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 409
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_6e

    .line 412
    :cond_1b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-nez v0, :cond_2f

    .line 413
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 414
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->createBiometricNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 416
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "authenticator"

    .line 418
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_69

    .line 420
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 428
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 427
    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 430
    :cond_69
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method public canIgnoreLockout()Z
    .registers 1

    .line 734
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCanIgnoreLockout:Z

    return p0
.end method

.method public destroy()V
    .registers 11

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->destroy()V

    .line 689
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 690
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->destroy()V

    .line 691
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 693
    :cond_27
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-eqz v0, :cond_30

    .line 694
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    .line 695
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 697
    :cond_30
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3f

    .line 698
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 699
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 701
    :cond_3f
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    long-to-int v4, v0

    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mLastErrorCode:I

    iget v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    const-string v5, "U"

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpStop(ILjava/lang/String;JII)V

    return-void
.end method

.method public getAuthenticatorIds()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticatorIds:Ljava/util/Map;

    return-object p0
.end method

.method public final getDisplayId()I
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-eqz v0, :cond_9

    .line 314
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    move-result p0

    return p0

    .line 316
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string v0, "EXTRA_KEY_DISPLAY_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final handleAuthenticationFailedReasonEvent(I)V
    .registers 5

    .line 618
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticationFailedReason:I

    .line 619
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semIncrementNoMatchReason(II)V

    .line 621
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    .line 622
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 621
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IILjava/lang/String;I)V

    return-void
.end method

.method public final handleAuthenticationResult(I)V
    .registers 12

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCaptureStartTime:J

    sub-long v8, v0, v2

    .line 468
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->resumeFaceAuth()V

    .line 469
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    if-nez v0, :cond_15

    .line 470
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    .line 472
    :cond_15
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleLoggingData(IJ)V

    .line 473
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleBigDataOnBackgroundThread(ZIIJ)V

    const/4 p1, 0x0

    .line 475
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    return-void
.end method

.method public final handleBigDataOnBackgroundThread(ZIIJ)V
    .registers 15

    .line 491
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p4

    move v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;ZJII)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleCaptureStarted()V
    .registers 4

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCaptureStartTime:J

    .line 604
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setEarlyWakeUp()V

    .line 605
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->pauseFaceAuth()V

    .line 606
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_19

    .line 607
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->acquireBoosting(Landroid/content/Context;)V

    .line 609
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 610
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->vibrateSuccess()V

    .line 612
    :cond_28
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_38

    .line 613
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpUpdateUdfpsTouchMap(I)V

    :cond_38
    return-void
.end method

.method public handleEarlyAuthenticationResult()V
    .registers 3

    .line 720
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAuthenticated(Z)V

    .line 723
    :cond_8
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_15

    .line 724
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->restoreFunctionForLightSource(J)V

    :cond_15
    return-void
.end method

.method public final handleLoggingData(IJ)V
    .registers 20

    move-object/from16 v0, p0

    .line 479
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    if-eqz v1, :cond_1f

    .line 480
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v4

    long-to-int v4, v4

    iget v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mRejectCount:I

    iget v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    move-wide/from16 v5, p2

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpMatch(Landroid/content/Context;IJIII)V

    goto :goto_35

    .line 483
    :cond_1f
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    long-to-int v11, v1

    iget v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticationFailedReason:I

    iget v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    move-wide/from16 v12, p2

    .line 483
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpNoMatch(Landroid/content/Context;IJII)V

    :goto_35
    return-void
.end method

.method public final handleNotificationAction(Landroid/content/Intent;)V
    .registers 4

    .line 434
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 435
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    const-string v1, "authenticator"

    .line 436
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_31

    const-string p1, "FingerprintService"

    const-string v0, "Cancel authentication by Notification action"

    .line 437
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    :cond_31
    return-void
.end method

.method public final handleQualityFailedEvent(II)V
    .registers 12

    .line 627
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->resumeFaceAuth()V

    const/16 v0, 0x8

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 629
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->vibrateError()V

    .line 631
    :cond_e
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mQualityErrorCount:I

    .line 632
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mTotalQualityErrorCount:I

    .line 634
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semIncrementQualityForUser(IZ)V

    .line 637
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v0

    .line 638
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 637
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IILjava/lang/String;I)V

    .line 640
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    long-to-int v5, v0

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCaptureStartTime:J

    sub-long v6, v0, v6

    const/4 p0, 0x6

    if-ne p1, p0, :cond_53

    move v8, p2

    goto :goto_54

    :cond_53
    move v8, p1

    .line 640
    :goto_54
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpCaptureFailed(Landroid/content/Context;IJI)V

    return-void
.end method

.method public final handleVendorEvent(I)V
    .registers 4

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_21

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_11

    const/16 v0, 0x271b

    if-eq p1, v0, :cond_d

    goto :goto_24

    .line 588
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setEarlyWakeUp()V

    goto :goto_24

    .line 591
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleCaptureStarted()V

    .line 592
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsInteractiveWhenStartCapture:Z

    goto :goto_24

    :cond_21
    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 597
    :goto_24
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsAuthenticationFailedReasonEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleAuthenticationFailedReasonEvent(I)V

    :cond_2d
    return-void
.end method

.method public final hasExtraAuthenticationFlag(I)Z
    .registers 4

    .line 320
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string v0, "EXTRA_KEY_AUTH_FLAG"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public hasPrivilegedFlag(I)Z
    .registers 2

    .line 367
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final hasPromptPrivilegedAttr(I)Z
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getPromptPrivilegedFlags()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final isInternalEvent(I)Z
    .registers 2

    const/16 p0, 0x271b

    if-eq p1, p0, :cond_d

    .line 579
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsAuthenticationFailedReasonEvent(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isKeyguard()Z
    .registers 1

    .line 389
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    return p0
.end method

.method public isRestricted()Z
    .registers 2

    .line 384
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getPromptPrivilegedFlags()I

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public onAcquired(II)V
    .registers 5

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_31

    .line 533
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_2a

    .line 534
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAcquired(II)V

    .line 536
    :cond_2a
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_31

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->sendUdfpsPointEventForUltrasonic(II)V

    :cond_31
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3d

    .line 541
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isInternalEvent(I)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 542
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleVendorEvent(I)V

    .line 544
    :cond_3d
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsQualityFailedEvent(II)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleQualityFailedEvent(II)V

    :cond_46
    if-eqz v1, :cond_56

    .line 548
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_53

    move p1, v1

    move p2, p1

    .line 554
    :cond_53
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAcquired(II)V

    :cond_56
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 456
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsAuthenticated:Z

    .line 457
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_d

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_d

    .line 459
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAuthenticated(Z)V

    .line 462
    :cond_d
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleAuthenticationResult(I)V

    .line 463
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public onError(II)V
    .registers 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    .line 506
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mErrorEscrow:I

    if-eqz v0, :cond_a

    .line 508
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mVendorErrorEscrow:I

    move p1, v0

    :cond_a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_11

    .line 512
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mLastErrorCode:I

    goto :goto_13

    .line 514
    :cond_11
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mLastErrorCode:I

    .line 517
    :goto_13
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 519
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_21

    .line 520
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_21

    .line 521
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnError(II)V

    .line 524
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->resumeFaceAuth()V

    .line 525
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->sendBigDataForError(IILjava/lang/String;)V

    return-void
.end method

.method public onOneHandModeEnabled()V
    .registers 3

    const/16 v0, 0x8

    const/16 v1, 0x1389

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onError(II)V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    return-void
.end method

.method public final pauseFaceAuth()V
    .registers 3

    .line 658
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 662
    :cond_7
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resumeFaceAuth()V
    .registers 3

    .line 672
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 676
    :cond_7
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semHasPromptPrivilegedAttr(I)Z
    .registers 2

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPromptPrivilegedAttr(I)Z

    move-result p0

    return p0
.end method

.method public final sendUdfpsPointEventForUltrasonic(II)V
    .registers 4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_37

    const/16 p1, 0x2712

    if-eq p2, p1, :cond_f

    const/16 v0, 0x2714

    if-eq p2, v0, :cond_f

    const/16 v0, 0x2717

    if-ne p2, v0, :cond_37

    .line 564
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_37

    if-ne p2, p1, :cond_23

    .line 566
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V

    goto :goto_37

    .line 568
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p0

    const-string p1, "FingerprintService"

    const-string p2, "Failed to invoke sendAcquired"

    .line 572
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    :goto_37
    return-void
.end method

.method public setAuthenticatorIds(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAuthenticatorIds:Ljava/util/Map;

    return-void
.end method

.method public final setEarlyWakeUp()V
    .registers 3

    .line 647
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSetEarlyWakeUp:Z

    if-nez v0, :cond_3a

    .line 648
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 649
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 650
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isFoldedInFlipType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    .line 651
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->checkTDDIDoubleTap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 652
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->enableEarlyWakeUp(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSetEarlyWakeUp:Z

    :cond_3a
    return-void
.end method

.method public setExtraAttribute(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_7

    .line 267
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 269
    :cond_7
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 270
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 271
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 273
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setPrivilegedFlags()V

    .line 274
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semSetDisplayId(I)V

    .line 275
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz p1, :cond_2c

    .line 276
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->initForUdfps()V

    .line 278
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FingerprintClientExt: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getPromptPrivilegedFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    .line 278
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setInjectorForTest(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    return-void
.end method

.method public final setPrivilegedFlags()V
    .registers 5

    .line 284
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_b

    .line 285
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v0, v0, 0x1b

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    goto :goto_15

    .line 289
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mIsSettingApp:Z

    if-eqz v0, :cond_15

    .line 290
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    .line 292
    :cond_15
    :goto_15
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string/jumbo v2, "sem_privileged_attr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    .line 293
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setPromptPrivilegedFlags()V

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 295
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mCanIgnoreLockout:Z

    :cond_30
    const/16 v0, 0x8

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 298
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->semSetVibrationEffectUsage(Z)V

    :cond_3b
    return-void
.end method

.method public final setPromptPrivilegedFlags()V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-eqz v0, :cond_1e

    .line 304
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->setPromptPrivilegedFlags(I)V

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPromptPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x4

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->hasPromptPrivilegedAttr(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 307
    :cond_19
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mPrivilegedFlags:I

    :cond_1e
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 394
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    return-void

    .line 398
    :cond_b
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz p1, :cond_16

    .line 399
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz p1, :cond_16

    .line 400
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->start()V

    .line 403
    :cond_16
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V

    .line 404
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->startLogging(JZLjava/lang/String;)V

    return-void
.end method

.method public stopHalOperation()V
    .registers 3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticationStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_26

    .line 446
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_26

    .line 447
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 450
    :cond_26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->releaseBoosting(Landroid/content/Context;)V

    return-void
.end method

.method public useEarlyAuthenticationResult()Z
    .registers 2

    .line 716
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public vibrateError()V
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->vibrateError(Landroid/content/Context;)V

    return-void
.end method

.method public vibrateSuccess()V
    .registers 2

    .line 707
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;->vibrateSuccess(Landroid/content/Context;)V

    return-void
.end method
