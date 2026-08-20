.class public Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;
.super Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecommendationsUpdated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_9
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v1, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fgetmIsBound(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v1, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fgetmService(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v1

    if-eqz v1, :cond_2e

    if-eqz p1, :cond_25

    const-string/jumbo v1, "recommendation"

    .line 210
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 214
    :cond_25
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->-$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;->onPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    .line 217
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw p0
.end method
