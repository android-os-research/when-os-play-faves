.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UcmAgentWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$fgetmHandler(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$fputmUcmAgentService(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;)V

    .line 176
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_d0

    .line 177
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_d0

    const-string p2, "com.samsung.ucs.agent.boot"

    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v1, :cond_6c

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify binding done (bootagent refresh) : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.action.BOOTAGENT_REFRESH_DONE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$fgetmContext(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_d0

    .line 184
    :cond_6c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify binding done : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "PackageName"

    .line 186
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$fgetmContext(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    :cond_97
    :goto_97
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mEventBoxQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d0

    .line 190
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mEventBoxQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;

    if-eqz p1, :cond_97

    .line 193
    :try_start_ad
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->eventId:I

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->eventData:Landroid/os/Bundle;

    invoke-virtual {p2, v1, p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b6} :catch_b7

    goto :goto_97

    :catch_b7
    move-exception p1

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Noti was not sent cause binding, send notifyChange : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_97

    :cond_d0
    :goto_d0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UcmAgentWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$fputmUcmAgentService(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;)V

    .line 209
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$fgetmBound(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 210
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-$$Nest$mscheduleRestart(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    :cond_2a
    return-void
.end method
