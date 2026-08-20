.class public Lcom/android/server/wm/DisplayPolicy$5;
.super Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 4477
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$5;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyTouchEventEnabled(ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTouchEventEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$5;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmIsCmfaStarted(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    if-eqz p1, :cond_52

    .line 4483
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$5;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmIsCmfaStarted(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_47

    .line 4484
    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_44

    .line 4486
    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_54

    .line 4488
    :cond_44
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_54

    :cond_47
    const/4 p1, 0x7

    .line 4491
    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_4f

    .line 4493
    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_54

    .line 4495
    :cond_4f
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_54

    .line 4499
    :cond_52
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4501
    :goto_54
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$5;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
