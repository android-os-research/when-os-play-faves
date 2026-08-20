.class public Lcom/android/server/location/contexthub/ContextHubService$6;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .registers 3

    .line 370
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientAuthorizationChanged(JI)V
    .registers 4

    return-void
.end method

.method public onHubReset()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 384
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-static {v1, v2, p0, v3, v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    .line 374
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    .line 373
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 377
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$6;->val$contextHubId:I

    .line 378
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p1

    .line 376
    invoke-static {v1, v2, p0, v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I

    return-void
.end method

.method public onNanoAppAborted(JI)V
    .registers 4

    return-void
.end method

.method public onNanoAppDisabled(J)V
    .registers 3

    return-void
.end method

.method public onNanoAppEnabled(J)V
    .registers 3

    return-void
.end method

.method public onNanoAppLoaded(J)V
    .registers 3

    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .registers 3

    return-void
.end method
