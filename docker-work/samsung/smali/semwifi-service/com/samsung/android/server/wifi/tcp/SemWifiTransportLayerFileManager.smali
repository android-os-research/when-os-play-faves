.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;
.super Ljava/lang/Object;
.source "SemWifiTransportLayerFileManager.java"


# static fields
.field private static final DBG:Z

.field public static final FILE_TCP_MONITOR_AP_INFO:Ljava/lang/String; = "/data/misc/wifi/TcpMonitorApInfo.json"

.field public static final FILE_TCP_MONITOR_PACKAGE_INFO:Ljava/lang/String; = "/data/misc/wifi/TcpMonitorPackageInfo.json"

.field public static final FILE_TCP_SWITCHABLE_UID_INFO:Ljava/lang/String; = "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerFileManager"

.field private static final TEXT_AP_ACCUMULATED_CONNECTION_COUNT:Ljava/lang/String; = "AccumulatedConnectionCount"

.field private static final TEXT_AP_ACCUMULATED_CONNECTION_TIME:Ljava/lang/String; = "AccumulatedConnectionTime"

.field private static final TEXT_AP_DATA:Ljava/lang/String; = "Data"

.field private static final TEXT_AP_DETECTED_LAST_TIME:Ljava/lang/String; = "PackageLastDetectedTime"

.field private static final TEXT_AP_DETECTED_PACKAGE_COUNT:Ljava/lang/String; = "PackageDetectedCount"

.field private static final TEXT_AP_DETECTED_PACKAGE_LIST:Ljava/lang/String; = "DetectedPackageList"

.field private static final TEXT_AP_DETECTED_PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field private static final TEXT_AP_DETECTED_PACKAGE_NORMAL_OPERATION_TIME:Ljava/lang/String; = "PackageNormalOperationTime"

.field private static final TEXT_AP_SSID:Ljava/lang/String; = "SSID"

.field private static final TEXT_AP_SWITCH_FOR_INDIVIDUAL_APPS_DETECTION_COUNT:Ljava/lang/String; = "SwitchForIndividualAppsDetectionCount"

.field private static final TEXT_BROWSING:Ljava/lang/String; = "Browsing"

.field private static final TEXT_CATEGORY:Ljava/lang/String; = "Category"

.field private static final TEXT_CATEGORY_UPDATE_FAIL_COUNT:Ljava/lang/String; = "CategoryUpdateFailCount"

.field private static final TEXT_CHATTING_APP:Ljava/lang/String; = "ChattingApp"

.field private static final TEXT_DATA:Ljava/lang/String; = "Data"

.field private static final TEXT_DATA_USAGE:Ljava/lang/String; = "DataUsage"

.field private static final TEXT_DETECTED_COUNT:Ljava/lang/String; = "DetectedCount"

.field private static final TEXT_GAME:Ljava/lang/String; = "Game"

.field private static final TEXT_INTERNET_PERMISSION:Ljava/lang/String; = "InternetPermission"

.field private static final TEXT_LAUNCHABLE:Ljava/lang/String; = "Launchable"

.field private static final TEXT_PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field private static final TEXT_SWITCHABLE:Ljava/lang/String; = "Switchable"

.field private static final TEXT_SYSTEM_APP:Ljava/lang/String; = "SystemApp"

.field private static final TEXT_UID:Ljava/lang/String; = "UID"

.field private static final TEXT_USAGE_PATTERN:Ljava/lang/String; = "UsagePattern"

