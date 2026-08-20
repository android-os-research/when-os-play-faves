.class Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;
.super Landroid/os/Handler;
.source "UceRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UceRequestHandler"
.end annotation


# static fields
.field private static final blacklist EVENT_COORDINATOR_FINISHED:I = 0x5

.field private static blacklist EVENT_DESCRIPTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EVENT_EXECUTE_REQUEST:I = 0x1

.field private static final blacklist EVENT_REQUEST_FINISHED:I = 0x4

.field private static final blacklist EVENT_REQUEST_TIMEOUT:I = 0x3

.field private static final blacklist EVENT_REQUEST_UPDATED:I = 0x2


# instance fields
.field private final blacklist mRequestTimeoutTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUceRequestMgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 922
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    .line 924
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXECUTE_REQUEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_FINISHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REMOVE_COORDINATOR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;Landroid/os/Looper;)V
    .registers 4
    .param p1, "requestManager"    # Lcom/android/ims/rcs/uce/request/UceRequestManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 743
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    .line 745
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mUceRequestMgrRef:Ljava/lang/ref/WeakReference;

    .line 746
    return-void
.end method

.method static synthetic blacklist lambda$onDestroy$0(Ljava/lang/Long;Lcom/android/ims/SomeArgs;)V
    .registers 3
    .param p0, "taskId"    # Ljava/lang/Long;
    .param p1, "args"    # Lcom/android/ims/SomeArgs;

    .line 846
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/SomeArgs;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 847
    :goto_3
    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    .line 848
    :goto_6
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 855
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mUceRequestMgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;

    .line 856
    .local v0, "requestManager":Lcom/android/ims/rcs/uce/request/UceRequestManager;
    if-nez v0, :cond_b

    .line 857
    return-void

    .line 859
    :cond_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 860
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 861
    .local v2, "coordinatorId":Ljava/lang/Long;
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 862
    .local v3, "taskId":Ljava/lang/Long;
    iget v4, v1, Lcom/android/ims/SomeArgs;->argi1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 863
    .local v4, "requestEvent":Ljava/lang/Integer;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 865
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", coordinatorId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 867
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_e8

    goto :goto_e7

    .line 909
    :pswitch_7b
    nop

    .line 910
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mremoveRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v5

    .line 911
    .local v5, "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-eqz v5, :cond_e7

    .line 912
    invoke-virtual {v5}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    goto :goto_e7

    .line 905
    .end local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :pswitch_86
    invoke-static {v0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mnotifyRepositoryRequestFinished(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)V

    .line 906
    goto :goto_e7

    .line 888
    :pswitch_8a
    nop

    .line 889
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mgetRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v5

    .line 890
    .restart local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-nez v5, :cond_97

    .line 891
    const-string v6, "handleMessage: cannot find UceRequestCoordinator"

    invoke-static {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 892
    return-void

    .line 895
    :cond_97
    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v6

    .line 896
    :try_start_9a
    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    monitor-exit v6
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_aa

    .line 899
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onRequestUpdated(JI)V

    .line 901
    goto :goto_e7

    .line 897
    :catchall_aa
    move-exception v7

    :try_start_ab
    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v7

    .line 878
    .end local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :pswitch_ad
    nop

    .line 879
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mgetRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v5

    .line 880
    .restart local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-nez v5, :cond_ba

    .line 881
    const-string v6, "handleMessage: cannot find UceRequestCoordinator"

    invoke-static {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 882
    return-void

    .line 884
    :cond_ba
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onRequestUpdated(JI)V

    .line 885
    goto :goto_e7

    .line 869
    .end local v5    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    :pswitch_c6
    invoke-static {v0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mgetUceRequest(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v5

    .line 870
    .local v5, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    if-nez v5, :cond_e3

    .line 871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: cannot find request, taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V

    .line 872
    return-void

    .line 874
    :cond_e3
    invoke-interface {v5}, Lcom/android/ims/rcs/uce/request/UceRequest;->executeRequest()V

    .line 875
    nop

    .line 920
    .end local v5    # "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    :cond_e7
    :goto_e7
    return-void

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_ad
        :pswitch_8a
        :pswitch_86
        :pswitch_7b
    .end packed-switch
.end method

.method public blacklist onDestroy()V
    .registers 4

    .line 841
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v0

    .line 844
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    new-instance v2, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 849
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 850
    monitor-exit v0

    .line 851
    return-void

    .line 850
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist removeRequestTimeoutTimer(Ljava/lang/Long;)V
    .registers 7
    .param p1, "taskId"    # Ljava/lang/Long;

    .line 802
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v0

    .line 803
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 804
    .local v1, "args":Lcom/android/ims/SomeArgs;
    if-nez v1, :cond_f

    .line 805
    monitor-exit v0

    return-void

    .line 807
    :cond_f
    invoke-static {}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRequestTimeoutTimer: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->removeMessages(ILjava/lang/Object;)V

    .line 809
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 810
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist sendRequestCoordinatorFinishedMessage(Ljava/lang/Long;)V
    .registers 5
    .param p1, "coordinatorId"    # Ljava/lang/Long;

    .line 828
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 829
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 831
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 832
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 833
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 834
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 835
    return-void
.end method

.method public blacklist sendRequestFinishedMessage(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 6
    .param p1, "coordinatorId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;

    .line 814
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 815
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 816
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 818
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 819
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 820
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 821
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    return-void
.end method

.method public blacklist sendRequestMessage(Ljava/lang/Long;Ljava/lang/Long;J)V
    .registers 8
    .param p1, "coordinatorId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;
    .param p3, "delayTimeMs"    # J

    .line 752
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 753
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 754
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 756
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 757
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 758
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 759
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 760
    return-void
.end method

.method public blacklist sendRequestTimeoutTimerMessage(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 9
    .param p1, "coordId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;
    .param p3, "timeoutAfterMs"    # Ljava/lang/Long;

    .line 782
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    monitor-enter v0

    .line 783
    :try_start_3
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 784
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 785
    iput-object p2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 789
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->mRequestTimeoutTimers:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 792
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 793
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 794
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    nop

    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "message":Landroid/os/Message;
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V
    .registers 7
    .param p1, "coordinatorId"    # Ljava/lang/Long;
    .param p2, "taskId"    # Ljava/lang/Long;
    .param p3, "requestEvent"    # I

    .line 767
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 768
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 769
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 770
    iput p3, v0, Lcom/android/ims/SomeArgs;->argi1:I

    .line 772
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 773
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 774
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    return-void
.end method
