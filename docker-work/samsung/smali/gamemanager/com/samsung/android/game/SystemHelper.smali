.class public Lcom/samsung/android/game/SystemHelper;
.super Ljava/lang/Object;
.source "SystemHelper.java"


# static fields
.field private static final MSG_BLOCK:I = 0x0

.field private static final MSG_RELEASE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemHelper"


# instance fields
.field private lastBlockTime:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private needReleaseBlock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/game/SystemHelper;->lastBlockTime:J

    .line 46
    const-string v0, "SystemHelper"

    const-string v1, "ctor"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    .line 49
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    new-instance v0, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {v0}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    .line 51
    new-instance v0, Lcom/samsung/android/game/SystemHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/SystemHelper$1;-><init>(Lcom/samsung/android/game/SystemHelper;)V

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method


# virtual methods
.method public callEnableWifiSwitch(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 528
    const-string v0, "SystemHelper"

    const-string v1, "value_bool_1"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 530
    .local v2, "responseJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 531
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 532
    .local v4, "paramObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 533
    .local v5, "enable":Z
    iget-object v6, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    iget-object v6, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    if-eqz v5, :cond_26

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    goto :goto_2a

    :cond_26
    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    :goto_2a
    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    invoke-virtual {v2, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callEnableWifiSwitch(). end enable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_46} :catch_47

    .line 539
    .end local v4    # "paramObject":Lorg/json/JSONObject;
    .end local v5    # "enable":Z
    goto :goto_4d

    .line 537
    :catch_47
    move-exception v1

    .line 538
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "callEnableWifiSwitch(). JSONException!!"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4d
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public callReleaseBlock()V
    .registers 3

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callReleaseBlock needReleaseBlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    if-eqz v0, :cond_2e

    .line 546
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    :cond_2e
    return-void
.end method

.method public declared-synchronized enableWifiSwitch(Z)V
    .registers 4
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 466
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 467
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 469
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_29

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/game/SystemHelper;->lastBlockTime:J

    .line 471
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 472
    if-nez p1, :cond_26

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    goto :goto_29

    .line 475
    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 478
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    .line 465
    .end local p1    # "enable":Z
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBlockState()Z
    .registers 2

    .line 552
    iget-boolean v0, p0, Lcom/samsung/android/game/SystemHelper;->needReleaseBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLastBlockTime()J
    .registers 3

    .line 556
    iget-wide v0, p0, Lcom/samsung/android/game/SystemHelper;->lastBlockTime:J

    return-wide v0
.end method

.method public getNetworkStats(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 120
    const-string v0, "package_uid"

    const-string v1, "SystemHelper"

    const/4 v2, 0x0

    .line 121
    .local v2, "response":Ljava/lang/String;
    if-nez p1, :cond_8

    return-object v2

    .line 123
    :cond_8
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 125
    const-wide/16 v4, 0x0

    .local v4, "down":J
    const-wide/16 v6, 0x0

    .line 126
    .local v6, "up":J
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "uidInt":I
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    move-wide v6, v8

    .line 128
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    move-wide v4, v8

    .line 129
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_41

    .line 131
    .local v8, "responseJson":Lorg/json/JSONObject;
    :try_start_2a
    const-string v9, "network_stats_up"

    invoke-virtual {v8, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const-string v9, "network_stats_down"

    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_3a

    .line 136
    .end local v2    # "response":Ljava/lang/String;
    .local v1, "response":Ljava/lang/String;
    move-object v2, v1

    goto :goto_40

    .line 134
    .end local v1    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :catch_3a
    move-exception v9

    .line 135
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v10, "network read json exception"

    invoke-static {v1, v10}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_41

    .line 140
    .end local v0    # "uidInt":I
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v4    # "down":J
    .end local v6    # "up":J
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_40
    :goto_40
    goto :goto_47

    .line 138
    :catch_41
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "network read remote exception"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-object v2
.end method

.method public getPidUidFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 145
    const-string v0, "package_name"

    const/4 v1, 0x0

    .line 146
    .local v1, "response":Ljava/lang/String;
    if-nez p1, :cond_6

    return-object v1

    .line 147
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/game/SystemHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_f

    return-object v1

    .line 149
    :cond_f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v3, "responseJson":Lorg/json/JSONObject;
    :try_start_14
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 153
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4a

    .line 155
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 156
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 157
    const-string v7, "package_pid"

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v7, "package_uid"

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    goto :goto_4a

    .line 154
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 162
    .end local v5    # "i":I
    :cond_4a
    :goto_4a
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4e} :catch_50

    move-object v1, v5

    .line 166
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    :cond_4f
    goto :goto_58

    .line 164
    :catch_50
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SystemHelper"

    const-string v5, "pid/uid json exception"

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    return-object v1
.end method

.method public getSysFsDataWithJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 67
    const-string v0, "SystemHelper"

    const/4 v1, 0x0

    .line 68
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v2, "responseJson":Lorg/json/JSONObject;
    if-nez p1, :cond_b

    .line 71
    return-object v1

    .line 79
    :cond_b
    :try_start_b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    .line 81
    .local v4, "noSysNodeToRead":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_18

    .line 82
    return-object v1

    .line 84
    :cond_18
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 85
    .local v5, "names":Lorg/json/JSONArray;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_20} :catch_7e

    move-object v4, v6

    .line 89
    .local v4, "values":Lorg/json/JSONArray;
    nop

    .line 91
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_79

    .line 93
    :try_start_29
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "fileName":Ljava/lang/String;
    if-nez v7, :cond_30

    .line 95
    goto :goto_76

    .line 97
    :cond_30
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_41} :catch_70
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_41} :catch_70

    .line 99
    .local v8, "br":Ljava/io/BufferedReader;
    :try_start_41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "line":Ljava/lang/String;
    :goto_4a
    if-eqz v10, :cond_5a

    .line 102
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_4a

    .line 106
    :cond_5a
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_6a

    .line 108
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "line":Ljava/lang/String;
    :try_start_65
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 109
    nop

    .line 112
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_76

    .line 108
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    :catchall_6a
    move-exception v9

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 109
    nop

    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "responseJson":Lorg/json/JSONObject;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v4    # "values":Lorg/json/JSONArray;
    .end local v5    # "names":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    throw v9
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_70} :catch_70
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_70

    .line 110
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "responseJson":Lorg/json/JSONObject;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v4    # "values":Lorg/json/JSONArray;
    .restart local v5    # "names":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_70
    move-exception v7

    .line 111
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "getSysFsDataWithJson()-sysfs data read exception"

    invoke-static {v0, v8}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 114
    .end local v6    # "i":I
    :cond_79
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .end local v1    # "response":Ljava/lang/String;
    .local v0, "response":Ljava/lang/String;
    return-object v0

    .line 86
    .end local v0    # "response":Ljava/lang/String;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v4    # "values":Lorg/json/JSONArray;
    .end local v5    # "names":Lorg/json/JSONArray;
    .restart local v1    # "response":Ljava/lang/String;
    :catch_7e
    move-exception v3

    .line 87
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "getSysFsDataWithJson()-requestJson JSONException"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v1
.end method

