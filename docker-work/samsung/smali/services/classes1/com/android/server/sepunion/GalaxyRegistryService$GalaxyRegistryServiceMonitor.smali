.class public Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;
.super Ljava/lang/Object;
.source "GalaxyRegistryService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/GalaxyRegistryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalaxyRegistryServiceMonitor"
.end annotation


# instance fields
.field public mRestartRunnable:Ljava/lang/Runnable;

.field public mWatcher:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/sepunion/GalaxyRegistryService;


# direct methods
.method public static synthetic $r8$lambda$sWDyzYxBvppv1GSpKNDG1Ywjno8(Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance p1, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;)V

    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;-><init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-static {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$mstartService(Lcom/android/server/sepunion/GalaxyRegistryService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 218
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz v0, :cond_60

    const/4 v1, 0x0

    .line 222
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 224
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRegistryService has died unexpectedly"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-static {v0}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/GalaxyRegistryService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-static {v0}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/GalaxyRegistryService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_47

    goto :goto_60

    :catch_47
    move-exception p0

    .line 230
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception on binderDied() e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-void
.end method

.method public isAlive()Z
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public registerWatcher(Landroid/os/IBinder;)V
    .registers 5

    .line 193
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerWatcher() binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", watcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_23
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-nez v0, :cond_47

    const/4 v0, 0x0

    .line 196
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 197
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_47

    :catch_2e
    move-exception p0

    .line 200
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception on registerWatcher() e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method public unregisterWatcher(Landroid/os/IBinder;)V
    .registers 5

    .line 205
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterWatcher() binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", watcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz v0, :cond_4a

    if-ne v0, p1, :cond_4a

    const/4 v0, 0x0

    .line 208
    :try_start_2a
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_4a

    :catch_31
    move-exception p0

    .line 211
    invoke-static {}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception on unregisterWatcher() e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-void
.end method