.field private static final TEXT_VOIP:Ljava/lang/String; = "VoIP"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    const-string p0, "readJSONObjectFromFile - bufReader "

    const-string v0, "readJSONObjectFromFile - fileReader "

    const-string v1, "SemWifiTransportLayerFileManager"

    const-string v2, "readJSONObjectFromFile"

    .line 445
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 451
    :try_start_11
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_16} :catch_17e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_12e
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_8c
    .catchall {:try_start_11 .. :try_end_16} :catchall_86

    .line 452
    :try_start_16
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_82
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_7e
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_77
    .catchall {:try_start_16 .. :try_end_1b} :catchall_71

    .line 453
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 455
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_6e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_26} :catch_68
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_66
    .catchall {:try_start_1b .. :try_end_26} :catchall_1cf

    move-object p1, v5

    .line 472
    :cond_27
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_45

    :catch_2b
    move-exception v3

    .line 474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v4, :cond_42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_42
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 480
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4a

    goto/16 :goto_1ce

    :catch_4a
    move-exception v0

    .line 482
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1ce

    :catch_66
    move-exception v4

    goto :goto_8f

    :catch_68
    move-exception v4

    goto/16 :goto_e0

    :catch_6b
    move-exception v4

    goto/16 :goto_131

    :catch_6e
    move-exception v4

    goto/16 :goto_181

    :catchall_71
    move-exception v2

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_1d0

    :catch_77
    move-exception v4

    move-object v2, p1

    goto :goto_8f

    :catch_7a
    move-exception v4

    move-object v2, p1

    goto/16 :goto_e0

    :catch_7e
    move-exception v4

    move-object v2, p1

    goto/16 :goto_131

    :catch_82
    move-exception v4

    move-object v2, p1

    goto/16 :goto_181

    :catchall_86
    move-exception v2

    move-object v3, p1

    move-object p1, v2

    move-object v2, v3

    goto/16 :goto_1d0

    :catch_8c
    move-exception v4

    move-object v2, p1

    move-object v3, v2

    .line 467
    :goto_8f
    :try_start_8f
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_a7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readJSONObjectFromFile - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_a7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_1cf

    if-eqz v3, :cond_ca

    .line 472
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_ca

    :catch_b0
    move-exception v3

    .line 474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v4, :cond_c7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_c7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_ca
    :goto_ca
    if-eqz v2, :cond_1ce

    .line 480
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d1

    goto/16 :goto_1ce

    :catch_d1
    move-exception v0

    .line 482
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_54

    :catch_dd
    move-exception v4

    move-object v2, p1

    move-object v3, v2

    .line 464
    :goto_e0
    :try_start_e0
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_f8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readJSONObjectFromFile - JSONException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_f8
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_e0 .. :try_end_fb} :catchall_1cf

    if-eqz v3, :cond_11b

    .line 472
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_11b

    :catch_101
    move-exception v3

    .line 474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v4, :cond_118

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_118
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_11b
    :goto_11b
    if-eqz v2, :cond_1ce

    .line 480
    :try_start_11d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_122

    goto/16 :goto_1ce

    :catch_122
    move-exception v0

    .line 482
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_54

    :catch_12e
    move-exception v4

    move-object v2, p1

    move-object v3, v2

    .line 461
    :goto_131
    :try_start_131
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_149

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readJSONObjectFromFile - IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_149
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14c
    .catchall {:try_start_131 .. :try_end_14c} :catchall_1cf

    if-eqz v3, :cond_16c

    .line 472
    :try_start_14e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_16c

    :catch_152
    move-exception v3

    .line 474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v4, :cond_169

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_169
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_16c
    :goto_16c
    if-eqz v2, :cond_1ce

    .line 480
    :try_start_16e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_172

    goto :goto_1ce

    :catch_172
    move-exception v0

    .line 482
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_54

    :catch_17e
    move-exception v4

    move-object v2, p1

    move-object v3, v2

    .line 458
    :goto_181
    :try_start_181
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_199

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readJSONObjectFromFile - FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_199
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_19c
    .catchall {:try_start_181 .. :try_end_19c} :catchall_1cf

    if-eqz v3, :cond_1bc

    .line 472
    :try_start_19e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1bc

    :catch_1a2
    move-exception v3

    .line 474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v4, :cond_1b9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1b9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1bc
    :goto_1bc
    if-eqz v2, :cond_1ce

    .line 480
    :try_start_1be
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1c2

    goto :goto_1ce

    :catch_1c2
    move-exception v0

    .line 482
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_54

    :cond_1ce
    :goto_1ce
    return-object p1

    :catchall_1cf
    move-exception p1

    :goto_1d0
    if-eqz v3, :cond_1f0

    .line 472
    :try_start_1d2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1d6

    goto :goto_1f0

    :catch_1d6
    move-exception v3

    .line 474
    sget-boolean v4, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v4, :cond_1ed

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1ed
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f0
    :goto_1f0
    if-eqz v2, :cond_210

    .line 480
    :try_start_1f2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f5} :catch_1f6

    goto :goto_210

    :catch_1f6
    move-exception v0

    .line 482
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_20d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_20d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 486
    :cond_210
    :goto_210
    throw p1
