.class public final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .registers 2

    .line 6142
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 6143
    invoke-static {}, Lcom/android/server/pm/PmHandlerThread2;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 6149
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6150
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 6153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$fgetmLastWriteDoneTimeMillis(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_2c

    sub-long/2addr v3, v1

    .line 6156
    iget-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$fgetmAsyncHandler(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 6157
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$fgetmAsyncHandler(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 6162
    :cond_2c
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$fgetmInvokeWriteUserStateAsyncCallback(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eqz p1, :cond_3e

    .line 6164
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3e
    return-void
.end method
