.class public Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "XrStateCallbacksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/XrStateCallbacksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XrTaskStackListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrStateCallbacksController;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrStateCallbacksController;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {v0}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$fgetmRemoteCallbacks(Lcom/android/server/vr/XrStateCallbacksController;)Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 84
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->broadcastTaskCreatedCallbacks(ILandroid/content/ComponentName;)V

    :cond_11
    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {v0}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$fgetmRemoteCallbacks(Lcom/android/server/vr/XrStateCallbacksController;)Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 112
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {p0, p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$mbroadcastTaskDisplayChangedCallbacks(Lcom/android/server/vr/XrStateCallbacksController;II)V

    :cond_11
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {v0}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$fgetmRemoteCallbacks(Lcom/android/server/vr/XrStateCallbacksController;)Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 105
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {p0, p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$mbroadcastTaskFocusChangedCallbacks(Lcom/android/server/vr/XrStateCallbacksController;IZ)V

    :cond_11
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {v0}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$fgetmRemoteCallbacks(Lcom/android/server/vr/XrStateCallbacksController;)Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$mbroadcastTaskMovedToFrontCallbacks(Lcom/android/server/vr/XrStateCallbacksController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_11
    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {v0}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$fgetmRemoteCallbacks(Lcom/android/server/vr/XrStateCallbacksController;)Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 91
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$mbroadcastTaskRemovedCallbacks(Lcom/android/server/vr/XrStateCallbacksController;I)V

    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XrTaskStackListener@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
