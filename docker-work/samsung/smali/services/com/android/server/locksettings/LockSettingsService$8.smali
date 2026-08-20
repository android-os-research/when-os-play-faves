.class public Lcom/android/server/locksettings/LockSettingsService$8;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 5957
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$8;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 5960
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    const-string/jumbo v1, "urid"

    if-eqz p1, :cond_33

    const-string p1, "LockSettingsService.SDP"

    const-string/jumbo v2, "onReceive :: android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 5961
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "cred"

    .line 5963
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "token"

    .line 5964
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5965
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 5967
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$8;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpDump(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordDump;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordDump;->dump(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_88

    .line 5970
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const-string v3, "LockSettingsService.DUALDAR"

    if-eqz p1, :cond_63

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "onReceive :: android.intent.action.DUMP_DUALDAR_PASSWORD"

    .line 5971
    invoke-static {v3, v2, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5973
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "path"

    .line 5974
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5976
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$8;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    move-result-object p0

    .line 5977
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->dumpSecret(ILjava/lang/String;)Z

    goto :goto_88

    .line 5978
    :cond_63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v4, "android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "onReceive :: android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    .line 5979
    invoke-static {v3, v2, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5981
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5983
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$8;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    move-result-object p0

    .line 5984
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->checkDualDarDoPolicy(I)V

    :cond_88
    :goto_88
    return-void
.end method
