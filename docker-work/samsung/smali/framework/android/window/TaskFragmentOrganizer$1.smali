.class Landroid/window/TaskFragmentOrganizer$1;
.super Landroid/window/ITaskFragmentOrganizer$Stub;
.source "TaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskFragmentOrganizer;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/window/TaskFragmentOrganizer;

    .line 213
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onActivityReparentToTask$5$android-window-TaskFragmentOrganizer$1(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 258
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskFragmentOrganizer;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentAppeared$0$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .registers 3
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 217
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentError$4$android-window-TaskFragmentOrganizer$1(Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "errorBundle"    # Landroid/os/Bundle;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 244
    const-class v0, Landroid/window/TaskFragmentInfo;

    const-string/jumbo v1, "task_fragment_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    .line 246
    .local v0, "info":Landroid/window/TaskFragmentInfo;
    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    .line 248
    const-string/jumbo v2, "operation_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-class v3, Ljava/lang/Throwable;

    .line 249
    const-string v4, "fragment_exception"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 246
    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Landroid/window/TaskFragmentInfo;ILjava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentInfoChanged$1$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .registers 3
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 223
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentParentInfoChanged$3$android-window-TaskFragmentOrganizer$1(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 236
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentVanished$2$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .registers 3
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 229
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method public blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 257
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskFragmentOrganizer$1;ILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .registers 4
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 216
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "errorBundle"    # Landroid/os/Bundle;

    .line 243
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/Bundle;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .registers 4
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 222
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 235
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .registers 4
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 228
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method
