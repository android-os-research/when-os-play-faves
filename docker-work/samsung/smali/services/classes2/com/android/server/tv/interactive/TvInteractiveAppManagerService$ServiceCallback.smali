.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceCallback"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    .line 1985
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;-><init>()V

    .line 1986
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 1987
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public onStateChanged(III)V
    .registers 14

    .line 1992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1994
    :try_start_4
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_31

    .line 1995
    :try_start_b
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-result-object v3

    .line 1996
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/lang/String;

    move-result-object v6

    .line 1997
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v5

    .line 1998
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V

    .line 1999
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2e

    .line 2001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 1999
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 2001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2002
    throw p0
.end method
