.class Lcom/android/internal/app/ChooserActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 9337
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$17;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 9339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.chooser.DEVICE_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 9340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceTargetReceiver: mIctsForDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmIctsForDevice()Landroid/service/chooser/IChooserTargetService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmIctsForDevice()Landroid/service/chooser/IChooserTargetService;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 9343
    :try_start_2f
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$17;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIgnoreSkipAddServiceTarget(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 9344
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmIctsForDevice()Landroid/service/chooser/IChooserTargetService;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmDeviceResolvedCn()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmDeviceIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmChooserTargetResultForDevice()Landroid/service/chooser/IChooserTargetResult;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_48} :catch_49

    .line 9356
    goto :goto_62

    .line 9346
    :catch_49
    move-exception v0

    .line 9347
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Querying ChooserTargetService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9351
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$17;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIgnoreSkipAddServiceTarget(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 9352
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmIctsForDevice(Landroid/service/chooser/IChooserTargetService;)V

    .line 9353
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmDeviceResolvedCn(Landroid/content/ComponentName;)V

    .line 9354
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmDeviceIntentFilter(Landroid/content/IntentFilter;)V

    .line 9355
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmChooserTargetResultForDevice(Landroid/service/chooser/IChooserTargetResult;)V

    .line 9359
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_62
    :goto_62
    return-void
.end method