.end method

.method private readSwitchEnabledUidInfoList()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "readSwitchEnabledUidInfoList - bufReader "

    const-string v0, "readSwitchEnabledUidInfoList - fileReader "

    const-string v1, "SemWifiTransportLayerFileManager"

    const-string v2, "readSwitchEnabledUidInfoList"

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 182
    :try_start_18
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_126
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_84
    .catchall {:try_start_18 .. :try_end_1d} :catchall_80

    .line 183
    :try_start_1d
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_74
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_6f
    .catchall {:try_start_1d .. :try_end_22} :catchall_6b

    .line 185
    :goto_22
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_33} :catch_68
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_33} :catch_65
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_63
    .catchall {:try_start_22 .. :try_end_33} :catchall_186

    goto :goto_22

    .line 203
    :cond_34
    :try_start_34
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_52

    :catch_38
    move-exception v4

    .line 205
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_4f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    :goto_52
    :try_start_52
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_57

    goto/16 :goto_185

    :catch_57
    move-exception v0

    .line 213
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v3, :cond_182

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_175

    :catch_63
    move-exception v4

    goto :goto_88

    :catch_65
    move-exception v4

    goto/16 :goto_da

    :catch_68
    move-exception v4

    goto/16 :goto_12a

    :catchall_6b
    move-exception v2

    move-object v3, v4

    goto/16 :goto_187

    :catch_6f
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_88

    :catch_74
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_da

    :catch_7a
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_12a

    :catchall_80
    move-exception v2

    move-object v3, v4

    goto/16 :goto_188

    :catch_84
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 198
    :goto_88
    :try_start_88
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v6, :cond_a0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSwitchEnabledUidInfoList - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_a0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_186

    if-eqz v5, :cond_c3

    .line 203
    :try_start_a5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_c3

    :catch_a9
    move-exception v4

    .line 205
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_c0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_c0
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_c3
    :goto_c3
    if-eqz v3, :cond_185

    .line 211
    :try_start_c5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_ca

    goto/16 :goto_185

    :catch_ca
    move-exception v0

    .line 213
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v3, :cond_182

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_175

    :catch_d6
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 195
    :goto_da
    :try_start_da
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v6, :cond_f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSwitchEnabledUidInfoList - IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_f2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f5
    .catchall {:try_start_da .. :try_end_f5} :catchall_186

    if-eqz v5, :cond_115

    .line 203
    :try_start_f7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_115

    :catch_fb
    move-exception v4

    .line 205
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_112

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_112
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_115
    :goto_115
    if-eqz v3, :cond_185

    .line 211
    :try_start_117
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11b

    goto :goto_185

    :catch_11b
    move-exception v0

    .line 213
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v3, :cond_182

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_175

    :catch_126
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 192
    :goto_12a
    :try_start_12a
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v6, :cond_142

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSwitchEnabledUidInfoList - FileNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_142
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_145
    .catchall {:try_start_12a .. :try_end_145} :catchall_186

    if-eqz v5, :cond_165

    .line 203
    :try_start_147
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_14b

    goto :goto_165

    :catch_14b
    move-exception v4

    .line 205
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_162

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_162
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_165
    :goto_165
    if-eqz v3, :cond_185

    .line 211
    :try_start_167
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16b

    goto :goto_185

    :catch_16b
    move-exception v0

    .line 213
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v3, :cond_182

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_175
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_185
    :goto_185
    return-object v2

    :catchall_186
    move-exception v2

    :goto_187
    move-object v4, v5

    :goto_188
    if-eqz v4, :cond_1a8

    .line 203
    :try_start_18a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18d} :catch_18e

    goto :goto_1a8

    :catch_18e
    move-exception v4

    .line 205
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v5, :cond_1a5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1a5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a8
    :goto_1a8
    if-eqz v3, :cond_1c8

    .line 211
    :try_start_1aa
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_1ae

    goto :goto_1c8

    :catch_1ae
    move-exception v0

    .line 213
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v3, :cond_1c5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1c5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    :cond_1c8
    :goto_1c8
    throw v2
.end method

