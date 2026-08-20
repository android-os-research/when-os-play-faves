.class public Lcom/android/server/connectivity/PacProxyService$2;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 351
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    const-string v0, "PacProxyService"

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding service com.android.net.IProxyService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_24
    .catchall {:try_start_7 .. :try_end_21} :catchall_22

    goto :goto_2c

    :catchall_22
    move-exception p0

    goto :goto_6d

    :catch_24
    move-exception v0

    :try_start_25
    const-string v1, "PacProxyService"

    const-string v2, "Remote Exception"

    .line 356
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    const-string v0, "com.android.net.IProxyService"

    .line 358
    invoke-static {v0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V

    .line 360
    iget-object p2, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyService(Lcom/android/server/connectivity/PacProxyService;)Lcom/android/net/IProxyService;

    move-result-object p2

    if-nez p2, :cond_4a

    const-string p0, "PacProxyService"

    const-string p2, "No proxy service"

    .line 361
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 366
    :cond_4a
    iget-object p2, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 367
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    goto :goto_6b

    .line 369
    :cond_5c
    iget-object p2, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmNetThreadHandler(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmPacDownloader(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    :goto_6b
    monitor-exit p1

    return-void

    :goto_6d
    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_25 .. :try_end_6e} :catchall_22

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 344
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 345
    :try_start_7
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V

    .line 346
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method
