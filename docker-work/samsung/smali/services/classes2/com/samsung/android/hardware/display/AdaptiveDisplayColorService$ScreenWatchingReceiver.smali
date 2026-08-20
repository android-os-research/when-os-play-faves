.class public final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "keyguard"

    if-eqz v0, :cond_45

    .line 384
    iget-object p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "mDNIe"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {p2, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmSemMdnieManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    .line 385
    iget-object p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "DisplaySolution"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-static {p2, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmDisplaySolutionManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)V

    .line 386
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_44

    .line 387
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 388
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputisLockScreenOn(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)V

    :cond_44
    return-void

    :cond_45
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 391
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 392
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_60

    .line 393
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 394
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputisLockScreenOn(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)V

    .line 395
    :cond_60
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void

    :cond_66
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 398
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 399
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void

    :cond_74
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 403
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputisLockScreenOn(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)V

    :cond_82
    return-void
.end method
