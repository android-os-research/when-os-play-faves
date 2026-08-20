.class public Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 392
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_19

    .line 393
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mswitchUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    goto :goto_4e

    :cond_19
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 394
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 395
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    goto :goto_4e

    :cond_2b
    const-string v0, "android.intent.action.USER_STARTED"

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 397
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 398
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mstartUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    goto :goto_4e

    :cond_3d
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 400
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 401
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mstopUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    :cond_4e
    :goto_4e
    return-void
.end method
