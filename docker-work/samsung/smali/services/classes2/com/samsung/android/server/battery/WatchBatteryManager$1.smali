.class public Lcom/samsung/android/server/battery/WatchBatteryManager$1;
.super Landroid/database/ContentObserver;
.source "WatchBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/WatchBatteryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Landroid/os/Handler;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11

    .line 117
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchBatteryManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 122
    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_3b

    const-string p0, "cur is null"

    .line 124
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_f9
    .catchall {:try_start_1b .. :try_end_35} :catchall_f7

    if-eqz p1, :cond_3a

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3a
    return-void

    .line 127
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_f3

    const-string p2, "_btAddress"

    .line 128
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Level"

    .line 129
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Status"

    .line 130
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Time"

    .line 131
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", batteryLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", batteryStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", storedTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v3, v3, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 136
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v3, v3, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v3

    .line 137
    iget-object v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v4, v4, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result v4

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v5, v5, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v5, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 141
    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v5, v5, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {v5, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    if-gez v3, :cond_de

    .line 143
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/WatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v2, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-interface {v1, p2, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto/16 :goto_3b

    :cond_de
    if-ne v3, v1, :cond_e2

    if-eq v4, v2, :cond_3b

    .line 145
    :cond_e2
    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-static {p2}, Lcom/samsung/android/server/battery/WatchBatteryManager;->-$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/WatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    move-result-object p2

    const-string v1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    iget-object v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    iget-object v2, v2, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_f1} :catch_f9
    .catchall {:try_start_3b .. :try_end_f1} :catchall_f7

    goto/16 :goto_3b

    .line 154
    :cond_f3
    :goto_f3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_111

    :catchall_f7
    move-exception p0

    goto :goto_112

    :catch_f9
    move-exception p0

    .line 151
    :try_start_fa
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_fa .. :try_end_10e} :catchall_f7

    if-eqz p1, :cond_111

    goto :goto_f3

    :cond_111
    :goto_111
    return-void

    :goto_112
    if-eqz p1, :cond_117

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_117
    throw p0
.end method
