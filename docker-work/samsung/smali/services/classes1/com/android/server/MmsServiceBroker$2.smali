.class public Lcom/android/server/MmsServiceBroker$2;
.super Ljava/lang/Object;
.source "MmsServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "MmsServiceBroker"

    const-string v0, "MmsService connected"

    .line 99
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter p1

    .line 101
    :try_start_a
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/MmsServiceBroker;->-$$Nest$fputmService(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)V

    .line 102
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string p1, "MmsServiceBroker"

    const-string v0, "MmsService unexpectedly disconnected"

    .line 108
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter p1

    .line 110
    :try_start_a
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/MmsServiceBroker;->-$$Nest$fputmService(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2d

    .line 115
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p1}, Lcom/android/server/MmsServiceBroker;->-$$Nest$fgetmConnectionHandler(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$fgetmConnectionHandler(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    .line 115
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_2d
    move-exception p0

    .line 112
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method