.method getThreadData(Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 283
    move-object/from16 v1, p1

    const-string v2, "/task/"

    const-string v3, "/proc/"

    const-string v4, "SystemHelper"

    const/4 v5, 0x0

    .line 284
    .local v5, "response":Ljava/lang/String;
    const/4 v6, 0x0

    .line 285
    .local v6, "paramObject":Lorg/json/JSONObject;
    if-nez v1, :cond_d

    .line 286
    return-object v5

    .line 290
    :cond_d
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_14

    move-object v6, v0

    .line 293
    goto :goto_1a

    .line 291
    :catch_14
    move-exception v0

    .line 292
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "getThreadData(). JSONException!!"

    invoke-static {v4, v7, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v0

    .line 295
    .local v7, "responseJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_135

    const-string v0, "package_pid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2c

    goto/16 :goto_135

    .line 299
    :cond_2c
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 302
    .local v8, "pid":I
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_12a

    .line 305
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_52

    .line 306
    const/4 v2, 0x0

    return-object v2

    .line 311
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    :cond_52
    nop

    .line 313
    array-length v9, v10

    const/4 v0, 0x0

    move v11, v0

    :goto_56
    if-ge v11, v9, :cond_125

    aget-object v12, v10, v11

    .line 314
    .local v12, "taskID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "/sched"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, "taskStatsFile":Ljava/lang/String;
    const/4 v14, 0x6

    .line 317
    .local v14, "lineNumber":I
    const/4 v15, 0x1

    .line 318
    .local v15, "counter":I
    :try_start_7b
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_82} :catch_110
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_82} :catch_110
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_105

    move-object/from16 v16, v2

    :try_start_84
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_103
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_89} :catch_103
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_101

    move-object v1, v0

    .line 319
    .local v1, "taskReader":Ljava/io/InputStreamReader;
    :try_start_8a
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_ef

    move-object v2, v0

    .line 320
    .local v2, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_90
    const-string v0, ""

    .line 321
    .local v0, "line":Ljava/lang/String;
    :goto_92
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_dd

    move-object/from16 v18, v17

    .end local v0    # "line":Ljava/lang/String;
    .local v18, "line":Ljava/lang/String;
    if-eqz v17, :cond_d0

    .line 322
    add-int/lit8 v15, v15, 0x1

    .line 323
    if-ne v15, v14, :cond_c9

    .line 324
    const/16 v0, 0x3a

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    .end local v18    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    :try_start_a4
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move/from16 v18, v0

    .line 325
    .local v18, "index":I
    add-int/lit8 v0, v18, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_b0
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_c7

    move-object/from16 v19, v0

    .line 327
    .local v19, "numberText":Ljava/lang/String;
    :try_start_b2
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 328
    .local v20, "execTime":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_b2 .. :try_end_bd} :catch_be
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_c7

    .line 331
    .end local v20    # "execTime":D
    goto :goto_d4

    .line 329
    :catch_be
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v20, v3

    .end local v3    # "line":Ljava/lang/String;
    .local v20, "line":Ljava/lang/String;
    :try_start_c1
    const-string v3, "getThreadData(). NumberFormatException!!"

    invoke-static {v4, v3, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_c7

    .line 332
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_d4

    .line 318
    .end local v18    # "index":I
    .end local v19    # "numberText":Ljava/lang/String;
    .end local v20    # "line":Ljava/lang/String;
    :catchall_c7
    move-exception v0

    goto :goto_e0

    .line 323
    .local v18, "line":Ljava/lang/String;
    :cond_c9
    move-object/from16 v17, v3

    move-object/from16 v20, v18

    .end local v18    # "line":Ljava/lang/String;
    .restart local v20    # "line":Ljava/lang/String;
    move-object/from16 v0, v20

    goto :goto_92

    .line 321
    .end local v20    # "line":Ljava/lang/String;
    .restart local v18    # "line":Ljava/lang/String;
    :cond_d0
    move-object/from16 v17, v3

    move-object/from16 v20, v18

    .line 335
    .end local v18    # "line":Ljava/lang/String;
    :goto_d4
    :try_start_d4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_db

    .end local v2    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_da} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_fd

    goto :goto_11a

    .line 318
    :catchall_db
    move-exception v0

    goto :goto_f2

    .restart local v2    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_dd
    move-exception v0

    move-object/from16 v17, v3

    :goto_e0
    move-object v3, v0

    :try_start_e1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e7

    move-object/from16 v18, v2

    goto :goto_ee

    :catchall_e7
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v0

    .end local v2    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .local v18, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_eb
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "paramObject":Lorg/json/JSONObject;
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    .end local v8    # "pid":I
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "taskID":Ljava/lang/String;
    .end local v13    # "taskStatsFile":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "counter":I
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_ee
    throw v3
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_db

    .end local v18    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "paramObject":Lorg/json/JSONObject;
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    .restart local v8    # "pid":I
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v12    # "taskID":Ljava/lang/String;
    .restart local v13    # "taskStatsFile":Ljava/lang/String;
    .restart local v14    # "lineNumber":I
    .restart local v15    # "counter":I
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_ef
    move-exception v0

    move-object/from16 v17, v3

    :goto_f2
    move-object v2, v0

    :try_start_f3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_fc

    :catchall_f7
    move-exception v0

    move-object v3, v0

    :try_start_f9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "paramObject":Lorg/json/JSONObject;
    .end local v7    # "responseJson":Lorg/json/JSONObject;
    .end local v8    # "pid":I
    .end local v10    # "files":[Ljava/lang/String;
    .end local v12    # "taskID":Ljava/lang/String;
    .end local v13    # "taskStatsFile":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "counter":I
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_fc
    throw v2
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fd} :catch_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_f9 .. :try_end_fd} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fd} :catch_fd

    .line 337
    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "paramObject":Lorg/json/JSONObject;
    .restart local v7    # "responseJson":Lorg/json/JSONObject;
    .restart local v8    # "pid":I
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v12    # "taskID":Ljava/lang/String;
    .restart local v13    # "taskStatsFile":Ljava/lang/String;
    .restart local v14    # "lineNumber":I
    .restart local v15    # "counter":I
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_fd
    move-exception v0

    goto :goto_10a

    .line 335
    :catch_ff
    move-exception v0

    goto :goto_115

    .line 337
    :catch_101
    move-exception v0

    goto :goto_108

    .line 335
    :catch_103
    move-exception v0

    goto :goto_113

    .line 337
    :catch_105
    move-exception v0

    move-object/from16 v16, v2

    :goto_108
    move-object/from16 v17, v3

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    :goto_10a
    const-string v1, "getThreadData(). Exception in for loop"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11b

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_110
    move-exception v0

    move-object/from16 v16, v2

    :goto_113
    move-object/from16 v17, v3

    .line 336
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_115
    const-string v1, "getThreadData(). IOException or NumberFormatException!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11a
    nop

    .line 313
    .end local v12    # "taskID":Ljava/lang/String;
    .end local v13    # "taskStatsFile":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v15    # "counter":I
    :goto_11b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_56

    .line 342
    :cond_125
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    .end local v10    # "files":[Ljava/lang/String;
    :catch_12a
    move-exception v0

    .line 309
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "getThreadData(). Exception!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pid":I
    :cond_135
    :goto_135
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getThreadInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 378
    move-object/from16 v1, p1

    const-string v0, "package_pid"

    const-string v2, "thread_ids"

    const-string v3, "cpu_sum"

    const-string v4, "name"

    const-string v5, "SystemHelper"

    const/4 v6, 0x0

    if-nez v1, :cond_10

    .line 379
    return-object v6

    .line 383
    :cond_10
    :try_start_10
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    .local v7, "param":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 387
    .local v8, "responseJson":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 388
    .local v9, "tids":[Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 389
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 390
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    move-object v9, v10

    .line 391
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_3c

    .line 392
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_39} :catch_1c3

    .line 391
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    .line 395
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :cond_3c
    const-string v2, "/proc/"

    if-nez v9, :cond_74

    :try_start_40
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 397
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_4a} :catch_1c3

    move-object v10, v0

    .line 399
    .local v10, "pid":Ljava/lang/String;
    :try_start_4b
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/task/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6b} :catch_6d
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_6b} :catch_1c3

    move-object v9, v11

    .line 404
    .end local v0    # "directory":Ljava/io/File;
    goto :goto_74

    .line 401
    :catch_6d
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v2, "getThreadInfo(). Exception!!"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    return-object v6

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "pid":Ljava/lang/String;
    :cond_74
    :goto_74
    if-nez v9, :cond_7c

    .line 408
    const-string v0, "getThreadInfo(). tids is null"

    invoke-static {v5, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-object v6

    .line 413
    :cond_7c
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_80} :catch_1c3

    const-string v10, "getThreadInfo(). Exception"

    if-eqz v0, :cond_fa

    :try_start_84
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 414
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v12, v0

    .line 415
    .local v12, "response":Lorg/json/JSONObject;
    array-length v13, v9

    const/4 v14, 0x0

    :goto_92
    if-ge v14, v13, :cond_f7

    aget-object v0, v9, v14
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_96} :catch_1c3

    move-object v15, v0

    .line 416
    .local v15, "taskID":Ljava/lang/String;
    :try_start_97
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v1, "/comm"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v11, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ba} :catch_ed
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_ba} :catch_1c3

    move-object v1, v0

    .line 417
    .local v1, "taskReader":Ljava/io/InputStreamReader;
    :try_start_bb
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_e1

    move-object v6, v0

    .line 418
    .local v6, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_c1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_ca

    .line 420
    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_d1

    .line 422
    .end local v0    # "name":Ljava/lang/String;
    :cond_ca
    :try_start_ca
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_e1

    .end local v6    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_ed
    .catch Lorg/json/JSONException; {:try_start_cd .. :try_end_d0} :catch_1c3

    .line 424
    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    goto :goto_f1

    .line 416
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v6    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_d1
    move-exception v0

    move-object v11, v0

    :try_start_d3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_d9

    move-object/from16 v17, v6

    goto :goto_e0

    :catchall_d9
    move-exception v0

    move-object/from16 v17, v6

    move-object v6, v0

    .end local v6    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .local v17, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_dd
    invoke-virtual {v11, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v15    # "taskID":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_e0
    throw v11
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_e1

    .end local v17    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v15    # "taskID":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_e1
    move-exception v0

    move-object v6, v0

    :try_start_e3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_ec

    :catchall_e7
    move-exception v0

    move-object v11, v0

    :try_start_e9
    invoke-virtual {v6, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v15    # "taskID":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_ec
    throw v6
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ed} :catch_ed
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_ed} :catch_1c3

    .line 422
    .end local v1    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v15    # "taskID":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_ed
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ee
    invoke-static {v5, v10, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "taskID":Ljava/lang/String;
    :goto_f1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    const/4 v6, 0x0

    goto :goto_92

    .line 426
    :cond_f7
    invoke-virtual {v8, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    .end local v12    # "response":Lorg/json/JSONObject;
    :cond_fa
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1be

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 431
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 432
    .local v1, "response":Lorg/json/JSONObject;
    array-length v4, v9

    const/4 v11, 0x0

    :goto_10e
    if-ge v11, v4, :cond_1bb

    aget-object v0, v9, v11
    :try_end_112
    .catch Lorg/json/JSONException; {:try_start_ee .. :try_end_112} :catch_1c3

    move-object v6, v0

    .line 433
    .local v6, "taskID":Ljava/lang/String;
    :try_start_113
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/sched"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_136} :catch_1ac
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_136} :catch_1a5
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_136} :catch_1c3

    move-object v12, v0

    .line 434
    .local v12, "taskReader":Ljava/io/InputStreamReader;
    :try_start_137
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13c
    .catchall {:try_start_137 .. :try_end_13c} :catchall_193

    move-object v13, v0

    .line 435
    .local v13, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_13d
    const-string v0, ""

    .line 436
    .local v0, "line":Ljava/lang/String;
    :goto_13f
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .end local v0    # "line":Ljava/lang/String;
    .local v15, "line":Ljava/lang/String;
    if-eqz v14, :cond_17a

    .line 437
    const-string v0, ".*sum_exec_runtime.*"

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 438
    const/16 v0, 0x3a

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v14, v0

    .line 439
    .local v14, "index":I
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_15b
    .catchall {:try_start_13d .. :try_end_15b} :catchall_185

    move-object/from16 v16, v0

    .line 441
    .local v16, "numberText":Ljava/lang/String;
    :try_start_15d
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_168
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_168} :catch_16b
    .catchall {:try_start_15d .. :try_end_168} :catchall_185

    .line 444
    move-object/from16 v17, v2

    goto :goto_17c

    .line 442
    :catch_16b
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v2

    :try_start_16e
    const-string v2, "getThreadInfo(). NumberFormatException!!"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_173
    .catchall {:try_start_16e .. :try_end_173} :catchall_174

    .line 445
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_17c

    .line 433
    .end local v14    # "index":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "numberText":Ljava/lang/String;
    :catchall_174
    move-exception v0

    goto :goto_188

    .line 437
    .restart local v15    # "line":Ljava/lang/String;
    :cond_176
    move-object/from16 v17, v2

    move-object v0, v15

    goto :goto_13f

    .line 436
    :cond_17a
    move-object/from16 v17, v2

    .line 448
    .end local v15    # "line":Ljava/lang/String;
    :goto_17c
    :try_start_17c
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_183

    .end local v13    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_17f
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_182} :catch_1a1
    .catch Lorg/json/JSONException; {:try_start_17f .. :try_end_182} :catch_1c3

    goto :goto_1b4

    .line 433
    :catchall_183
    move-exception v0

    goto :goto_196

    .restart local v13    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_185
    move-exception v0

    move-object/from16 v17, v2

    :goto_188
    move-object v2, v0

    :try_start_189
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_18d

    goto :goto_192

    :catchall_18d
    move-exception v0

    move-object v14, v0

    :try_start_18f
    invoke-virtual {v2, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v6    # "taskID":Ljava/lang/String;
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local v12    # "taskReader":Ljava/io/InputStreamReader;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_192
    throw v2
    :try_end_193
    .catchall {:try_start_18f .. :try_end_193} :catchall_183

    .end local v13    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v6    # "taskID":Ljava/lang/String;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local v12    # "taskReader":Ljava/io/InputStreamReader;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_193
    move-exception v0

    move-object/from16 v17, v2

    :goto_196
    move-object v2, v0

    :try_start_197
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_19a
    .catchall {:try_start_197 .. :try_end_19a} :catchall_19b

    goto :goto_1a0

    :catchall_19b
    move-exception v0

    move-object v13, v0

    :try_start_19d
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v6    # "taskID":Ljava/lang/String;
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_1a0
    throw v2
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a1} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a1} :catch_1a1
    .catch Lorg/json/JSONException; {:try_start_19d .. :try_end_1a1} :catch_1c3

    .line 450
    .end local v12    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v6    # "taskID":Ljava/lang/String;
    .restart local v7    # "param":Lorg/json/JSONObject;
    .restart local v8    # "responseJson":Lorg/json/JSONObject;
    .restart local v9    # "tids":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_1a1
    move-exception v0

    goto :goto_1a8

    .line 448
    :catch_1a3
    move-exception v0

    goto :goto_1af

    .line 450
    :catch_1a5
    move-exception v0

    move-object/from16 v17, v2

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    :goto_1a8
    :try_start_1a8
    invoke-static {v5, v10, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b5

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1ac
    move-exception v0

    move-object/from16 v17, v2

    .line 449
    .local v0, "e":Ljava/io/IOException;
    :goto_1af
    const-string v2, "getThreadInfo(). IOException"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1b4
    nop

    .line 432
    .end local v6    # "taskID":Ljava/lang/String;
    :goto_1b5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_10e

    .line 454
    :cond_1bb
    invoke-virtual {v8, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    .end local v1    # "response":Lorg/json/JSONObject;
    :cond_1be
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c2
    .catch Lorg/json/JSONException; {:try_start_1a8 .. :try_end_1c2} :catch_1c3

    return-object v0

    .line 458
    .end local v7    # "param":Lorg/json/JSONObject;
    .end local v8    # "responseJson":Lorg/json/JSONObject;
    .end local v9    # "tids":[Ljava/lang/String;
    :catch_1c3
    move-exception v0

    .line 459
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "getThreadInfo(). JSONException!!"

    invoke-static {v5, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getThreadNames(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 481
    move-object/from16 v1, p1

    const-string v2, "/task/"

    const-string v3, "/proc/"

    const-string v0, "package_pid"

    const-string v4, "SystemHelper"

    const/4 v5, 0x0

    if-nez v1, :cond_e

    .line 482
    return-object v5

    .line 484
    :cond_e
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 487
    .local v6, "responseJson":Lorg/json/JSONObject;
    :try_start_13
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 489
    .local v7, "paramObject":Lorg/json/JSONObject;
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 490
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 493
    :cond_23
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_27} :catch_c4

    move-object v8, v0

    .line 496
    .local v8, "pid":Ljava/lang/String;
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_46} :catch_b9
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_46} :catch_c4

    .line 499
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_49

    .line 500
    return-object v5

    .line 505
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    :cond_49
    nop

    .line 507
    :try_start_4a
    array-length v5, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_4d
    if-ge v9, v5, :cond_b8

    aget-object v0, v10, v9

    move-object v11, v0

    .line 508
    .local v11, "taskID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "/comm"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_71} :catch_c4

    move-object v12, v0

    .line 509
    .local v12, "taskStatsFile":Ljava/lang/String;
    :try_start_72
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7e} :catch_ad
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7e} :catch_c4

    move-object v13, v0

    .line 510
    .local v13, "taskReader":Ljava/io/InputStreamReader;
    :try_start_7f
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_a1

    move-object v14, v0

    .line 511
    .local v14, "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_85
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_8e

    .line 513
    invoke-virtual {v6, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_95

    .line 515
    .end local v0    # "line":Ljava/lang/String;
    :cond_8e
    :try_start_8e
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_a1

    .end local v14    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :try_start_91
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_ad
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_94} :catch_c4

    .line 517
    .end local v13    # "taskReader":Ljava/io/InputStreamReader;
    goto :goto_b3

    .line 509
    .restart local v13    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v14    # "taskStatsFileReader":Ljava/io/BufferedReader;
    :catchall_95
    move-exception v0

    move-object v15, v0

    :try_start_97
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_a0

    :catchall_9b
    move-exception v0

    move-object v1, v0

    :try_start_9d
    invoke-virtual {v15, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "responseJson":Lorg/json/JSONObject;
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v11    # "taskID":Ljava/lang/String;
    .end local v12    # "taskStatsFile":Ljava/lang/String;
    .end local v13    # "taskReader":Ljava/io/InputStreamReader;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_a0
    throw v15
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a1

    .end local v14    # "taskStatsFileReader":Ljava/io/BufferedReader;
    .restart local v6    # "responseJson":Lorg/json/JSONObject;
    .restart local v7    # "paramObject":Lorg/json/JSONObject;
    .restart local v8    # "pid":Ljava/lang/String;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v11    # "taskID":Ljava/lang/String;
    .restart local v12    # "taskStatsFile":Ljava/lang/String;
    .restart local v13    # "taskReader":Ljava/io/InputStreamReader;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catchall_a1
    move-exception v0

    move-object v1, v0

    :try_start_a3
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ac

    :catchall_a7
    move-exception v0

    move-object v14, v0

    :try_start_a9
    invoke-virtual {v1, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "responseJson":Lorg/json/JSONObject;
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v11    # "taskID":Ljava/lang/String;
    .end local v12    # "taskStatsFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    :goto_ac
    throw v1
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ad} :catch_ad
    .catch Lorg/json/JSONException; {:try_start_a9 .. :try_end_ad} :catch_c4

    .line 515
    .end local v13    # "taskReader":Ljava/io/InputStreamReader;
    .restart local v6    # "responseJson":Lorg/json/JSONObject;
    .restart local v7    # "paramObject":Lorg/json/JSONObject;
    .restart local v8    # "pid":Ljava/lang/String;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v11    # "taskID":Ljava/lang/String;
    .restart local v12    # "taskStatsFile":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_ad
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ae
    const-string v1, "getThreadName(). Exception in for loop"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "taskID":Ljava/lang/String;
    .end local v12    # "taskStatsFile":Ljava/lang/String;
    :goto_b3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_4d

    .line 522
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    .end local v10    # "files":[Ljava/lang/String;
    :cond_b8
    goto :goto_ca

    .line 502
    .restart local v7    # "paramObject":Lorg/json/JSONObject;
    .restart local v8    # "pid":Ljava/lang/String;
    :catch_b9
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "getThreadNames(). Exception!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_c3} :catch_c4

    return-object v1

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "paramObject":Lorg/json/JSONObject;
    .end local v8    # "pid":Ljava/lang/String;
    :catch_c4
    move-exception v0

    .line 521
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "getThreadNames(). JSONException!!"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_ca
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 171
    move-object/from16 v1, p1

    const-string v2, "/task/"

    const-string v3, "/proc/"

    const-string v4, "SystemHelper"

    const/4 v5, 0x0

    if-nez v1, :cond_c

    return-object v5

    .line 172
    :cond_c
    const/4 v6, 0x0

    .line 174
    .local v6, "paramObject":Lorg/json/JSONObject;
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_14

    move-object v6, v0

    .line 177
    goto :goto_1a

    .line 175
    :catch_14
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "setRenderThreadAffinity(). JSONException!!"

    invoke-static {v4, v7}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1a
    if-eqz v6, :cond_f8

    const-string v0, "package_pid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 179
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 181
    .local v7, "pid":I
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 182
    .local v8, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 183
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 184
    .local v10, "files":[Ljava/lang/String;
    if-nez v10, :cond_4c

    return-object v5

    .line 185
    :cond_4c
    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_4f
    if-ge v12, v11, :cond_f1

    aget-object v0, v10, v12

    move-object v13, v0

    .line 186
    .local v13, "taskID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "/comm"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_73} :catch_f2

    move-object v14, v0

    .line 188
    .local v14, "taskStatsFile":Ljava/lang/String;
    :try_start_74
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    .line 189
    .local v15, "tid":I
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_82} :catch_e0

    move-object/from16 v16, v2

    :try_start_84
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_de

    move-object v1, v0

    .line 191
    .local v1, "taskStatsReader":Ljava/io/BufferedReader;
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "comm":Ljava/lang/String;
    if-eqz v0, :cond_c6

    const-string v2, "RenderThread"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 193
    move-object/from16 v2, p0

    iget-object v5, v2, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v5, v15}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForBig(I)I

    move-result v5

    .line 194
    .local v5, "ret":I
    move-object/from16 v17, v0

    .end local v0    # "comm":Ljava/lang/String;
    .local v17, "comm":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderThreadAffinity(). invoked SemAffinityControl.setAffinityForBig() for tid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ret: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_c5} :catch_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_c5} :catch_ce
    .catchall {:try_start_8d .. :try_end_c5} :catchall_cc

    goto :goto_c8

    .line 192
    .end local v5    # "ret":I
    .end local v17    # "comm":Ljava/lang/String;
    .restart local v0    # "comm":Ljava/lang/String;
    :cond_c6
    move-object/from16 v17, v0

    .line 199
    .end local v0    # "comm":Ljava/lang/String;
    :goto_c8
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_de

    .line 200
    :goto_cb
    goto :goto_d8

    .line 199
    :catchall_cc
    move-exception v0

    goto :goto_d9

    .line 196
    :catch_ce
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cf
    const-string v2, "setRenderThreadAffinity(). IOException or NumberFormatException!!"

    invoke-static {v4, v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_cc

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_d4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_cb

    .line 203
    .end local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .end local v15    # "tid":I
    :goto_d8
    goto :goto_e8

    .line 199
    .restart local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .restart local v15    # "tid":I
    :goto_d9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 200
    nop

    .end local v6    # "paramObject":Lorg/json/JSONObject;
    .end local v7    # "pid":I
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    .end local v10    # "files":[Ljava/lang/String;
    .end local v13    # "taskID":Ljava/lang/String;
    .end local v14    # "taskStatsFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .end local p1    # "jsonParam":Ljava/lang/String;
    throw v0
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_de} :catch_de

    .line 201
    .end local v1    # "taskStatsReader":Ljava/io/BufferedReader;
    .end local v15    # "tid":I
    .restart local v6    # "paramObject":Lorg/json/JSONObject;
    .restart local v7    # "pid":I
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "directory":Ljava/io/File;
    .restart local v10    # "files":[Ljava/lang/String;
    .restart local v13    # "taskID":Ljava/lang/String;
    .restart local v14    # "taskStatsFile":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/game/SystemHelper;
    .restart local p1    # "jsonParam":Ljava/lang/String;
    :catch_de
    move-exception v0

    goto :goto_e3

    :catch_e0
    move-exception v0

    move-object/from16 v16, v2

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_e3
    :try_start_e3
    const-string v1, "setRenderThreadAffinity(). Exception in for loop"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e8} :catch_f2

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "taskID":Ljava/lang/String;
    .end local v14    # "taskStatsFile":Ljava/lang/String;
    :goto_e8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    const/4 v5, 0x0

    goto/16 :goto_4f

    .line 207
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "directory":Ljava/io/File;
    .end local v10    # "files":[Ljava/lang/String;
    :cond_f1
    goto :goto_f8

    .line 205
    :catch_f2
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "setRenderThreadAffinity(). Exception!!"

    invoke-static {v4, v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "pid":I
    :cond_f8
    :goto_f8
    const/4 v1, 0x0

    return-object v1
.end method

.method setThreadAffinity(ZLjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "isForBig"    # Z
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 243
    const-string v0, "setThreadAffinity(). JSONException!!"

    const-string v1, "SystemHelper"

    if-nez p2, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_8
    const/4 v2, 0x0

    .line 246
    .local v2, "paramObject":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v3, "responseJson":Lorg/json/JSONObject;
    const/4 v4, -0x1

    .line 250
    .local v4, "ret":I
    :try_start_f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_14} :catch_16

    move-object v2, v5

    .line 253
    goto :goto_1a

    .line 251
    :catch_16
    move-exception v5

    .line 252
    .local v5, "e":Lorg/json/JSONException;
    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1a
    if-eqz v2, :cond_7e

    const-string v5, "thread_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 256
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 259
    .local v5, "tid":I
    const-string v6, ", ret: "

    if-eqz p1, :cond_52

    .line 260
    :try_start_2c
    iget-object v7, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v7, v5}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForBig(I)I

    move-result v7

    move v4, v7

    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setThreadAffinityforBig(). invoked SemAffinityControl.setThreadAffinityforBig() for tid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 263
    :cond_52
    iget-object v7, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v7, v5}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForLittle(I)I

    move-result v7

    move v4, v7

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setThreadAffinityforLittle(). invoked SemAffinityControl.setThreadAffinityforLittle() for tid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_77} :catch_78

    .line 268
    :goto_77
    goto :goto_7e

    .line 266
    :catch_78
    move-exception v6

    .line 267
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "setThreadAffinity. Exception!!"

    invoke-static {v1, v7, v6}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .end local v5    # "tid":I
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    const-string v5, "value_bool_1"

    if-nez v4, :cond_87

    .line 272
    const/4 v6, 0x1

    :try_start_83
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_8b

    .line 274
    :cond_87
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_8b} :catch_8c

    .line 278
    :goto_8b
    goto :goto_90

    .line 276
    :catch_8c
    move-exception v5

    .line 277
    .local v5, "e":Lorg/json/JSONException;
    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_90
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setThreadsAffinities(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 346
    const-string v0, "little"

    const-string v1, "big"

    const/4 v2, 0x0

    if-nez p1, :cond_8

    .line 347
    return-object v2

    .line 350
    :cond_8
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    .local v3, "param":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v4, "responseJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3f

    .line 354
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 355
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_3f

    .line 356
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 357
    .local v8, "tid":I
    iget-object v9, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v9, v8}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForBig(I)I

    move-result v9

    .line 358
    .local v9, "res":I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v9, :cond_37

    move v11, v7

    goto :goto_38

    :cond_37
    move v11, v6

    :goto_38
    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 355
    nop

    .end local v8    # "tid":I
    .end local v9    # "res":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 362
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_3f
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 363
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 364
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_6a

    .line 365
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 366
    .local v5, "tid":I
    iget-object v8, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v8, v5}, Lcom/samsung/android/os/SemAffinityControl;->setAffinityForLittle(I)I

    move-result v8

    .line 367
    .local v8, "res":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_62

    move v10, v7

    goto :goto_63

    :cond_62
    move v10, v6

    :goto_63
    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 364
    nop

    .end local v5    # "tid":I
    .end local v8    # "res":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 370
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_6a
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_6e} :catch_6f

    return-object v0

    .line 371
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v4    # "responseJson":Lorg/json/JSONObject;
    :catch_6f
    move-exception v0

    .line 372
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SystemHelper"

    const-string v3, "setThreadsAffinities(). JSONException!!"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v2
