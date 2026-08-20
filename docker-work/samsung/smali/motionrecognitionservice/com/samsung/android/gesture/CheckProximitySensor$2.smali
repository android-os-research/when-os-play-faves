.class Lcom/samsung/android/gesture/CheckProximitySensor$2;
.super Ljava/lang/Object;
.source "CheckProximitySensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/CheckProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/CheckProximitySensor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/CheckProximitySensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/CheckProximitySensor;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/gesture/CheckProximitySensor$2;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_66

    .line 112
    const-wide/16 v1, 0xc8

    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 116
    goto :goto_f

    .line 113
    :catch_b
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 117
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_f
    const/4 v1, 0x0

    .line 118
    .local v1, "bspk":Z
    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor$2;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v2}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmTerminateThread(Lcom/samsung/android/gesture/CheckProximitySensor;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 120
    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor$2;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v2}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$misActivatedSpeaker(Lcom/samsung/android/gesture/CheckProximitySensor;)Z

    move-result v1

    .line 122
    :cond_1e
    iget-object v2, p0, Lcom/samsung/android/gesture/CheckProximitySensor$2;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v2}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmTerminateThread(Lcom/samsung/android/gesture/CheckProximitySensor;)Z

    move-result v2

    const-string v3, "MotionRecognitionService"

    if-eqz v2, :cond_2e

    .line 123
    const-string v2, " end thread "

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_2e
    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speaker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/samsung/android/gesture/CheckProximitySensor$2;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v3}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmSARmotion(Lcom/samsung/android/gesture/CheckProximitySensor;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 129
    iget-object v3, p0, Lcom/samsung/android/gesture/CheckProximitySensor$2;->this$0:Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-static {v3}, Lcom/samsung/android/gesture/CheckProximitySensor;->-$$Nest$fgetmSARmotion(Lcom/samsung/android/gesture/CheckProximitySensor;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->updateSpeakerStatus(Z)V

    .line 131
    :cond_58
    return-void

    .line 134
    :cond_59
    const-wide/16 v2, 0x12c

    :try_start_5b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 138
    goto :goto_63

    .line 135
    :catch_5f
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 110
    .end local v1    # "bspk":Z
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    :cond_66
    return-void
.end method
