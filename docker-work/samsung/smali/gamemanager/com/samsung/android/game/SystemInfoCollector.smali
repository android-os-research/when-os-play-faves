.class public Lcom/samsung/android/game/SystemInfoCollector;
.super Ljava/lang/Object;
.source "SystemInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/SystemInfoCollector$KeyName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemInfoCollector"

.field private static final VIRTUAL_GAMEPAD_DESCRIPTOR:Ljava/lang/String; = "ec0a7e0b45cafc43aea2844bc2e1bd1d024003dc"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private getAudioInfo()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    const/4 v0, -0x1

    .line 210
    .local v0, "volume":I
    const/4 v1, 0x0

    .line 212
    .local v1, "outputDevice":I
    iget-object v2, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 213
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_3a

    .line 215
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 216
    .local v4, "streamMaxVolume":I
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 217
    .local v5, "streamVolume":I
    const/high16 v6, 0x42c80000    # 100.0f

    int-to-float v7, v5

    mul-float/2addr v7, v6

    int-to-float v6, v4

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 223
    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v6

    .line 224
    .local v6, "currentDeviceType":I
    if-eq v6, v3, :cond_38

    const/4 v3, 0x4

    if-eq v6, v3, :cond_38

    const/16 v3, 0x16

    if-ne v6, v3, :cond_2f

    goto :goto_38

    .line 228
    :cond_2f
    const/4 v3, 0x7

    if-eq v6, v3, :cond_36

    const/16 v3, 0x8

    if-ne v6, v3, :cond_39

    .line 230
    :cond_36
    const/4 v1, 0x2

    goto :goto_39

    .line 227
    :cond_38
    :goto_38
    const/4 v1, 0x1

    .line 232
    .end local v4    # "streamMaxVolume":I
    .end local v5    # "streamVolume":I
    .end local v6    # "currentDeviceType":I
    :cond_39
    :goto_39
    goto :goto_41

    .line 233
    :cond_3a
    const-string v3, "SystemInfoCollector"

    const-string v4, "stopCollecting()-audioManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_41
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private getBatteryInfo()Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    .line 140
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, "batteryStatus":Landroid/content/Intent;
    if-eqz v1, :cond_37

    .line 142
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 143
    .local v2, "level":I
    const-string v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 144
    .local v3, "scale":I
    const/4 v4, 0x0

    const-string v5, "plugged"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 147
    .local v4, "pluggedType":I
    mul-int/lit8 v5, v2, 0x64

    div-int/2addr v5, v3

    .line 155
    .local v5, "batteryPercent":I
    move v6, v4

    .line 158
    .local v6, "batteryPluggedType":I
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v7

    .line 161
    .end local v2    # "level":I
    .end local v3    # "scale":I
    .end local v4    # "pluggedType":I
    .end local v5    # "batteryPercent":I
    .end local v6    # "batteryPluggedType":I
    :cond_37
    return-object v0
.end method

.method private getBrightnessInfo()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    const-string v0, "SystemInfoCollector"

    const/4 v1, -0x1

    .line 169
    .local v1, "screenBrightness":I
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_f} :catch_11

    move v1, v2

    .line 172
    goto :goto_17

    .line 170
    :catch_11
    move-exception v2

    .line 171
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "get screenBrightness on resume failure"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_17
    const/4 v2, -0x1

    .line 180
    .local v2, "screenBrightnessMode":I
    :try_start_18
    iget-object v3, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_24
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_18 .. :try_end_24} :catch_26

    move v2, v0

    .line 183
    goto :goto_2c

    .line 181
    :catch_26
    move-exception v3

    .line 182
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "get screenBrightnessMode failure"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_2c
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getGameVersionInfo(Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 245
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 246
    .local v1, "versionName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 248
    .local v2, "versionCode":J
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v4

    .line 249
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "versionName":Ljava/lang/String;
    .end local v2    # "versionCode":J
    :catch_1b
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemInfoCollector"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private isWifiConnected()Z
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/samsung/android/game/SystemInfoCollector;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 195
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_19

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 198
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    .line 199
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 201
    .end local v1    # "wifi":Landroid/net/NetworkInfo;
    :cond_18
    goto :goto_20

    .line 202
    :cond_19
    const-string v1, "SystemInfoCollector"

    const-string v2, "getWifiConnected()-connectivityManager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_20
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public makeSystemInfoForFocusIn()Ljava/lang/String;
    .registers 6

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBatteryInfo()Landroid/util/Pair;

    move-result-object v1

    .line 56
    .local v1, "batteryInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1e

    .line 58
    :try_start_b
    const-string v2, "batteryPercent"

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v2, "batteryPluggedType"

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_19} :catch_1a

    .line 62
    goto :goto_1e

    .line 60
    :catch_1a
    move-exception v2

    .line 61
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 65
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBrightnessInfo()Landroid/util/Pair;

    move-result-object v2

    .line 67
    .local v2, "brightnessInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_22
    const-string v3, "brightness"

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v3, "brightnessMode"

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_30} :catch_31

    .line 71
    goto :goto_35

    .line 69
    :catch_31
    move-exception v3

    .line 70
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_35
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public makeSystemInfoForFocusOut(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBatteryInfo()Landroid/util/Pair;

    move-result-object v1

    .line 92
    .local v1, "batteryInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1e

    .line 94
    :try_start_b
    const-string v2, "batteryPercent"

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "batteryPluggedType"

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_19} :catch_1a

    .line 98
    goto :goto_1e

    .line 96
    :catch_1a
    move-exception v2

    .line 97
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getBrightnessInfo()Landroid/util/Pair;

    move-result-object v2

    .line 103
    .local v2, "brightnessInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_22
    const-string v3, "brightness"

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v3, "brightnessMode"

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_30} :catch_31

    .line 107
    goto :goto_35

    .line 105
    :catch_31
    move-exception v3

    .line 106
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 109
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_35
    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->getAudioInfo()Landroid/util/Pair;

    move-result-object v3

    .line 111
    .local v3, "audioInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_39
    const-string v4, "audioVolume"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v4, "audioOutputDevice"

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_47} :catch_48

    .line 115
    goto :goto_4c

    .line 113
    :catch_48
    move-exception v4

    .line 114
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_4c
    :try_start_4c
    const-string v4, "wifiConnected"

    invoke-direct {p0}, Lcom/samsung/android/game/SystemInfoCollector;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_55} :catch_56

    .line 121
    goto :goto_5a

    .line 119
    :catch_56
    move-exception v4

    .line 120
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_5a
    invoke-direct {p0, p1}, Lcom/samsung/android/game/SystemInfoCollector;->getGameVersionInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 124
    .local v4, "gameVersionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v4, :cond_73

    .line 126
    :try_start_60
    const-string v5, "versionName"

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v5, "versionCode"

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_6e} :catch_6f

    .line 130
    goto :goto_73

    .line 128
    :catch_6f
    move-exception v5

    .line 129
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_73
    :goto_73
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
