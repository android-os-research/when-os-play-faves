.class Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;
.super Ljava/lang/Object;
.source "MotionRecognitionLiftUpHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 54
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 62
    if-eqz p1, :cond_3

    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 65
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_10

    return-void

    .line 67
    :cond_10
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 68
    .local v1, "displayState":I
    packed-switch v1, :pswitch_data_32

    goto :goto_30

    .line 70
    :pswitch_18
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmLiftUpMessageHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    move-result-object v2

    const/16 v3, 0x142

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->sendEmptyMessage(I)Z

    .line 71
    goto :goto_30

    .line 73
    :pswitch_24
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmLiftUpMessageHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    move-result-object v2

    const/16 v3, 0x14c

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->sendEmptyMessage(I)Z

    .line 74
    nop

    .line 78
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_24
        :pswitch_18
    .end packed-switch
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 58
    return-void
.end method
