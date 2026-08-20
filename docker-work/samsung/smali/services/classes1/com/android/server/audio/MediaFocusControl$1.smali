.class public Lcom/android/server/audio/MediaFocusControl$1;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 3

    .line 812
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$1;->val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 815
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 816
    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 817
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_49

    return-void

    .line 820
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$1;->val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2a
    .catchall {:try_start_13 .. :try_end_29} :catchall_49

    goto :goto_47

    :catch_2a
    move-exception v1

    :try_start_2b
    const-string v2, "MediaFocusControl"

    .line 824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$1;->val$pcb2:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 825
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 824
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_49

    throw p0
.end method