.method private readWifiApInfoList()Ljava/util/HashMap;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;"
        }
    .end annotation

    const-string v1, "PackageName"

    const-string v2, "SSID"

    const-string v3, "readWifiApInfoList - JSONException "

    const-string v4, "SemWifiTransportLayerFileManager"

    const-string v0, "readWifiApInfoList"

    .line 316
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/data/misc/wifi/TcpMonitorApInfo.json"

    move-object/from16 v6, p0

    .line 319
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_14a

    const/4 v6, 0x0

    :try_start_1d
    const-string v7, "Data"

    .line 324
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_3e

    :catch_24
    move-exception v0

    .line 326
    sget-boolean v7, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v7, :cond_3b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_3b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3e
    if-eqz v6, :cond_14a

    const/4 v8, 0x0

    .line 331
    :goto_41
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_14a

    .line 334
    :try_start_47
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4b} :catch_127

    .line 341
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    :try_start_50
    const-string v0, "DetectedPackageList"

    .line 344
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_56} :catch_10a

    if-eqz v10, :cond_c9

    const/4 v11, 0x0

    .line 352
    :goto_59
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_c9

    .line 355
    :try_start_5f
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_63} :catch_a7

    .line 363
    :try_start_63
    new-instance v12, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 364
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "PackageDetectedCount"

    .line 365
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v7, "PackageLastDetectedTime"

    .line 366
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_75} :catch_8a

    move-object/from16 v16, v6

    :try_start_77
    const-string v6, "PackageNormalOperationTime"

    .line 367
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v12, v13, v14, v7, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 368
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_87} :catch_88

    goto :goto_c4

    :catch_88
    move-exception v0

    goto :goto_8d

    :catch_8a
    move-exception v0

    move-object/from16 v16, v6

    .line 370
    :goto_8d
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v6, :cond_a3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_a3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c4

    :catch_a7
    move-exception v0

    move-object/from16 v16, v6

    move-object v6, v0

    .line 357
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v0, :cond_c1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_c1
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :goto_c4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v16

    goto :goto_59

    :cond_c9
    move-object/from16 v16, v6

    .line 378
    :try_start_cb
    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "AccumulatedConnectionCount"

    .line 379
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v6, "AccumulatedConnectionTime"

    .line 380
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v6, "SwitchForIndividualAppsDetectionCount"

    .line 381
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;-><init>(Ljava/lang/String;IIILjava/util/HashMap;)V

    .line 382
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Lorg/json/JSONException; {:try_start_cb .. :try_end_ee} :catch_ef

    goto :goto_144

    :catch_ef
    move-exception v0

    .line 384
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v6, :cond_106

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_106
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_144

    :catch_10a
    move-exception v0

    move-object/from16 v16, v6

    .line 346
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v6, :cond_123

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_144

    :catch_127
    move-exception v0

    move-object/from16 v16, v6

    move-object v6, v0

    .line 336
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v0, :cond_141

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_141
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :goto_144
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_41

    :cond_14a
    return-object v5
.end method

.method private readWifiPackageInfoList()Ljava/util/HashMap;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;"
        }
    .end annotation

    const-string v1, "SemWifiTransportLayerFileManager"

    const-string v0, "readWifiPackageInfoList"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_c
    const-string v0, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    move-object/from16 v3, p0

    .line 82
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c2

    const-string v3, "Data"

    .line 85
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    .line 86
    :goto_1d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_c2

    .line 87
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    new-instance v15, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    const-string v5, "UID"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v5, "PackageName"

    .line 90
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "Category"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "ChattingApp"

    .line 91
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v5, "VoIP"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v5, "Game"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v5, "Browsing"

    .line 92
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v5, "SystemApp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v5, "Launchable"

    .line 93
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v5, "Switchable"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string v5, "DetectedCount"

    .line 94
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v5, "DataUsage"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v5, "UsagePattern"

    .line 95
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v5, "CategoryUpdateFailCount"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v5, "InternetPermission"

    .line 96
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object v5, v15

    move-object/from16 p0, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v4

    invoke-direct/range {v5 .. v20}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZZZZZIIIIZ)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_a2} :catch_a6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d

    :catch_a6
    move-exception v0

    .line 101
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v3, :cond_bf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readWifiPackageInfoList - JSONException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_bf
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c2
    return-object v2
