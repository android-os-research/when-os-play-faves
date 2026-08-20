.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 7309
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7312
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7313
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v1

    if-nez v1, :cond_35

    .line 7314
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyed ChooserTargetServiceConnection received result from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmConnectedComponent(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7316
    monitor-exit v0

    return-void

    .line 7318
    :cond_35
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmUserHandle(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 7319
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 7320
    .local v1, "contextAsUser":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    .line 7321
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7320
    invoke-virtual {v2, v1, v3, p1}, Lcom/android/internal/app/ChooserActivity;->filterServiceTargets(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 7322
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 7323
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 7324
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmUserHandle(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Landroid/os/UserHandle;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7325
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7326
    nop

    .end local v1    # "contextAsUser":Landroid/content/Context;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 7327
    return-void

    .line 7326
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_87

    throw v1
.end method