.end method

.method unsetRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 213
    const-string v0, "SystemHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 214
    :cond_6
    const/4 v2, 0x0

    .line 216
    .local v2, "paramObject":Lorg/json/JSONObject;
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_e

    move-object v2, v3

    .line 219
    goto :goto_14

    .line 217
    :catch_e
    move-exception v3

    .line 218
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "unsetRenderThreadAffinity(). JSONException!!"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_14
    if-eqz v2, :cond_48

    const-string v3, "package_pid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 221
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 222
    .local v3, "pid":I
    iget-object v4, p0, Lcom/samsung/android/game/SystemHelper;->mSemAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemAffinityControl;->clearAffinity(I)I

    move-result v4

    .line 223
    .local v4, "ret":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsetRenderThreadAffinity(). invoked SemAffinityControl.clearAffinity() for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v3    # "pid":I
    .end local v4    # "ret":I
    :cond_48
    return-object v1
.end method

.method writeFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 229
    const-string v0, "SystemHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 231
    :cond_6
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "paramObject":Lorg/json/JSONObject;
    const-string v3, "pathname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "pathname":Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "content":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/game/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 235
    .local v5, "ret":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile(). invoked Util.writeFile, pathname "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_45} :catch_46

    .line 238
    .end local v2    # "paramObject":Lorg/json/JSONObject;
    .end local v3    # "pathname":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "ret":Z
    goto :goto_4c

    .line 236
    :catch_46
    move-exception v2

    .line 237
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "writeFile(). JSONException!!"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_4c
    return-object v1
.end method
