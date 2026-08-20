.class public Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 4

    .line 236
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.scpm.policy.UPDATE.ibs"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.scpm.policy.UPDATE.ibs"

    .line 246
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "IntelligentBatterySaverService"

    if-eqz p2, :cond_1e

    const-string p1, "SCPM update broadcast received!"

    .line 247
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmServiceHandler(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3c

    :cond_1e
    const-string p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 249
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "SCPM clear broadcast received, policy updated 1 min later!"

    .line 250
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmServiceHandler(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    move-result-object p1

    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void
.end method
