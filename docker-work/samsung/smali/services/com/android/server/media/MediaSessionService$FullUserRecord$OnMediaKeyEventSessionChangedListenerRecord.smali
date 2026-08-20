.class public final Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$FullUserRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnMediaKeyEventSessionChangedListenerRecord"
.end annotation


# instance fields
.field public final callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V
    .registers 4

    .line 1189
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    .line 1191
    iput p3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1197
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventSessionChangedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    invoke-interface {p0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw p0
.end method
