.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field public mCb:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 3

    .line 656
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 661
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 662
    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusPolicy(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 663
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v1, p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    goto/16 :goto_9c

    :cond_16
    const/4 v1, 0x0

    move v2, v1

    .line 666
    :goto_18
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmMultiFocusStack(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 667
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmMultiFocusStack(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MultiFocusStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    invoke-static {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fputmFocusStack(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)V

    .line 668
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-static {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 670
    :cond_3d
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmMultiFocusStack(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MultiFocusStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fputmFocusStack(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)V

    .line 677
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    .line 678
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 679
    :cond_5c
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 680
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 681
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 682
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 683
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_5c

    .line 702
    :cond_77
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmIgnoredFocus(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmIgnoredFocus(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 703
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmIgnoredFocus(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 704
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fputmIgnoredFocus(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/FocusRequester;)V

    .line 708
    :cond_9c
    :goto_9c
    monitor-exit v0

    return-void

    :catchall_9e
    move-exception p0

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_5 .. :try_end_a0} :catchall_9e

    throw p0
.end method
