.class public Lcom/android/server/media/MediaSession2Record;
.super Ljava/lang/Object;
.source "MediaSession2Record.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionRecordImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSession2Record$Controller2Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MediaSession2Record"


# instance fields
.field public final mController:Landroid/media/MediaController2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandlerExecutor:Lcom/android/server/media/HandlerExecutor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsClosed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPolicies:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/media/MediaSessionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSessionToken:Landroid/media/Session2Token;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsConnected(Lcom/android/server/media/MediaSession2Record;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaSession2Record"

    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/Session2Token;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .registers 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 61
    monitor-enter v0

    .line 62
    :try_start_b
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 63
    iput-object p2, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    .line 64
    new-instance v1, Lcom/android/server/media/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/android/server/media/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mHandlerExecutor:Lcom/android/server/media/HandlerExecutor;

    .line 65
    new-instance p3, Landroid/media/MediaController2$Builder;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/media/MediaController2$Builder;-><init>(Landroid/content/Context;Landroid/media/Session2Token;)V

    new-instance p1, Lcom/android/server/media/MediaSession2Record$Controller2Callback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;Lcom/android/server/media/MediaSession2Record$Controller2Callback-IA;)V

    .line 66
    invoke-virtual {p3, v1, p1}, Landroid/media/MediaController2$Builder;->setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/media/MediaController2$Builder;->build()Landroid/media/MediaController2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 68
    iput p4, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    .line 69
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_38

    throw p0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .registers 9

    return-void
.end method

.method public canHandleVolumeKey()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public checkPlaybackActiveState(Z)Z
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->isPlaybackActive()Z

    move-result p0

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public close()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 127
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsClosed:Z

    .line 130
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    .line 131
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "playbackActive="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->isPlaybackActive()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {p0}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSession2Token()Landroid/media/Session2Token;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    return-object p0
.end method

.method public getSessionPolicies()I
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget p0, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUid()I
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {p0}, Landroid/media/Session2Token;->getUid()I

    move-result p0

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {p0}, Landroid/media/Session2Token;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public isActive()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 108
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isClosed()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/media/MediaSession2Record;->mIsClosed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isPlaybackTypeLocal()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSystemPriority()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 8

    const/4 p0, 0x0

    return p0
.end method

.method public setSessionPolicies(I)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iput p1, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    .line 165
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/media/MediaSession2Record;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSession2Record;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
