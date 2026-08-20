.class public Lcom/samsung/accessory/manager/SAccessoryManager$1;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticationReady()V
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$minitUsbState(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    return-void
.end method

.method public getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmSessions(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_7
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmSessions(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 153
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_19
    const/4 p0, 0x7

    .line 155
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setAuthenticatedHall(I)V
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fputauthenticatedHall(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    return-void
.end method

.method public start(Landroid/os/Message;Z)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fputauth_state(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-eqz v0, :cond_1d

    .line 126
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3e

    .line 128
    :cond_1d
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p2, :cond_26

    const/4 v1, 0x2

    .line 129
    :cond_26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 132
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3e
    return-void
.end method

.method public stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fputauth_state(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmodelName(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SM-F900"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v0

    if-nez v0, :cond_30

    .line 140
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F900, set auth state true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fputauthState(Lcom/samsung/accessory/manager/SAccessoryManager;Z)V

    goto :goto_4a

    .line 142
    :cond_30
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmodelName(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 143
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F900, set aute state false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fputauthState(Lcom/samsung/accessory/manager/SAccessoryManager;Z)V

    .line 146
    :cond_4a
    :goto_4a
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
