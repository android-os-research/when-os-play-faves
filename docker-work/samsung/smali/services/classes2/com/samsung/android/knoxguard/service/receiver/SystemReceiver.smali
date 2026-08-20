.class public Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemReceiver.java"


# static fields
.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field public static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$GRFnpsOKKi6TsdVEV7-sGBt1ebo(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Locked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 62
    :try_start_c
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V

    .line 63
    sget-object p0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    const-string v0, "KGVM bindToLockScreen"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1b

    goto :goto_25

    :catchall_1b
    move-exception p0

    .line 65
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    if-eqz p2, :cond_21c

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    goto/16 :goto_21c

    .line 34
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 35
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getActionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_52
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "KGVM bindToLockScreen"

    const-string v3, "3040"

    const-string v4, "China Binary and previously enrolled. Lock device without passcode."

    const-string v5, "checkKGClientIntegrity false. Lock device without passcode."

    const-string v6, "Received action "

    const-string v7, "Locked"

    if-eqz v1, :cond_117

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result p2

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSetupWizardFinished : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;

    move-result-object v1

    .line 47
    iget-boolean v6, v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z

    if-eqz v6, :cond_d6

    const-string v1, "checkKGClientIntegrity true. "

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_10c

    .line 49
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10c

    if-eqz p2, :cond_c1

    .line 52
    :try_start_ab
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V

    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_b6

    goto :goto_10c

    :catchall_b6
    move-exception p2

    .line 55
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10c

    .line 58
    :cond_c1
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10c

    .line 72
    :cond_d6
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v2

    if-eqz v2, :cond_fe

    if-eqz p0, :cond_ef

    const-string v1, "Prenormal"

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ef

    const-string p0, "Device country is China"

    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setCheckingStateToRlc(Landroid/content/Context;)V

    goto :goto_fd

    :cond_ef
    if-eqz p2, :cond_fd

    .line 76
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fd

    .line 78
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    :cond_fd
    :goto_fd
    return-void

    .line 84
    :cond_fe
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_10c
    :goto_10c
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 88
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    goto/16 :goto_21b

    :cond_117
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21b

    .line 93
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 95
    :try_start_13d
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V

    .line 96
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_13d .. :try_end_147} :catchall_149

    goto/16 :goto_21b

    :catchall_149
    move-exception p0

    .line 98
    sget-object p1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21b

    :cond_155
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.samsung.android.kgclient"

    if-nez v1, :cond_1c9

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c9

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    goto :goto_1c9

    :cond_170
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b2

    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_181

    goto :goto_1b2

    :cond_181
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_21b

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 131
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21b

    const-string p0, "3001"

    .line 133
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockDevice(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "Client data was cleared. Lock device"

    .line 134
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    .line 122
    :cond_1b2
    :goto_1b2
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result p2

    if-eqz p2, :cond_21b

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 125
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_21b

    .line 102
    :cond_1c9
    :goto_1c9
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_21b

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1fe

    .line 105
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;

    move-result-object p0

    .line 107
    iget-boolean p2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z

    if-eqz p2, :cond_1ef

    const-string p0, "checkKGClientIntegrity true. Do nothing."

    .line 108
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    .line 110
    :cond_1ef
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    .line 113
    :cond_1fe
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 115
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21b

    .line 117
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    :cond_21b
    :goto_21b
    return-void

    .line 30
    :cond_21c
    :goto_21c
    sget-object p0, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;->TAG:Ljava/lang/String;

    const-string p1, "intent is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
