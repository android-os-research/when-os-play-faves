.class public Lcom/android/server/am/FreecessTrigger$4;
.super Landroid/content/BroadcastReceiver;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessTrigger;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger$4;->this$0:Lcom/android/server/am/FreecessTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 201
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 202
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    :cond_14
    const-string/jumbo p0, "power"

    .line 204
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_61

    .line 206
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    .line 207
    :goto_2f
    sget-object p1, Lcom/android/server/am/FreecessTrigger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doze state changed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/MARsPolicyManager;->setDeviceIdleModeState(Z)V

    .line 209
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_61

    if-nez p0, :cond_61

    .line 210
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    const-string p1, "DeviceIdleOFF"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    :cond_61
    return-void
.end method
