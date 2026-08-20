.class Lcom/samsung/android/gesture/MotionRecognitionService$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionService.java"


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

    .line 218
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.incallui.CALL_SCREEN_PRESENCE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 222
    const-string v0, "MotionRecognitionService"

    const-string v1, "Receiver: ACTION_CALL_SCREEN_PRESENCE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x1

    .line 224
    .local v0, "foreground":Z
    const-string v1, "foreground"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 225
    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 227
    :cond_21
    if-eqz v0, :cond_2f

    .line 228
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_3a

    .line 230
    :cond_2f
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 233
    .end local v0    # "foreground":Z
    :cond_3a
    :goto_3a
    return-void
.end method