.end method

.method private writeJSONObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 8

    const-string p0, "writeJSONObjectToFile - IOException(finally) "

    .line 492
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    const-string v1, "SemWifiTransportLayerFileManager"

    if-eqz v0, :cond_d

    const-string v0, "writeJSONObjectToFile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x0

    if-nez p1, :cond_11

    return v0

    .line 498
    :cond_11
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 501
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 502
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_24

    return v0

    .line 508
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 509
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_97
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_6a
    .catchall {:try_start_24 .. :try_end_2f} :catchall_68

    .line 510
    :try_start_2f
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_43
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_40
    .catchall {:try_start_2f .. :try_end_39} :catchall_3c

    const/4 v0, 0x1

    move-object v3, v2

    goto :goto_46

    :catchall_3c
    move-exception p1

    move-object v3, v2

    goto/16 :goto_c5

    :catch_40
    move-exception p1

    move-object v3, v2

    goto :goto_6b

    :catch_43
    move-exception p1

    move-object v3, v2

    goto :goto_98

    :cond_46
    :goto_46
    if-eqz v3, :cond_c4

    .line 523
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4d

    goto/16 :goto_c4

    :catch_4d
    move-exception p1

    .line 525
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p2, :cond_64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_57
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_64
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catchall_68
    move-exception p1

    goto :goto_c5

    :catch_6a
    move-exception p1

    .line 518
    :goto_6b
    :try_start_6b
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p2, :cond_83

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeJSONObjectToFile - Exception "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_6b .. :try_end_86} :catchall_68

    if-eqz v3, :cond_c4

    .line 523
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_c4

    :catch_8c
    move-exception p1

    .line 525
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p2, :cond_64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_57

    :catch_97
    move-exception p1

    .line 515
    :goto_98
    :try_start_98
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p2, :cond_b0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeJSONObjectToFile - IOException "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_b0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_98 .. :try_end_b3} :catchall_68

    if-eqz v3, :cond_c4

    .line 523
    :try_start_b5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_c4

    :catch_b9
    move-exception p1

    .line 525
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p2, :cond_64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_57

    :cond_c4
    :goto_c4
    return v0

    :goto_c5
    if-eqz v3, :cond_e5

    .line 523
    :try_start_c7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_e5

    :catch_cb
    move-exception p2

    .line 525
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v0, :cond_e2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_e2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 529
    :cond_e5
    :goto_e5
    throw p1
.end method

.method private writeSwitchEnabledUidInfoList(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "writeSwitchEnabledUidInfoList - IOException(finally) "

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SemWifiTransportLayerFileManager"

    if-eqz p1, :cond_52

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 228
    :try_start_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_39
    .catch Ljava/util/ConcurrentModificationException; {:try_start_11 .. :try_end_39} :catch_3a

    goto :goto_15

    :catch_3a
    move-exception p1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSwitchEnabledUidInfoList - ConcurrentModificationException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 236
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSwitchEnabledUidInfoList - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_80

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_80

    return v6

    .line 250
    :cond_80
    :try_start_80
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 251
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8b} :catch_d1
    .catchall {:try_start_80 .. :try_end_8b} :catchall_cf

    if-eqz p1, :cond_ac

    .line 253
    :try_start_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a5} :catch_a9
    .catchall {:try_start_8d .. :try_end_a5} :catchall_a6

    goto :goto_ac

    :catchall_a6
    move-exception p1

    move-object v4, v0

    goto :goto_fb

    :catch_a9
    move-exception p1

    move-object v4, v0

    goto :goto_d2

    :cond_ac
    :goto_ac
    const/4 v6, 0x1

    move-object v4, v0

    :cond_ae
    if-eqz v4, :cond_fa

    .line 265
    :try_start_b0
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_fa

    :catch_b4
    move-exception p1

    .line 267
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_be
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_cb
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fa

    :catchall_cf
    move-exception p1

    goto :goto_fb

    :catch_d1
    move-exception p1

    .line 260
    :goto_d2
    :try_start_d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSwitchEnabledUidInfoList - IOException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_d2 .. :try_end_e9} :catchall_cf

    if-eqz v4, :cond_fa

    .line 265
    :try_start_eb
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_fa

    :catch_ef
    move-exception p1

    .line 267
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_be

    :cond_fa
    :goto_fa
    return v6

    :goto_fb
    if-eqz v4, :cond_11b

    .line 265
    :try_start_fd
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_11b

    :catch_101
    move-exception v0

    .line 267
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v2, :cond_118

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    :cond_11b
    :goto_11b
    throw p1
