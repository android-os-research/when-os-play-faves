.class Lcom/samsung/android/gesture/MotionRecognitionService$3;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;-><init>(Landroid/content/Context;)V
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

    .line 329
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElevatorStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onElevatorStateChanged called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEventPool(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->obtain()Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    move-result-object v0

    .line 334
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$3;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$msendMotionEvent(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 336
    return-void
.end method
