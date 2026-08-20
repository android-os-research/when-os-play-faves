.class public Lcom/samsung/android/server/battery/SpenBatteryManager$4;
.super Landroid/os/Handler;
.source "SpenBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/SpenBatteryManager;->handleNicknameChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

.field public final synthetic val$uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Looper;Ljava/lang/String;)V
    .registers 4

    .line 383
    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$4;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    iput-object p3, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$4;->val$uid:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 386
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 387
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "resultValue"

    .line 388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nickname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$4;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmUIdToAddress(Lcom/samsung/android/server/battery/SpenBatteryManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$4;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$4;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmDeviceBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/SpenBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    move-result-object v2

    .line 393
    invoke-interface {v2, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    if-nez v0, :cond_44

    const-string p0, "batteryInfo is null"

    .line 395
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_44
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 400
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 401
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$4;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmDeviceBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/SpenBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    move-result-object p0

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_5c
    return-void
.end method
