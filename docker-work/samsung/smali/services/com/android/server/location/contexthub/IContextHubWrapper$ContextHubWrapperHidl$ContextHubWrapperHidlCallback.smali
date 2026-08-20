.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;
.super Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContextHubWrapperHidlCallback"
.end annotation


# instance fields
.field public final mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field public final mContextHubId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .registers 4

    .line 604
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;

    invoke-direct {p0}, Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;-><init>()V

    .line 605
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mContextHubId:I

    .line 606
    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    return-void
.end method


# virtual methods
.method public handleAppAbort(JI)V
    .registers 4

    .line 632
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappAbort(JI)V

    return-void
.end method

.method public handleAppsInfo(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 638
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->handleAppsInfo_1_2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public handleAppsInfo_1_2(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 653
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 654
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappInfo(Ljava/util/List;)V

    return-void
.end method

.method public handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .registers 5

    .line 611
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-short v0, p1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 613
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object p1

    .line 614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 611
    invoke-interface {p0, v0, p1, v1, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleClientMsg_1_2(Landroid/hardware/contexthub/V1_2/ContextHubMsg;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/contexthub/V1_2/ContextHubMsg;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 644
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-object v0, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    iget-short v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 646
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->permissions:Ljava/util/ArrayList;

    .line 644
    invoke-interface {p0, v1, v0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleHubEvent(I)V
    .registers 2

    .line 626
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 627
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toContextHubEvent(I)I

    move-result p1

    .line 626
    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleContextHubEvent(I)V

    return-void
.end method

.method public handleTxnResult(II)V
    .registers 3

    .line 620
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    if-nez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    invoke-interface {p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleTransactionResult(IZ)V

    return-void
.end method
