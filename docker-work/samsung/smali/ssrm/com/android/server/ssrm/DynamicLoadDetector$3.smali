.class Lcom/android/server/ssrm/DynamicLoadDetector$3;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;

    .line 327
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 330
    nop

    .line 331
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    .line 332
    .local v0, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v0, :cond_46

    .line 333
    invoke-static {}, Lcom/android/server/ssrm/DynamicLoadDetector;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 334
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemperatureCheckRunnable: lrp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2b
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v1

    const/16 v2, 0x154

    const/4 v3, 0x0

    if-gt v1, v2, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    move v1, v3

    .line 338
    .local v1, "isTempSatisfied":Z
    :goto_37
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iget-boolean v2, v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    if-eq v1, v2, :cond_46

    .line 339
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iput-boolean v1, v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mIsTempSatisfied:Z

    .line 340
    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/DynamicLoadDetector;->scheduleMonitoring(Z)V

    .line 344
    .end local v1    # "isTempSatisfied":Z
    :cond_46
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/DynamicLoadDetector$3;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    iget-object v2, v2, Lcom/android/server/ssrm/DynamicLoadDetector;->mTemperatureCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void
.end method
