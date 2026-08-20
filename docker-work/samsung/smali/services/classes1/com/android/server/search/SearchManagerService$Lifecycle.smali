.class public Lcom/android/server/search/SearchManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mService:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public static synthetic $r8$lambda$ypVX8oQvpZGvGCobQRxZusMCG5k(Lcom/android/server/search/SearchManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService$Lifecycle;->lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBroadcastReadyIntent(Lcom/android/server/search/SearchManagerService$Lifecycle;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->sendBroadcastReadyIntent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance p1, Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    invoke-direct {p1, p0}, Lcom/android/server/search/SearchManagerService$Lifecycle$1;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle;)V

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/search/SearchManagerService;->-$$Nest$monUnlockUser(Lcom/android/server/search/SearchManagerService;I)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 9

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 87
    :try_start_4
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 88
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const-string p0, "SearchManagerService"

    const-string p1, "Lifecycle: fail boot register"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 78
    new-instance v0, Lcom/android/server/search/SearchManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    const-string/jumbo v1, "search"

    .line 79
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/search/SearchManagerService;->-$$Nest$monCleanupUser(Lcom/android/server/search/SearchManagerService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendBroadcastReadyIntent()V
    .registers 3

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SEARCH_MANAGER_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, -0x77000000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
