.class public Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceBatteryInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->systemServicesReady(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "DeviceBatteryInfoService"

    .line 152
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 157
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmIsSpenSupport(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 158
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmSpenBatteryManager(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Lcom/samsung/android/server/battery/SpenBatteryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->onUserUnlocked()V

    .line 160
    :cond_37
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object v2, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    if-nez v2, :cond_40

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addPhoneBatteryInfo()V

    :cond_40
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "level"

    const/4 v1, -0x1

    .line 166
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "status"

    .line 167
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phone battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phone battery status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object v2, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    if-nez v2, :cond_8a

    .line 171
    invoke-virtual {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addPhoneBatteryInfo()V

    goto :goto_dc

    .line 172
    :cond_8a
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    if-ne v1, v0, :cond_9a

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object v1, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 173
    invoke-virtual {v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result v1

    if-eq v1, p2, :cond_dc

    .line 174
    :cond_9a
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object v1, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBatteryStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object v0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 177
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string p2, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c6} :catch_c7

    goto :goto_dc

    :catch_c7
    move-exception p0

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    :goto_dc
    return-void
.end method
