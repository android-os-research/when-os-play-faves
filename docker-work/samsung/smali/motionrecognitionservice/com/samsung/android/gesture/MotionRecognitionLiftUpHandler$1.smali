.class Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionLiftUpHandler.java"


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

    .line 36
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LiftUpHandler"

    if-eqz v0, :cond_1f

    .line 40
    const-string v0, "  mReceiver.onReceive : ACTION_SCREEN_ON"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmLiftUpMessageHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    move-result-object v0

    const/16 v1, 0x156

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_58

    .line 42
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 43
    const-string v0, "  mReceiver.onReceive : ACTION_SCREEN_OFF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmLiftUpMessageHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    move-result-object v0

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_58

    .line 45
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 46
    const-string v0, "  mReceiver.onReceive : ACTION_USER_PRESENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;->-$$Nest$fgetmLiftUpMessageHandler(Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;)Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;

    move-result-object v0

    const/16 v1, 0x174

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler$LiftUpMessageHandler;->sendEmptyMessage(I)Z

    .line 49
    :cond_58
    :goto_58
    return-void
.end method
