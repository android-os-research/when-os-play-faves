.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExynosDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 358
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_58

    const-string p1, "ExynosDisplaySolutionManagerService"

    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 359
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fputmBootCompleted(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Z)V

    .line 362
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmTuneEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 363
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmExynosDisplayTune(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayTune;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 365
    :cond_2a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmAtcEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmAtcAlreadyEnable(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 366
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayATC;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmAtcEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 367
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayATC;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 368
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fputmAtcAlreadyEnable(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;Z)V

    goto :goto_92

    :cond_58
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 371
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 374
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmAtcEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 375
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayATC;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    goto :goto_92

    :cond_72
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 377
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 380
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmAtcEnableSetting(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 381
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->-$$Nest$fgetmExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)Lcom/android/server/display/exynos/ExynosDisplayATC;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    goto :goto_92

    :cond_8d
    const-string p0, "android.intent.action.USER_PRESENT"

    .line 383
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_92
    :goto_92
    return-void
.end method
