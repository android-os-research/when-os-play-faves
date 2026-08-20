.class public Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemSeReceiver.java"


# static fields
.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field public static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VvlhLfNYgQPqOoM64jEggk5nwCE()V
    .registers 0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0()V
    .registers 3

    .line 64
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1c

    .line 66
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 67
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "KG bindToLockScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception v0

    .line 69
    sget-object v1, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public final getResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I
    .registers 4

    if-nez p1, :cond_5

    const/16 p0, -0x3e8

    return p0

    .line 160
    :cond_5
    sget-object p0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "err wrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget p0, p1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p0, :cond_23

    .line 162
    iget p0, p1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_23
    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    if-eqz p2, :cond_209

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_209

    .line 32
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    if-eqz v2, :cond_4c

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4c
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "3040"

    const-string v4, "China Binary and previously enrolled. Lock device without passcode."

    const-string v5, "KG bindToLockScreen"

    const-string v6, "checkKGClientIntegrity false. Lock device without passcode."

    const-string v7, "Received action "

    const/4 v8, 0x3

    if-eqz v2, :cond_112

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p2

    .line 42
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 43
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSetupWizardFinished : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkTaIntegrity(I)Z

    move-result v2

    if-nez v2, :cond_a1

    const-string p0, "checkTaIntegrity false. Lock device without passcode."

    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "1001"

    .line 47
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_a1
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object v2

    .line 51
    iget-boolean v7, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    if-eqz v7, :cond_d9

    const-string p0, "checkKGClientIntegrity true. "

    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, p2, :cond_107

    if-eqz v0, :cond_c4

    .line 56
    :try_start_b2
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 57
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b9

    goto :goto_107

    :catchall_b9
    move-exception p0

    .line 59
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_107

    .line 62
    :cond_c4
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver$$ExternalSyntheticLambda0;-><init>()V

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_107

    .line 76
    :cond_d9
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v5

    if-eqz v5, :cond_f9

    if-nez p2, :cond_ea

    const-string p1, "Device country is China"

    .line 78
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->setCheckingStateToKg()V

    goto :goto_f8

    :cond_ea
    if-eqz v0, :cond_f8

    .line 80
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result p0

    if-eqz p0, :cond_f8

    .line 82
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p1, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f8
    :goto_f8
    return-void

    .line 88
    :cond_f9
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_107
    :goto_107
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result p0

    if-eqz p0, :cond_208

    .line 92
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    goto/16 :goto_208

    :cond_112
    const-string p0, "android.intent.action.USER_PRESENT"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_146

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    if-ne v8, p0, :cond_208

    .line 99
    :try_start_132
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 100
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_132 .. :try_end_138} :catchall_13a

    goto/16 :goto_208

    :catchall_13a
    move-exception p0

    .line 102
    sget-object p1, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_208

    :cond_146
    const-string p0, "android.intent.action.PACKAGE_REPLACED"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "com.samsung.android.kgclient"

    if-nez p0, :cond_1b6

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b6

    const-string p0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_161

    goto :goto_1b6

    :cond_161
    const-string p0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19f

    const-string p0, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_172

    goto :goto_19f

    :cond_172
    const-string p0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_208

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_208

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_208

    .line 135
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    if-ne v8, p0, :cond_208

    const-string p0, "3001"

    .line 137
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "Client data was cleared. Lock device"

    .line 138
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_208

    .line 126
    :cond_19f
    :goto_19f
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    .line 127
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result p2

    if-eqz p2, :cond_208

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result p0

    if-eqz p0, :cond_208

    .line 129
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1, v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_208

    .line 106
    :cond_1b6
    :goto_1b6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_208

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1eb

    .line 109
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    .line 110
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p0

    .line 111
    iget-boolean p2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    if-eqz p2, :cond_1dc

    const-string p0, "checkKGClientIntegrity true. Do nothing."

    .line 112
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_208

    .line 114
    :cond_1dc
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_208

    .line 117
    :cond_1eb
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_208

    .line 119
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p0

    .line 120
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result p0

    if-eqz p0, :cond_208

    .line 121
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    :cond_208
    :goto_208
    return-void

    .line 28
    :cond_209
    :goto_209
    sget-object p0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    const-string p1, "intent is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setCheckingStateToKg()V
    .registers 4

    .line 146
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCheckingStateToKg"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v1}, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->getResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCheckingStateToKg result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_42

    :catch_26
    move-exception p0

    .line 152
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCheckingStateToKg Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    return-void
.end method
