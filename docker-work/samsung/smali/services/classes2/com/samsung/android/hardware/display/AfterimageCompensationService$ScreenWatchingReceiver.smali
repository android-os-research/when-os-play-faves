.class public final Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 597
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 598
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "AfterimageCompensationService"

    if-eqz p2, :cond_75

    const-string p1, "ACTION_BOOT_COMPLETED"

    .line 599
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "HqmManagerService"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmSemHqmManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/os/SemHqmManager;)V

    .line 604
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmWindowManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/view/WindowManager;)V

    .line 607
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 608
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    new-instance p2, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread-IA;)V

    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)V

    .line 609
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const-string p0, "AFC Thread Start"

    .line 610
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 613
    :cond_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AfcStateCondition is already done - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-void

    :cond_75
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 617
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_88

    const-string p1, "ACTION_SCREEN_ON"

    .line 618
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void

    :cond_88
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9b

    const-string p1, "ACTION_SCREEN_OFF"

    .line 623
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void

    :cond_9b
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 627
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_197

    const-string p1, "ACTION_SHUTDOWN"

    .line 628
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcState(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-ltz p1, :cond_d1

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcState(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const/4 p2, 0x4

    if-gt p1, p2, :cond_d1

    .line 630
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetinterpolationCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-lez p1, :cond_d1

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetinterpolationCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const p2, 0x10c8e0

    if-gt p1, p2, :cond_d1

    .line 631
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mwriteLoggingDataEfs(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 634
    :cond_d1
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p1

    const/16 p2, 0x14

    if-eqz p1, :cond_f7

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f7

    .line 635
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-le p1, p2, :cond_197

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)I

    goto/16 :goto_197

    .line 637
    :cond_f7
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p1

    if-eqz p1, :cond_11b

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_11b

    .line 638
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-le p1, p2, :cond_197

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)I

    goto/16 :goto_197

    .line 640
    :cond_11b
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p1

    if-eqz p1, :cond_13f

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_13f

    .line 641
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-le p1, p2, :cond_197

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)I

    goto :goto_197

    .line 643
    :cond_13f
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p1

    if-eqz p1, :cond_174

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_174

    .line 644
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-le p1, p2, :cond_162

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)I

    .line 645
    :cond_162
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-le p1, p2, :cond_197

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminateSub(I)I

    goto :goto_197

    .line 647
    :cond_174
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result p1

    if-eqz p1, :cond_197

    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_197

    .line 648
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p1

    if-le p1, p2, :cond_197

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataTerminate(I)I

    :cond_197
    :goto_197
    return-void
.end method
