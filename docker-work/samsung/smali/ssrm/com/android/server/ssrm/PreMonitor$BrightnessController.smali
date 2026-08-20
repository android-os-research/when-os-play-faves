.class Lcom/android/server/ssrm/PreMonitor$BrightnessController;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PreMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrightnessController"
.end annotation


# static fields
.field static final EXTRA_CHANGE_TYPE:Ljava/lang/String; = "change_type"

.field static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field static mIntent:Landroid/content/Intent;

.field static mMaxBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 600
    const/4 v0, -0x1

    sput v0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static limitMaxBrightness(I)V
    .registers 4
    .param p0, "brightness"    # I

    .line 609
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mDisableCoolDownFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 610
    const/16 p0, 0xff

    .line 612
    :cond_a
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitMaxBrightness:: brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    .line 615
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 616
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/os/PowerManager;->setMasterBrightnessLimit(III)V

    .line 617
    sput p0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    .line 618
    return-void
.end method

.method public static limitMaxButtonBrightness(I)V
    .registers 4
    .param p0, "brightness"    # I

    .line 621
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitMaxButtonBrightness:: brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    .line 624
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 627
    .local v0, "pm":Landroid/os/PowerManager;
    return-void
.end method

.method public static notifyMaxBrightnessToSettings()V
    .registers 4

    .line 630
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMaxBrightnessToSettings:: mMaxBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBootComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sBootComplete:Z

    if-nez v0, :cond_2d

    .line 633
    return-void

    .line 636
    :cond_2d
    sget-object v0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    sget v1, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    const-string v2, "max_brightness"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 638
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v0

    .line 639
    .local v0, "batteryTemp":I
    const-string v1, "change_type"

    if-gez v0, :cond_4d

    sget v2, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4d

    .line 640
    sget-object v2, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_53

    .line 642
    :cond_4d
    sget-object v2, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    :goto_53
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 645
    return-void
.end method
