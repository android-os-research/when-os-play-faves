.class public Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BixbyService"
.end annotation


# static fields
.field public static final BIXBY_EXTRA_INTERACTIVE:Ljava/lang/String; = "INTERACTIVE"

.field public static final BIXBY_EXTRA_KEY_COMBINATION:Ljava/lang/String; = "KEY_COMBINATION"

.field public static final BIXBY_EXTRA_KEY_EVENT:Ljava/lang/String; = "KEYEVENT"

.field public static final BIXBY_EXTRA_KEY_FW_VERSION:Ljava/lang/String; = "BIXBY_KEY_FW_VERSION"

.field public static final BIXBY_EXTRA_RESULT_BY_POWER:Ljava/lang/String; = "RESULT_BY_POWER"

.field public static final BIXBY_EXTRA_RESULT_DEFAULT:I = -0x1

.field public static final BIXBY_EXTRA_RESULT_DOUBLE_PRESS:I = 0x2

.field public static final BIXBY_EXTRA_RESULT_LONG_PRESS:I = 0x1

.field public static final BIXBY_EXTRA_RESULT_META_I:I = 0x3

.field public static final BIXBY_EXTRA_UNLOCK_FP:Ljava/lang/String; = "UNLOCKFP"


# instance fields
.field public bixbyComponentName:Landroid/content/ComponentName;

.field public bixbyOnboardingComponentName:Landroid/content/ComponentName;

.field public bixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 5

    .line 3407
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 3411
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v2

    :goto_14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyComponentName:Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.bixby.agent/com.samsung.android.bixby.BixbyKeyLService"

    .line 3412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 3413
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :cond_22
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyOnboardingComponentName:Landroid/content/ComponentName;

    .line 3414
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "PhoneWindowManager.BixbyService.bixbyServiceWakeLock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final getBixbyToast()Ljava/lang/String;
    .registers 2

    .line 3526
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$misReserveBatteryMode(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3527
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104025a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 3535
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIntentBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Landroid/content/Intent;
    .registers 10

    .line 3437
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetevent(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 3438
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetinteractive(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v1

    .line 3439
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetmetaIPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v2

    .line 3440
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetlongPress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v3

    .line 3441
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetdoublePress(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v4

    .line 3442
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetisUnlockFP(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v5

    .line 3443
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetisPowerCombination(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result p1

    .line 3445
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3446
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_BIXBY_ONBOARDING_SERVICE:Z

    if-eqz v7, :cond_31

    if-nez v3, :cond_2b

    if-nez v4, :cond_2b

    if-eqz v2, :cond_31

    .line 3448
    :cond_2b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyOnboardingComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_36

    .line 3450
    :cond_31
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_36
    if-eqz v0, :cond_41

    .line 3453
    invoke-static {v0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p0

    const-string v0, "KEYEVENT"

    invoke-virtual {v6, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_41
    const/4 p0, 0x1

    if-eqz p1, :cond_49

    const-string v0, "KEY_COMBINATION"

    .line 3456
    invoke-virtual {v6, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_49
    const-string v0, "BIXBY_KEY_FW_VERSION"

    const/4 v7, 0x2

    .line 3458
    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "INTERACTIVE"

    .line 3459
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3462
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v0, :cond_5b

    if-eqz v3, :cond_5b

    goto :goto_68

    .line 3464
    :cond_5b
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    if-eqz p0, :cond_63

    if-eqz v4, :cond_63

    move p0, v7

    goto :goto_68

    :cond_63
    if-eqz v2, :cond_67

    const/4 p0, 0x3

    goto :goto_68

    :cond_67
    const/4 p0, -0x1

    :goto_68
    const-string v0, "RESULT_BY_POWER"

    .line 3471
    invoke-virtual {v6, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startBixbyService, keyPressType="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " interactive="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " longPress="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " doublePress="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " metaIPress="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isUnlockFP="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isPowerCombination="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneWindowManagerExt"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public isBixbyServiceAvailable()Z
    .registers 5

    .line 3484
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v0, :cond_d

    const-string p0, "Do nothing regarding key event of bixby service. Factory Binary"

    .line 3485
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    const/4 v0, 0x0

    .line 3490
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v0, "UserSetup is not completed"

    goto :goto_55

    .line 3492
    :cond_1b
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$misCarrierLocked(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v0, "Carrier is Locked"

    goto :goto_55

    .line 3494
    :cond_26
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmKeyguardDelegate(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v0, "Sim is Locked"

    goto :goto_55

    .line 3496
    :cond_35
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$misDomesticOtaStart(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v3

    if-eqz v3, :cond_40

    const-string v0, "DomesticOtaStart"

    goto :goto_55

    .line 3498
    :cond_40
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_47

    const-string v0, "bixbyComponentName is null"

    goto :goto_55

    .line 3500
    :cond_47
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v3, :cond_55

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$misMissingPhoneLockEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result p0

    if-eqz p0, :cond_55

    const-string v0, "MissingPhone is LockEnabled"

    .line 3503
    :cond_55
    :goto_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_70

    .line 3504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do nothing regarding key event of bixby service. reason="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_70
    const/4 p0, 0x1

    return p0
.end method

.method public showBixbyToast(ZZ)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3517
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->getBixbyToast()Ljava/lang/String;

    move-result-object p2

    .line 3518
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p1, :cond_17

    .line 3519
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    return-object p2
.end method

.method public startBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)V
    .registers 5

    .line 3420
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetinteractive(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;->-$$Nest$fgetshowToast(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 3421
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->isBixbyServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4e

    .line 3425
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3427
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->getIntentBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)Landroid/content/Intent;

    move-result-object p1

    .line 3428
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_2f
    .catchall {:try_start_1a .. :try_end_27} :catchall_2d

    .line 3432
    :goto_27
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_47

    :catchall_2d
    move-exception p1

    goto :goto_48

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "PhoneWindowManagerExt"

    .line 3430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not start BixbyService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_2d

    goto :goto_27

    :goto_47
    return-void

    .line 3432
    :goto_48
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->bixbyServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3433
    throw p1

    :cond_4e
    :goto_4e
    return-void
.end method
