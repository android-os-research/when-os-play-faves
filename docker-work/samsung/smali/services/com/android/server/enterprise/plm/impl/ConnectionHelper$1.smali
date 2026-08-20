.class public Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 31
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 35
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected! Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Landroid/os/IBinder;)V

    .line 37
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mgetPidFromPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmProcessId(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;I)V

    .line 38
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 39
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    .line 40
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 41
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;->onConnect()V

    .line 42
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;)V

    .line 45
    :cond_53
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 46
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;->onConnect()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_88

    :catch_65
    move-exception p1

    .line 50
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in onServiceConnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    :cond_88
    :goto_88
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 58
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected! Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnection(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 60
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmProcessId(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;I)V

    .line 61
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fputmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Landroid/os/IBinder;)V

    .line 62
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 63
    iget-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-static {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;->onDisconnect()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_6c

    :catch_49
    move-exception p1

    .line 66
    invoke-static {}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in onServiceDisconnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->-$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    :cond_6c
    :goto_6c
    return-void
.end method
