.class public Lcom/android/server/security/KeyChainSystemService;
.super Lcom/android/server/SystemService;
.source "KeyChainSystemService.java"


# static fields
.field public static final KEYCHAIN_IDLE_WHITELIST_DURATION_MS:I = 0x7530

.field public static final TAG:Ljava/lang/String; = "KeyChainSystemService"


# instance fields
.field public final mPackageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mstartServiceInBackgroundAsUser(Lcom/android/server/security/KeyChainSystemService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/KeyChainSystemService;->startServiceInBackgroundAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p1, Lcom/android/server/security/KeyChainSystemService$1;

    invoke-direct {p1, p0}, Lcom/android/server/security/KeyChainSystemService$1;-><init>(Lcom/android/server/security/KeyChainSystemService;)V

    iput-object p1, p0, Lcom/android/server/security/KeyChainSystemService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 7

    .line 64
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 65
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 67
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/security/KeyChainSystemService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p0

    const-string v0, "KeyChainSystemService"

    const-string v1, "Unable to register for package removed broadcast"

    .line 70
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method

.method public final startServiceInBackgroundAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 13

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 105
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 106
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-wide/16 v4, 0x7530

    .line 107
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x130

    const-string/jumbo v9, "keychain"

    .line 106
    invoke-interface/range {v1 .. v9}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method
