.class public Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 189
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retry bind with counter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBindCounter(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Failed to bind to service!"

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBindCounter(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)I

    move-result v0

    if-ltz v0, :cond_6e

    .line 192
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bind timeout expired, keep retrying ..."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->bindService()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 195
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bindService failed while retrying!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 198
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;->onError(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    :goto_68
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;)V

    :cond_6d
    return-void

    .line 206
    :cond_6e
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 207
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind timeout expired, bound to service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 209
    :cond_80
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bind timeout expired, stop retrying."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 212
    :try_start_91
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;->onError(Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception v0

    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    :goto_9f
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;)V

    .line 220
    :cond_a4
    :goto_a4
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    return-void
.end method
