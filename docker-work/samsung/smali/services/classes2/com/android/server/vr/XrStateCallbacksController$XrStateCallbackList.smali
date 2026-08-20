.class public Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "XrStateCallbacksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/XrStateCallbacksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XrStateCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/samsung/android/vr/IXrStateCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrStateCallbacksController;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrStateCallbacksController;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 40
    check-cast p1, Lcom/samsung/android/vr/IXrStateCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;->onCallbackDied(Lcom/samsung/android/vr/IXrStateCallbacks;)V

    return-void
.end method

.method public onCallbackDied(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallbackDied cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XrStateCallbacksController"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p1}, Lcom/android/server/vr/XrStateCallbacksController;->getXrStateListenerCount()I

    move-result p1

    if-nez p1, :cond_24

    .line 46
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;->this$0:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-static {p0}, Lcom/android/server/vr/XrStateCallbacksController;->-$$Nest$munregisterSystemCallback(Lcom/android/server/vr/XrStateCallbacksController;)V

    :cond_24
    return-void
.end method
