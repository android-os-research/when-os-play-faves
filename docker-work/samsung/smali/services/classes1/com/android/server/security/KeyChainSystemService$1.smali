.class public Lcom/android/server/security/KeyChainSystemService$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyChainSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/KeyChainSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/KeyChainSystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/KeyChainSystemService;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    return-void

    .line 82
    :cond_7
    :try_start_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Landroid/security/IKeyChainService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    .line 84
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_24

    return-void

    .line 88
    :cond_24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object p2, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/android/server/security/KeyChainSystemService;->-$$Nest$mstartServiceInBackgroundAsUser(Lcom/android/server/security/KeyChainSystemService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception p0

    const-string p1, "KeyChainSystemService"

    const-string p2, "Unable to forward package removed broadcast to KeyChain"

    .line 92
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return-void
.end method
