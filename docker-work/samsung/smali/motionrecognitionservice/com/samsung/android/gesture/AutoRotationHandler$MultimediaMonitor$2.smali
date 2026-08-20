.class Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    .line 431
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetisRunning(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Z

    move-result v0

    if-eqz v0, :cond_53

    if-nez p1, :cond_b

    goto :goto_53

    .line 437
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 439
    .local v0, "codecRunningPIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    .line 440
    .local v2, "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    if-nez v2, :cond_23

    goto :goto_14

    .line 442
    :cond_23
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 443
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getCodecState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3b

    .line 444
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v2    # "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    :cond_3b
    goto :goto_14

    .line 448
    :cond_3c
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 449
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 451
    :cond_52
    return-void

    .line 435
    .end local v0    # "codecRunningPIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_53
    :goto_53
    return-void
.end method
