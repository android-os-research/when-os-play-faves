.class public Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Landroid/telephony/ims/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/ImsCall;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;

    .line 2777
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 6
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 3905
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3906
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3907
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3909
    if-eqz v1, :cond_1a

    .line 3911
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3914
    goto :goto_1a

    .line 3912
    :catchall_12
    move-exception v0

    .line 3913
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callQualityChanged:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3916
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3907
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionCancelTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3799
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3800
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3801
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3802
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 3804
    if-eqz v1, :cond_20

    .line 3806
    :try_start_12
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    .line 3809
    goto :goto_20

    .line 3807
    :catchall_18
    move-exception v0

    .line 3808
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionCancelTransferFailed:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3811
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    return-void

    .line 3802
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist callSessionCancelTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3781
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3782
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3783
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3784
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 3786
    if-eqz v1, :cond_20

    .line 3788
    :try_start_12
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferred(Lcom/android/ims/ImsCall;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    .line 3791
    goto :goto_20

    .line 3789
    :catchall_18
    move-exception v0

    .line 3790
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionCancelTransferred:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3793
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    return-void

    .line 3784
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3386
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3388
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3389
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3391
    return-void

    .line 3396
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3397
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3398
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3399
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_5a

    .line 3401
    if-eqz v1, :cond_59

    .line 3403
    :try_start_4b
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_51

    .line 3406
    goto :goto_59

    .line 3404
    :catchall_51
    move-exception v0

    .line 3405
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionConferenceExtendFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3408
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_59
    :goto_59
    return-void

    .line 3399
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public blacklist callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3413
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3416
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3417
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3419
    return-void

    .line 3422
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2, p3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3424
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_4c

    .line 3426
    return-void

    .line 3431
    :cond_4c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3432
    :try_start_4f
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3433
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_67

    .line 3435
    if-eqz v2, :cond_66

    .line 3437
    :try_start_58
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_5e

    .line 3440
    goto :goto_66

    .line 3438
    :catchall_5e
    move-exception v1

    .line 3439
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtendReceived :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3442
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_66
    :goto_66
    return-void

    .line 3433
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v2
.end method

.method public blacklist callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3351
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3354
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3355
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3357
    return-void

    .line 3360
    :cond_4d
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2, p3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3362
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_5e

    .line 3363
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3364
    return-void

    .line 3369
    :cond_5e
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3370
    :try_start_61
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3371
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3372
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_7f

    .line 3374
    if-eqz v2, :cond_7e

    .line 3376
    :try_start_70
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_76

    .line 3379
    goto :goto_7e

    .line 3377
    :catchall_76
    move-exception v1

    .line 3378
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtended :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3381
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7e
    :goto_7e
    return-void

    .line 3372
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2
.end method

.method public blacklist callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3551
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3552
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3553
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .registers 6
    .param p1, "digit"    # C

    .line 3888
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3889
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3890
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3892
    if-eqz v1, :cond_1a

    .line 3894
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3897
    goto :goto_1a

    .line 3895
    :catchall_12
    move-exception v0

    .line 3896
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionDtmfReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3899
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3890
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3633
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3639
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3640
    :try_start_39
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3641
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_59

    .line 3643
    if-eqz v1, :cond_58

    .line 3645
    :try_start_42
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 3646
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 3647
    invoke-static {p3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 3645
    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    .line 3651
    goto :goto_58

    .line 3649
    :catchall_50
    move-exception v0

    .line 3650
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandover :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3653
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 3641
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public blacklist callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3658
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3664
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3665
    :try_start_39
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3666
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_59

    .line 3668
    if-eqz v1, :cond_58

    .line 3670
    :try_start_42
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 3671
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 3672
    invoke-static {p3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 3670
    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    .line 3676
    goto :goto_58

    .line 3674
    :catchall_50
    move-exception v0

    .line 3675
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandoverFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3678
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 3666
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public blacklist callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2937
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2940
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2943
    :try_start_25
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2945
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2947
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a1

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmTerminationRequestPending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 2950
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$misMergePeer(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 2952
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->supportHeldHostMerge()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 2954
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 2955
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2956
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateResumeMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2957
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2958
    monitor-exit v0

    return-void

    .line 2963
    :cond_9a
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V

    .line 2964
    monitor-exit v0

    return-void

    .line 2966
    :cond_a1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_f0

    .line 2967
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_e2

    .line 2968
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: Now try to resume single-party session."

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2969
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateResumeMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2970
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    goto :goto_ee

    .line 2972
    :cond_e2
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionHeld :: Completed go back to held for conf session and clearMergeInfo() here."

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2973
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 2975
    :goto_ee
    monitor-exit v0

    return-void

    .line 2979
    :cond_f0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2980
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2981
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2982
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_25 .. :try_end_102} :catchall_113

    .line 2984
    if-eqz v1, :cond_112

    .line 2986
    :try_start_104
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_109
    .catchall {:try_start_104 .. :try_end_109} :catchall_10a

    .line 2989
    goto :goto_112

    .line 2987
    :catchall_10a
    move-exception v0

    .line 2988
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2991
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_112
    :goto_112
    return-void

    .line 2982
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_113
    move-exception v1

    :try_start_114
    monitor-exit v0
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v1
.end method

.method public blacklist callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2995
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2999
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3001
    return-void

    .line 3004
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3007
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3008
    :try_start_6c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 3009
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_b5

    .line 3011
    const/4 v0, 0x0

    .line 3014
    .local v0, "isHoldForMerge":Z
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3015
    :try_start_77
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_87

    .line 3016
    const/4 v0, 0x1

    .line 3017
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    goto :goto_95

    .line 3019
    :cond_87
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_95

    .line 3020
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 3024
    :cond_95
    :goto_95
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3025
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3026
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_77 .. :try_end_a1} :catchall_b2

    .line 3028
    if-eqz v2, :cond_b1

    .line 3030
    :try_start_a3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_a9

    .line 3033
    goto :goto_b1

    .line 3031
    :catchall_a9
    move-exception v1

    .line 3032
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionHoldFailed :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3035
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_b1
    :goto_b1
    return-void

    .line 3026
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_b2
    move-exception v2

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v2

    .line 3009
    .end local v0    # "isHoldForMerge":Z
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public blacklist callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3045
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3047
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3049
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3051
    return-void

    .line 3056
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3057
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3058
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3059
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 3061
    if-eqz v1, :cond_62

    .line 3063
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 3066
    goto :goto_62

    .line 3064
    :catchall_5a
    move-exception v0

    .line 3065
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHoldReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3068
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 3059
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3817
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3818
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3819
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3821
    if-eqz v1, :cond_1a

    .line 3823
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3826
    goto :goto_1a

    .line 3824
    :catchall_12
    move-exception v0

    .line 3825
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionImsCallEvent:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3828
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3819
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2780
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2781
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2783
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2785
    return-void

    .line 2790
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2791
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2792
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2793
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 2795
    if-eqz v1, :cond_62

    .line 2797
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInitiating(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 2800
    goto :goto_62

    .line 2798
    :catchall_5a
    move-exception v0

    .line 2799
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInitiating :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2802
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 2793
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3446
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionInviteParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3448
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3449
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3451
    return-void

    .line 3456
    :cond_28
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3457
    :try_start_2b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3458
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_49

    .line 3460
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V

    .line 3462
    if-eqz v1, :cond_48

    .line 3464
    :try_start_3a
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_40

    .line 3467
    goto :goto_48

    .line 3465
    :catchall_40
    move-exception v0

    .line 3466
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3469
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_48
    :goto_48
    return-void

    .line 3458
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3474
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3476
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3477
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3479
    return-void

    .line 3484
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3485
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3486
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_54

    .line 3488
    if-eqz v1, :cond_53

    .line 3490
    :try_start_45
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    .line 3493
    goto :goto_53

    .line 3491
    :catchall_4b
    move-exception v0

    .line 3492
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3495
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    return-void

    .line 3486
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public blacklist callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .registers 5
    .param p1, "newSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 3226
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: newSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3227
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3229
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V

    goto :goto_36

    .line 3232
    :cond_2a
    if-eqz p1, :cond_31

    .line 3233
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V

    .line 3236
    :cond_31
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V

    .line 3238
    :goto_36
    return-void
.end method

.method public blacklist callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3242
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3251
    :try_start_25
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 3252
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3255
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_79

    .line 3256
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v2, 0xc2b

    if-ne v1, v2, :cond_79

    .line 3257
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: Put the existed conference session on hold."

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3258
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmSession(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateHoldMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3259
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    goto :goto_79

    .line 3261
    :cond_60
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 3262
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_79

    .line 3264
    :cond_72
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: No merge host for this conference!"

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3266
    :cond_79
    :goto_79
    monitor-exit v0

    .line 3267
    return-void

    .line 3266
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_25 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public blacklist callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3192
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3195
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V

    .line 3196
    return-void
.end method

.method public blacklist callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 3611
    invoke-static {}, Lcom/android/ims/ImsCall;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3612
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged isMultiParty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_18

    const-string v2, "Y"

    goto :goto_1a

    .line 3613
    :cond_18
    const-string v2, "N"

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3612
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3618
    :cond_25
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3619
    :try_start_28
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3620
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_40

    .line 3622
    if-eqz v1, :cond_3f

    .line 3624
    :try_start_31
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_37

    .line 3627
    goto :goto_3f

    .line 3625
    :catchall_37
    move-exception v0

    .line 3626
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMultipartyStateChanged :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3629
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3f
    :goto_3f
    return-void

    .line 3620
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public blacklist callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2806
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2808
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2810
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2812
    return-void

    .line 2817
    :cond_43
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 2818
    .local v0, "updatedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2819
    :try_start_4a
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 2822
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v0}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2825
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2826
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_72

    .line 2828
    if-eqz v2, :cond_71

    .line 2830
    :try_start_63
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_69

    .line 2833
    goto :goto_71

    .line 2831
    :catchall_69
    move-exception v1

    .line 2832
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionProgressing :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2835
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_71
    :goto_71
    return-void

    .line 2826
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2
.end method

.method public blacklist callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3499
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRemoveParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3501
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3502
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3504
    return-void

    .line 3509
    :cond_28
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3510
    :try_start_2b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3511
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_43

    .line 3513
    if-eqz v1, :cond_42

    .line 3515
    :try_start_34
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    .line 3518
    goto :goto_42

    .line 3516
    :catchall_3a
    move-exception v0

    .line 3517
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3520
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_42
    :goto_42
    return-void

    .line 3511
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public blacklist callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3525
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3527
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3528
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3530
    return-void

    .line 3535
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3536
    :try_start_3c
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3537
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_54

    .line 3539
    if-eqz v1, :cond_53

    .line 3541
    :try_start_45
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    .line 3544
    goto :goto_53

    .line 3542
    :catchall_4b
    move-exception v0

    .line 3543
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3546
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    return-void

    .line 3537
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public blacklist callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3127
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3129
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3130
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3132
    return-void

    .line 3135
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3136
    :try_start_4a
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 3137
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_9a

    .line 3141
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3142
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_64

    .line 3143
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    goto :goto_79

    .line 3145
    :cond_64
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 3146
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 3150
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 3151
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3152
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_54 .. :try_end_86} :catchall_97

    .line 3154
    if-eqz v0, :cond_96

    .line 3156
    :try_start_88
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_8e

    .line 3159
    goto :goto_96

    .line 3157
    :catchall_8e
    move-exception v1

    .line 3158
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeFailed :: "

    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3161
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_96
    :goto_96
    return-void

    .line 3152
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    .line 3137
    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method public blacklist callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3165
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3167
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3168
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3170
    return-void

    .line 3175
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3176
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3177
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3178
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 3180
    if-eqz v1, :cond_62

    .line 3182
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 3185
    goto :goto_62

    .line 3183
    :catchall_5a
    move-exception v0

    .line 3184
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3187
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 3178
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3078
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3080
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3081
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3083
    return-void

    .line 3088
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 3098
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3099
    :try_start_4c
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3100
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3102
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 3103
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6d

    .line 3105
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V

    .line 3106
    monitor-exit v0

    return-void

    .line 3107
    :cond_6d
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    if-nez v3, :cond_8b

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_8b

    .line 3108
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: Completed go back to original call status and clearMergeInfo() here."

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3109
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 3110
    monitor-exit v0

    return-void

    .line 3112
    :cond_8b
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3114
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_4c .. :try_end_91} :catchall_a2

    .line 3116
    if-eqz v2, :cond_a1

    .line 3118
    :try_start_93
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_99

    .line 3121
    goto :goto_a1

    .line 3119
    :catchall_99
    move-exception v0

    .line 3120
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: "

    invoke-static {v1, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3123
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_a1
    :goto_a1
    return-void

    .line 3114
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_a2
    move-exception v1

    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 3923
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3924
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3925
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3927
    if-eqz v1, :cond_1a

    .line 3929
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3932
    goto :goto_1a

    .line 3930
    :catchall_12
    move-exception v0

    .line 3931
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRtpHeaderExtensionsReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3934
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3925
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 6
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 3835
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3836
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3837
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3839
    if-eqz v1, :cond_1a

    .line 3841
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3844
    goto :goto_1a

    .line 3842
    :catchall_12
    move-exception v0

    .line 3843
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttAudioIndicatorChanged:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3846
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3837
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 6
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 3763
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3764
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3765
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 3767
    if-eqz v1, :cond_1a

    .line 3769
    :try_start_c
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 3772
    goto :goto_1a

    .line 3770
    :catchall_12
    move-exception v0

    .line 3771
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttMessageReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3774
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1a
    :goto_1a
    return-void

    .line 3765
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3711
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRttModifyRequestReceived"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3713
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3714
    :try_start_a
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3716
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3718
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_33

    .line 3730
    if-eqz v1, :cond_32

    .line 3732
    :try_start_24
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    .line 3735
    goto :goto_32

    .line 3733
    :catchall_2a
    move-exception v0

    .line 3734
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyRequestReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3737
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    return-void

    .line 3718
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist callSessionRttModifyResponseReceived(I)V
    .registers 6
    .param p1, "status"    # I

    .line 3743
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3744
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3745
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3746
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_39

    .line 3748
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3750
    if-eqz v1, :cond_38

    .line 3752
    :try_start_2a
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    .line 3755
    goto :goto_38

    .line 3753
    :catchall_30
    move-exception v0

    .line 3754
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyResponseReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3757
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_38
    :goto_38
    return-void

    .line 3746
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2875
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2879
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2881
    return-void

    .line 2884
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmIsConferenceHost(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2887
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V

    .line 2892
    :cond_51
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2893
    :try_start_54
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2894
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmLastReasonInfo(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2895
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_71

    .line 2897
    if-eqz v1, :cond_70

    .line 2899
    :try_start_62
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_68

    .line 2902
    goto :goto_70

    .line 2900
    :catchall_68
    move-exception v0

    .line 2901
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2904
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_70
    :goto_70
    return-void

    .line 2895
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public blacklist callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2839
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2841
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 2845
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2851
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2853
    return-void

    .line 2858
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2859
    :try_start_3c
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 2860
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2861
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2862
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_5e

    .line 2864
    if-eqz v2, :cond_5d

    .line 2866
    :try_start_4f
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 2869
    goto :goto_5d

    .line 2867
    :catchall_55
    move-exception v0

    .line 2868
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-static {v1, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2871
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :goto_5d
    return-void

    .line 2862
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1

    .line 2847
    :cond_61
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2848
    return-void
.end method

.method public blacklist callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 3683
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3684
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3686
    return-void

    .line 3689
    :cond_21
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", suppServiceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3694
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3695
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3696
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5e

    .line 3698
    if-eqz v1, :cond_5d

    .line 3700
    :try_start_4f
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 3703
    goto :goto_5d

    .line 3701
    :catchall_55
    move-exception v0

    .line 3702
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSuppServiceReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3705
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :goto_5d
    return-void

    .line 3696
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public blacklist callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2908
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2910
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2911
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2915
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2916
    return-void

    .line 2919
    :cond_48
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v0

    if-eqz v0, :cond_82

    .line 2920
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: overrideReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2921
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 2922
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object p2, v0

    .line 2928
    :cond_82
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2931
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2933
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3870
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3871
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3872
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3873
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 3875
    if-eqz v1, :cond_20

    .line 3877
    :try_start_12
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    .line 3880
    goto :goto_20

    .line 3878
    :catchall_18
    move-exception v0

    .line 3879
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTransferFailed:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3882
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    return-void

    .line 3873
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3852
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3853
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3854
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3855
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 3857
    if-eqz v1, :cond_20

    .line 3859
    :try_start_12
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    .line 3862
    goto :goto_20

    .line 3860
    :catchall_18
    move-exception v0

    .line 3861
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTransferred:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3864
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    return-void

    .line 3855
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 3584
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3588
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3589
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3590
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_33

    .line 3592
    if-eqz v1, :cond_32

    .line 3594
    :try_start_24
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    .line 3597
    goto :goto_32

    .line 3595
    :catchall_2a
    move-exception v0

    .line 3596
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTtyModeReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3599
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    return-void

    .line 3590
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3297
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3299
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3300
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3302
    return-void

    .line 3307
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3308
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3309
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3310
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_64

    .line 3312
    if-eqz v1, :cond_63

    .line 3314
    :try_start_55
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5b

    .line 3317
    goto :goto_63

    .line 3315
    :catchall_5b
    move-exception v0

    .line 3316
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3319
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_63
    :goto_63
    return-void

    .line 3310
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public blacklist callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3323
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3325
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3326
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3328
    return-void

    .line 3333
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3334
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3335
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmProposedCallProfile(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)V

    .line 3336
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3337
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_6a

    .line 3339
    if-eqz v1, :cond_69

    .line 3341
    :try_start_5b
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_61

    .line 3344
    goto :goto_69

    .line 3342
    :catchall_61
    move-exception v0

    .line 3343
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3346
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_69
    :goto_69
    return-void

    .line 3337
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public blacklist callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3271
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3273
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3274
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3276
    return-void

    .line 3281
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3282
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3283
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3284
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_63

    .line 3286
    if-eqz v1, :cond_62

    .line 3288
    :try_start_54
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    .line 3291
    goto :goto_62

    .line 3289
    :catchall_5a
    move-exception v0

    .line 3290
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdated :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3293
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_62
    :goto_62
    return-void

    .line 3284
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 3558
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ussdMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3561
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3562
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3564
    return-void

    .line 3569
    :cond_43
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3570
    :try_start_46
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3571
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5e

    .line 3573
    if-eqz v1, :cond_5d

    .line 3575
    :try_start_4f
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 3578
    goto :goto_5d

    .line 3576
    :catchall_55
    move-exception v0

    .line 3577
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUssdMessageReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3580
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :goto_5d
    return-void

    .line 3571
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method
