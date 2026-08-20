.class public Lcom/android/server/audio/MediaFocusControl$3;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->initFocusThreading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .registers 3

    .line 1675
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1678
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    goto/16 :goto_114

    .line 1722
    :cond_11
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1723
    :try_start_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 1724
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "MediaFocusControl"

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: MSG_DELAY_GAIN_AUDIO_FOCUS clientId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 1728
    :cond_66
    monitor-exit v0

    goto/16 :goto_114

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_16 .. :try_end_6b} :catchall_69

    throw p0

    .line 1703
    :cond_6c
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1706
    :try_start_71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 1707
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_de

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_de

    .line 1708
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1709
    :cond_a1
    :goto_a1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1710
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1711
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const-string v3, "MediaFocusControl"

    .line 1712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage: MSG_DELAY_LOSS_AUDIO_FOCUS clientId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1714
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 1715
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_a1

    .line 1719
    :cond_de
    monitor-exit v0

    goto :goto_114

    :catchall_e0
    move-exception p0

    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_71 .. :try_end_e2} :catchall_e0

    throw p0

    .line 1695
    :cond_e3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->-$$Nest$fgetmUid(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I

    move-result p1

    .line 1699
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    goto :goto_114

    .line 1684
    :cond_f5
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1685
    :try_start_fa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 1686
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isInFocusLossLimbo()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 1687
    invoke-virtual {p1, v1}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 1688
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1689
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;I)V

    .line 1691
    :cond_113
    monitor-exit v0

    :goto_114
    return-void

    :catchall_115
    move-exception p0

    monitor-exit v0
    :try_end_117
    .catchall {:try_start_fa .. :try_end_117} :catchall_115

    throw p0
.end method
