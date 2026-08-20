.class public Lcom/android/server/lights/LightsService$1;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V
    .registers 3

    .line 756
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .registers 6

    .line 759
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    new-instance v1, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmSvcLEDHandler(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0

    .line 761
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmInitCompleteForSvcLED(Lcom/android/server/lights/LightsService;Z)V

    .line 762
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 764
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmContext(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 765
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const v4, 0x11101ff

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmUsePatternLED(Lcom/android/server/lights/LightsService;Z)V

    .line 767
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    const v4, 0x1110036

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v3, v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;Z)V

    .line 769
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "/sys/class/sec/led/led_lowpower"

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 770
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;Z)V

    .line 773
    :cond_61
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/16 v2, 0x2bc

    goto :goto_6d

    :cond_6c
    const/4 v2, 0x0

    :goto_6d
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;I)V

    const-string v1, "LightsService"

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]   mUseSoftwareAutoBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",  mUseLEDAutoBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",  mDelayForcedSvcLEDTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",  mUsePatternLED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUsePatternLED(Lcom/android/server/lights/LightsService;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    monitor-exit v0

    return-void

    :catchall_b8
    move-exception p0

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_1b .. :try_end_ba} :catchall_b8

    throw p0
.end method
