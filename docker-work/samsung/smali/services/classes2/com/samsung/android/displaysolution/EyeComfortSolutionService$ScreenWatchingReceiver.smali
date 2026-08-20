.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action  :  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "EyeComfortSolutionService"

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19e

    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    goto/16 :goto_19e

    :cond_30
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 267
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz p2, :cond_8d

    .line 268
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputmScreenOn(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 269
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterEnableTime(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 270
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result p2

    int-to-long v4, p2

    add-long/2addr v4, v0

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 273
    :cond_72
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result p0

    int-to-long v4, p0

    add-long/2addr v0, v4

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_8d
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 277
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ec

    .line 278
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputmScreenOn(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 279
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterEnableTime(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 280
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    :cond_cf
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_ec
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f5

    return-void

    :cond_f5
    const-string p2, "android.intent.action.TIME_TICK"

    .line 293
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x6

    if-eqz p2, :cond_121

    .line 294
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_120

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_120

    .line 295
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_120
    return-void

    :cond_121
    const-string p2, "android.intent.action.TIME_SET"

    .line 300
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14c

    .line 301
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 302
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14b
    return-void

    :cond_14c
    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 307
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_177

    .line 308
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_176

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result p1

    if-eqz p1, :cond_176

    .line 309
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_176
    return-void

    :cond_177
    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19d

    .line 316
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "HqmManagerService"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    invoke-static {p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fputmSemHqmManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/SemHqmManager;)V

    .line 318
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$fgetmSemHqmManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/os/SemHqmManager;

    move-result-object p1

    if-eqz p1, :cond_19d

    .line 319
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$msendBigDatatoHQM(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    :cond_19d
    return-void

    .line 263
    :cond_19e
    :goto_19e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 264
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$mbopr_for_bigdata_data_reset(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    return-void
.end method
