.class Lcom/samsung/android/game/PerformancePolicyParser;
.super Ljava/lang/Object;
.source "PerformancePolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformancePolicyParser"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    .registers 7
    .param p0, "performancePolicyForSsrm"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;

    invoke-direct {v0}, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;-><init>()V

    .line 26
    .local v0, "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    const/4 v1, 0x0

    .line 27
    .local v1, "policyJson":Lorg/json/JSONObject;
    if-eqz p0, :cond_13

    .line 29
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    move-object v1, v2

    .line 32
    goto :goto_13

    .line 30
    :catch_f
    move-exception v2

    .line 31
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_13
    :goto_13
    if-eqz v1, :cond_ac

    .line 35
    const-string v2, "cpu_level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 36
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuLevel:I

    .line 38
    :cond_24
    const-string v2, "gpu_level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 39
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuLevel:I

    .line 41
    :cond_32
    const-string v2, "siop_mode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_41

    .line 42
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, "gameMode":I
    iput v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameMode:I

    .line 45
    .end local v2    # "gameMode":I
    :cond_41
    const-string v2, "shift_temperature"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 46
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->shiftTemperature:I

    .line 48
    :cond_4f
    const-string v2, "game_sdk_setting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 49
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    .line 50
    iget-object v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    if-eqz v2, :cond_9d

    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "gameSdkSettingJson":Lorg/json/JSONObject;
    :try_start_62
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_69} :catch_6b

    move-object v2, v3

    .line 56
    goto :goto_71

    .line 54
    :catch_6b
    move-exception v3

    .line 55
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "PerformancePolicyParser"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_71
    if-eqz v2, :cond_9d

    .line 59
    const-string v3, "cpu_min_percent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 60
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuMinPercent:I

    .line 62
    :cond_81
    const-string v3, "gpu_min_percent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 63
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuMinPercent:I

    .line 65
    :cond_8f
    const-string v3, "is_supported"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 66
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->isGameSdkSupported:Z

    .line 71
    .end local v2    # "gameSdkSettingJson":Lorg/json/JSONObject;
    :cond_9d
    const-string v2, "governor_setting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->governorSetting:Ljava/lang/String;

    .line 76
    :cond_ac
    return-object v0
.end method
