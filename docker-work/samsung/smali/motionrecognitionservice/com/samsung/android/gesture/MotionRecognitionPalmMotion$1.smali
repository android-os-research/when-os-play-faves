.class Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 289
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 295
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    const/4 v1, 0x0

    const-string v2, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fputmIsShowingSIP(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Z)V

    goto :goto_2f

    .line 296
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 297
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$fgetmSettingsObserver(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)Landroid/database/ContentObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 299
    :cond_2f
    :goto_2f
    return-void
.end method
