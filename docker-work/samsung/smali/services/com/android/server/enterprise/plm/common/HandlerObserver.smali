.class public Lcom/android/server/enterprise/plm/common/HandlerObserver;
.super Ljava/lang/Object;
.source "HandlerObserver.java"


# instance fields
.field public final handler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->handler:Ljava/lang/ref/WeakReference;

    .line 13
    iput p2, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public notifyMessage()V
    .registers 3

    .line 21
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 23
    :cond_7
    iget p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMessage(Ljava/lang/Object;)V
    .registers 4

    .line 27
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 29
    :cond_7
    iget p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 33
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 35
    :cond_7
    iget p0, p0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
