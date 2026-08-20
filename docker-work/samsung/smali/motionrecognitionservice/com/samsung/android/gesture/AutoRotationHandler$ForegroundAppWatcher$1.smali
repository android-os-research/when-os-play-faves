.class Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

.field final synthetic val$this$0:Lcom/samsung/android/gesture/AutoRotationHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;Lcom/samsung/android/gesture/AutoRotationHandler;)V
    .registers 3
    .param p1, "this$1"    # Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    .line 293
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    iput-object p2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;->val$this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 308
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 7
    .param p1, "resumeComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->-$$Nest$fputmForegroundPkg(Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    iget-boolean v0, v0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mCheckPkg:Z

    if-eqz v0, :cond_2a

    .line 299
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 300
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->-$$Nest$fgetmForegroundPkg(Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    iget-object v1, v1, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2a
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 312
    return-void
.end method
