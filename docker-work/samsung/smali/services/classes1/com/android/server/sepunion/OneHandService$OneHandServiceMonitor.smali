.class public Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;
.super Ljava/lang/Object;
.source "OneHandService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/OneHandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneHandServiceMonitor"
.end annotation


# instance fields
.field public mRestartRunnable:Ljava/lang/Runnable;

.field public mWatcher:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/sepunion/OneHandService;


# direct methods
.method public static synthetic $r8$lambda$U_E6L7j7HjEJ9lDYap2yKVFWH8c(Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/OneHandService;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance p1, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;)V

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/OneHandService;Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {p0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 219
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {v0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/OneHandService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_disabled_by_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz v0, :cond_70

    .line 223
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 225
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandService has died unexpectedly"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {v0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/OneHandService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {v0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/OneHandService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_56} :catch_57

    goto :goto_70

    :catch_57
    move-exception p0

    .line 231
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception on binderDied() e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    return-void
.end method

.method public isAlive()Z
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

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

    .line 194
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerWatcher() binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", watcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_23
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-nez v0, :cond_47

    const/4 v0, 0x0

    .line 197
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 198
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_47

    :catch_2e
    move-exception p0

    .line 201
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 206
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterWatcher() binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", watcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz v0, :cond_4a

    if-ne v0, p1, :cond_4a

    const/4 v0, 0x0

    .line 209
    :try_start_2a
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_4a

    :catch_31
    move-exception p0

    .line 212
    invoke-static {}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$sfgetTAG()Ljava/lang/String;

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
