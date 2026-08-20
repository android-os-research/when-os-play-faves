.class Lcom/samsung/android/game/FgCheckThread$1;
.super Landroid/os/RemoteCallbackList;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/samsung/android/game/IGameManagerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$1;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3

    .line 73
    check-cast p1, Lcom/samsung/android/game/IGameManagerCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/FgCheckThread$1;->onCallbackDied(Lcom/samsung/android/game/IGameManagerCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lcom/samsung/android/game/IGameManagerCallback;Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 76
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteCallback died, callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
