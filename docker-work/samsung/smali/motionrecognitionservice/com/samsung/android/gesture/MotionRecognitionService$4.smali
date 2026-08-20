.class Lcom/samsung/android/gesture/MotionRecognitionService$4;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionService;

    .line 1880
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "arg0"    # I

    .line 1923
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 8
    .param p1, "displayID"    # I

    .line 1888
    if-eqz p1, :cond_3

    .line 1889
    return-void

    .line 1891
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1892
    .local v0, "dp":Landroid/view/Display;
    if-nez v0, :cond_10

    .line 1893
    return-void

    .line 1895
    :cond_10
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 1897
    .local v1, "dpState":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_22

    .line 1898
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_34

    .line 1899
    :cond_22
    if-eq v1, v3, :cond_2a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2a

    const/4 v4, 0x4

    if-ne v1, v4, :cond_34

    .line 1902
    :cond_2a
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1906
    :cond_34
    :goto_34
    if-ne v1, v3, :cond_3f

    .line 1907
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1910
    :cond_3f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmShouldInjectRefreshRate(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1911
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1912
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    .line 1913
    .local v3, "refreshRate":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DisplayListener] getRefreshRate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotionRecognitionService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1915
    .local v4, "msg":Landroid/os/Message;
    const/16 v5, 0x62

    iput v5, v4, Landroid/os/Message;->what:I

    .line 1916
    float-to-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1917
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1919
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "refreshRate":F
    .end local v4    # "msg":Landroid/os/Message;
    :cond_85
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "arg0"    # I

    .line 1884
    return-void
.end method
