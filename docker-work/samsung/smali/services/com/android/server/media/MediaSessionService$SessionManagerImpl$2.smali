.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final synthetic val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .registers 3

    .line 1852
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1855
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1856
    :try_start_9
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V

    .line 1857
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method
