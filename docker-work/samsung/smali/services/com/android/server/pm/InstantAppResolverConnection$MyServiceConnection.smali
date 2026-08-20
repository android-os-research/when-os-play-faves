.class public final Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "InstantAppResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 307
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$sfgetDEBUG_INSTANT()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "PackageManager"

    const-string v0, "Connected to instant app resolver"

    .line 308
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 311
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Landroid/app/IInstantAppResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fputmRemoteInstance(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/app/IInstantAppResolver;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmBindState(Lcom/android/server/pm/InstantAppResolverConnection;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2c

    .line 313
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v0, v2}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fputmBindState(Lcom/android/server/pm/InstantAppResolverConnection;I)V
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_42

    .line 316
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_42

    goto :goto_37

    .line 318
    :catch_32
    :try_start_32
    iget-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$mhandleBinderDiedLocked(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 320
    :goto_37
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit p1

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 326
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$sfgetDEBUG_INSTANT()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "PackageManager"

    const-string v0, "Disconnected from instant app resolver"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$fgetmLock(Lcom/android/server/pm/InstantAppResolverConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 330
    :try_start_14
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->-$$Nest$mhandleBinderDiedLocked(Lcom/android/server/pm/InstantAppResolverConnection;)V

    .line 331
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0
.end method
