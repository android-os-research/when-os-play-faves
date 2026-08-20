.class public Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;
.super Landroid/content/BroadcastReceiver;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_2b

    :cond_1d
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    const-string p0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_65

    .line 105
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 109
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mreConnectAgentsByPkgName(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)V

    .line 111
    :cond_40
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mhasKnoxKPUInternalPermission(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p1, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$misDualDAREnabled(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 113
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$2;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-static {p0, v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$maddKPUAppToWhitelist(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_55} :catch_56

    goto :goto_65

    :catch_56
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "DualDARComnService"

    const-string/jumbo v0, "package added or changed uri runtime exception occurred"

    .line 117
    invoke-static {p2, v0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_65
    :goto_65
    return-void
.end method
