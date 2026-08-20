.class Landroid/app/SemActivityTaskManager$TaskChangeController;
.super Landroid/app/TaskStackListener;
.source "SemActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskChangeController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SemActivityTaskManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/SemActivityTaskManager;)V
    .registers 2

    .line 165
    iput-object p1, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/SemActivityTaskManager;Landroid/app/SemActivityTaskManager$TaskChangeController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/SemActivityTaskManager$TaskChangeController;-><init>(Landroid/app/SemActivityTaskManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onActivityRequestedOrientationChanged(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 213
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 214
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 215
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onActivityRequestedOrientationChanged(II)V

    .line 216
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 218
    :cond_26
    return-void
.end method

.method public blacklist onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 168
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 169
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 170
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 171
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 173
    :cond_26
    return-void
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I

    .line 186
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 187
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 188
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onTaskDisplayChanged(II)V

    .line 189
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 191
    :cond_26
    return-void
.end method

.method public blacklist onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 204
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 205
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 206
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1}, Landroid/app/SemTaskChangeCallback;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 207
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 209
    :cond_26
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 196
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 197
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1}, Landroid/app/SemTaskChangeCallback;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 198
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 200
    :cond_26
    return-void
.end method

.method public blacklist onTaskRemoved(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 177
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 178
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 179
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1}, Landroid/app/SemTaskChangeCallback;->onTaskRemoved(I)V

    .line 180
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 182
    :cond_26
    return-void
.end method

.method public blacklist onTaskRequestedOrientationChanged(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 222
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 223
    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    .line 224
    .local v1, "i":Landroid/app/SemTaskChangeCallback;
    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onTaskRequestedOrientationChanged(II)V

    .line 225
    .end local v1    # "i":Landroid/app/SemTaskChangeCallback;
    goto :goto_16

    .line 227
    :cond_26
    return-void
.end method
