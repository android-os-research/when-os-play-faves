.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatcherStartCallback"
.end annotation


# instance fields
.field public mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field public mInfo:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 838
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    invoke-interface {v0, p0}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onStart(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Failed to notify media projection has stopped"

    .line 846
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method
