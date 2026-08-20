.class public Lcom/android/server/audio/MediaFocusControl$2;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic val$enteringRingOrCall:Z


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Z)V
    .registers 3

    .line 1566
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iput-boolean p2, p0, Lcom/android/server/audio/MediaFocusControl$2;->val$enteringRingOrCall:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$2;->val$enteringRingOrCall:Z

    if-eqz v0, :cond_e

    const-wide/16 v0, 0x64

    .line 1570
    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 1572
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1575
    :cond_e
    :goto_e
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1578
    :try_start_13
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmRingOrCallActive(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1579
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetUSAGES_TO_MUTE_IN_RING_OR_CALL()[I

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    goto :goto_32

    .line 1581
    :cond_29
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 1583
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_34

    throw p0
.end method
