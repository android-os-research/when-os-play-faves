.class public Lcom/android/ims/ImsUt$IImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/ImsUt;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsUt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/ImsUt;

    .line 694
    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$lineIdentificationSupplementaryServiceResponse$2$com-android-ims-ImsUt$IImsUtListenerProxy(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;

    .line 751
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 752
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-static {v1, v2, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 753
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method synthetic blacklist lambda$onSupplementaryServiceIndication$7$com-android-ims-ImsUt$IImsUtListenerProxy(Landroid/telephony/ims/ImsSsData;)V
    .registers 3
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 824
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 825
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmSsIndicationRegistrant(Lcom/android/ims/ImsUt;)Lcom/android/ims/Registrant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 827
    :cond_11
    return-void
.end method

.method synthetic blacklist lambda$utConfigurationCallBarringQueried$4$com-android-ims-ImsUt$IImsUtListenerProxy(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 777
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 779
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 780
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 781
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    monitor-exit v1

    .line 783
    return-void

    .line 782
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method synthetic blacklist lambda$utConfigurationCallForwardQueried$5$com-android-ims-ImsUt$IImsUtListenerProxy(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 793
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 795
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 796
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 797
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method synthetic blacklist lambda$utConfigurationCallWaitingQueried$6$com-android-ims-ImsUt$IImsUtListenerProxy(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 811
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 812
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 813
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    monitor-exit v1

    .line 815
    return-void

    .line 814
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method synthetic blacklist lambda$utConfigurationQueryFailed$3$com-android-ims-ImsUt$IImsUtListenerProxy(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 763
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 764
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 765
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method synthetic blacklist lambda$utConfigurationUpdateFailed$1$com-android-ims-ImsUt$IImsUtListenerProxy(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 715
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 716
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3, p2}, Lcom/android/ims/ImsUt;->-$$Nest$msendFailureReport(Lcom/android/ims/ImsUt;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 717
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method synthetic blacklist lambda$utConfigurationUpdated$0$com-android-ims-ImsUt$IImsUtListenerProxy(I)V
    .registers 6
    .param p1, "id"    # I

    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 703
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 704
    :try_start_b
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-static {v2, v3}, Lcom/android/ims/ImsUt;->-$$Nest$msendSuccessReport(Lcom/android/ims/ImsUt;Landroid/os/Message;)V

    .line 705
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v2}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmPendingCmds(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v1

    .line 707
    return-void

    .line 706
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method public blacklist lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;

    .line 750
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 756
    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .registers 4
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 823
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 828
    return-void
.end method

.method public blacklist utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 776
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 784
    return-void
.end method

.method public blacklist utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 792
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 800
    return-void
.end method

.method public blacklist utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 808
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 816
    return-void
.end method

.method public blacklist utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .line 728
    const-string v0, "queryClir"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 729
    .local v0, "clirResponse":[I
    if-eqz v0, :cond_28

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 731
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    .line 732
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 733
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 734
    .local v1, "info":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p0, p2, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 735
    return-void

    .line 737
    .end local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    :cond_28
    const-string v1, "imsSsInfo"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    .line 738
    .restart local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v1, :cond_36

    .line 739
    invoke-virtual {p0, p2, v1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 740
    return-void

    .line 742
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid utConfigurationQueried response received for Bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUt"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method public blacklist utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 760
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 768
    return-void
.end method

.method public blacklist utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 712
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 720
    return-void
.end method

.method public blacklist utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .registers 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .line 700
    new-instance v0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I)V

    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v1}, Lcom/android/ims/ImsUt;->-$$Nest$fgetmExecutor(Lcom/android/ims/ImsUt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 708
    return-void
.end method
