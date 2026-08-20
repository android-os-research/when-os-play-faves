.class public Lcom/samsung/android/server/battery/WatchBatteryManager$2;
.super Landroid/content/BroadcastReceiver;
.source "WatchBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/WatchBatteryManager;->systemServicesReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

.field public final synthetic val$alarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iput-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->val$alarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-string p1, "WatchBatteryManager"

    .line 178
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_143

    const-string v2, "device_address"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_67

    .line 181
    :try_start_26
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0, v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mmakeWatchAuthorities(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    .line 183
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0, p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcreateWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 185
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_50

    const/4 v1, 0x2

    if-ne p2, v1, :cond_49

    goto :goto_50

    .line 196
    :cond_49
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    goto/16 :goto_158

    :cond_50
    :goto_50
    const-string v1, "NOT_SUPPORTED or UNAVAILABLE_METHOD"

    .line 188
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_66

    .line 190
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2, v4}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmCheckSupportedVersionRetry(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V

    .line 191
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2, v4}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmCanSyncBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 192
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mretryCheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    :cond_66
    return-void

    :cond_67
    const-string v1, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0, v4}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 199
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcleanupWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)V

    goto/16 :goto_158

    :cond_7f
    const-string v1, "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 202
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;)Z

    move-result p2

    if-nez p2, :cond_95

    const-string p0, "not connected"

    .line 203
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_95
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result p2

    if-eq p2, v3, :cond_a3

    const-string p0, "checkSupportedVersion fail"

    .line 208
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_a3
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    goto/16 :goto_158

    :cond_aa
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    const-string/jumbo v0, "showing"

    .line 213
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_12d

    .line 216
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2, v4}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRegistered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmRegistered(Lcom/samsung/android/server/battery/WatchBatteryManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/ mSyncState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result p2

    if-ne p2, v3, :cond_158

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmSyncStopOffset(Lcom/samsung/android/server/battery/WatchBatteryManager;)I

    move-result p2

    int-to-long v2, p2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v6, v0, v2

    .line 221
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x2

    const-string v8, "WatchBatteryManagerAlarm"

    iget-object v9, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->val$alarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_158

    .line 225
    :cond_12d
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2, v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V

    .line 226
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/app/AlarmManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->val$alarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 227
    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$2;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$mcheckSyncStart(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_142} :catch_143

    goto :goto_158

    :catch_143
    move-exception p0

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception occurred : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    :goto_158
    return-void
.end method
