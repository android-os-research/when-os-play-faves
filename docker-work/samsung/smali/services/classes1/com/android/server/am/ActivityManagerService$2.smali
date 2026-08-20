.class public Lcom/android/server/am/ActivityManagerService$2;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 1287
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .registers 3

    .line 1300
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetAppLaunchFlag(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;J)V
    .registers 6

    .line 1305
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetAppLaunchFlag(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;I)V
    .registers 5

    .line 1290
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    .line 1293
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetAppLaunchFlag(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 4

    const-string p2, "act_app_launch"

    const/4 p3, 0x0

    .line 1313
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 1318
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
