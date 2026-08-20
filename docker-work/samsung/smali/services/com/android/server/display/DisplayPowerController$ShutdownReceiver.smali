.class public final Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 4692
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ShutdownReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 4695
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmInteractiveModeBrightnessMapper(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 4696
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 4697
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 4698
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAppliedForceDimming(Lcom/android/server/display/DisplayPowerController;)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/display/DisplayPowerController;)I

    move-result p1

    if-nez p1, :cond_55

    .line 4700
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmLastScreenBrightnessSettingBeforeForceDim(Lcom/android/server/display/DisplayPowerController;)F

    move-result p1

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 4702
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Restore low battery force dim (manual brightness)"

    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4703
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdateLastBrightnessSettingChangedTime(Lcom/android/server/display/DisplayPowerController;)V

    .line 4704
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmAppliedForceDimming(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 4705
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string/jumbo v0, "screen_brightness"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_55
    return-void
.end method