.end method

.method private writeWifiApInfoList(Ljava/util/HashMap;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "writeWifiApInfoList"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_f8

    .line 398
    :try_start_a
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f8

    .line 399
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 400
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 402
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 404
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "SSID"

    .line 405
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "AccumulatedConnectionCount"

    .line 406
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "AccumulatedConnectionTime"

    .line 407
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "SwitchForIndividualAppsDetectionCount"

    .line 409
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    move-result v7

    .line 408
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_ae

    .line 412
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ae

    .line 413
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 414
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 415
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "PackageName"

    .line 416
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "PackageDetectedCount"

    .line 417
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "PackageLastDetectedTime"

    .line 418
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getLastDetectedTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "PackageNormalOperationTime"

    .line 420
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageNormalOperationTime()I

    move-result v7

    .line 419
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_70

    :cond_a9
    const-string v4, "DetectedPackageList"

    .line 423
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    :cond_ae
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_22

    :cond_b3
    const-string p1, "Data"

    .line 427
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "/data/misc/wifi/TcpMonitorApInfo.json"

    .line 430
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeJSONObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_be} :catch_dc
    .catch Ljava/util/ConcurrentModificationException; {:try_start_a .. :try_end_be} :catch_bf

    goto :goto_f8

    :catch_bf
    move-exception p0

    .line 437
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p1, :cond_d8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeWifiApInfoList - ConcurrentModificationException "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_d8
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_f8

    :catch_dc
    move-exception p0

    .line 434
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p1, :cond_f5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeWifiApInfoList - JSONException "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_f5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_f8
    :goto_f8
    return v1
.end method

.method private writeWifiPackageInfoList(Ljava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "writeWifiPackageInfoList"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_b

    return v1

    .line 116
    :cond_b
    :try_start_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 117
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_105

    .line 120
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 122
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "UID"

    .line 123
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "PackageName"

    .line 124
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Category"

    .line 125
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ChattingApp"

    .line 126
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "VoIP"

    .line 127
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "Game"

    .line 128
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "Browsing"

    .line 129
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "SystemApp"

    .line 130
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "Launchable"

    .line 131
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "Switchable"

    .line 132
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "DetectedCount"

    .line 133
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "DataUsage"

    .line 134
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDataUsage()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "UsagePattern"

    .line 135
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUsagePattern()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "CategoryUpdateFailCount"

    .line 136
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "InternetPermission"

    .line 137
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_23

    :cond_c0
    const-string p1, "Data"

    .line 142
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 145
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeJSONObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_cb} :catch_e9
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_cb} :catch_cc

    goto :goto_105

    :catch_cc
    move-exception p0

    .line 152
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p1, :cond_e5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeWifiPackageInfoList - ConcurrentModificationException "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_e5
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_105

    :catch_e9
    move-exception p0

    .line 149
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz p1, :cond_102

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeWifiPackageInfoList - JSONException "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_102
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_105
    :goto_105
    return v1
.end method


# virtual methods
.method public loadSwitchEnabledUidListFromFile()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "loadSwitchEnabledUidListFromFile"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readSwitchEnabledUidInfoList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public loadWifiApInfoFromFile()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "loadWifiApInfoFromFile"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readWifiApInfoList()Ljava/util/HashMap;

    move-result-object p0

    .line 306
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadWifiPackageInfoFromFile - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-object p0
.end method

.method public loadWifiPackageInfoFromFile()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "loadWifiPackageInfoFromFile"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readWifiPackageInfoList()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public saveSwitchEnabledUidListToFile(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "saveSwitchEnabledUidListToFile"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeSwitchEnabledUidInfoList(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public saveWifiApInfoToFile(Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "saveWifiApInfoToFile"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeWifiApInfoList(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public saveWifiPackageInfoToFile(Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "SemWifiTransportLayerFileManager"

    const-string v1, "saveWifiPackageInfoToFile"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeWifiPackageInfoList(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method
