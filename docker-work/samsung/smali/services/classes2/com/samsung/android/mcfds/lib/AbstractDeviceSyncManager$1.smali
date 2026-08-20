.class public Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public obtain(ILandroid/os/Bundle;)Landroid/os/Message;
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 122
    iput p1, p0, Landroid/os/Message;->what:I

    .line 123
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public sendMessage(Landroid/os/Message;)I
    .registers 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_12

    const-string/jumbo p0, "sendMessage : Service is invalid"

    .line 130
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 135
    :cond_12
    :try_start_12
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommand(Landroid/os/Message;)I

    move-result p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage : [ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public sendMessage(Landroid/os/Message;Landroid/os/Bundle;)I
    .registers 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_12

    const-string/jumbo p0, "sendMessage : Service is invalid"

    .line 145
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 150
    :cond_12
    :try_start_12
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendMessage : [ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
