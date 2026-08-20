.class public Lcom/android/server/media/MediaSessionService$1;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/media/MediaCommunicationManager$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSession2TokenCreated(Landroid/media/Session2Token;)V
    .registers 6

    .line 185
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "MediaSessionService"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session2 is created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1a
    new-instance v0, Lcom/android/server/media/MediaSession2Record;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmRecordThread(Lcom/android/server/media/MediaSessionService;)Landroid/os/HandlerThread;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/media/MediaSession2Record;-><init>(Landroid/media/Session2Token;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V

    .line 190
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 191
    :try_start_31
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSession2Record;->getUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 193
    invoke-static {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 195
    :cond_44
    monitor-exit p1

    return-void

    :catchall_46
    move-exception p0

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_46

    throw p0
.end method
