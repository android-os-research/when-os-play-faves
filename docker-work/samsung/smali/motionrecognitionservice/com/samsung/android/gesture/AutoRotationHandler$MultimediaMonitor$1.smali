.class Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;


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

    .line 394
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateVideoStatus(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 409
    .local p1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetisRunning(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p1, :cond_b

    goto :goto_43

    .line 413
    :cond_b
    const/4 v0, 0x0

    .line 415
    .local v0, "decoderAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    .line 416
    .local v2, "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    if-nez v2, :cond_1f

    goto :goto_10

    .line 418
    :cond_1f
    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_27

    .line 419
    const/4 v0, 0x1

    .line 420
    goto :goto_28

    .line 422
    .end local v2    # "info":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    :cond_27
    goto :goto_10

    .line 424
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 425
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->-$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 427
    :cond_42
    return-void

    .line 410
    .end local v0    # "decoderAdded":Z
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public onAdd(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;->updateVideoStatus(Ljava/util/ArrayList;)V

    .line 398
    return-void
.end method

.method public onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V
    .registers 2
    .param p1, "semMediaResourceHelper"    # Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 406
    return-void
.end method

.method public onRemove(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;->updateVideoStatus(Ljava/util/ArrayList;)V

    .line 403
    return-void
.end method
