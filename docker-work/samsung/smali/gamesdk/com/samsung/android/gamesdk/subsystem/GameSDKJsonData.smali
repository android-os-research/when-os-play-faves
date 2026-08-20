.class public Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;
.super Ljava/lang/Object;
.source "GameSDKJsonData.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/GameSDKComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$Singleton;,
        Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;
    }
.end annotation


# static fields
.field private static final GOS_DATA_DEFAULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GameSDK@JsonData"


# instance fields
.field private GAMESDKVERSION:I

.field private GameSDKMode:I

.field private GameSDKPMMode:I

.field private final JSONDATA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;",
            ">;"
        }
    .end annotation
.end field

.field private mGameSDKVrrDisable:Z

.field private final mJsonData_Range_MODE:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

.field private final mJsonData_Range_Version:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GAMESDKVERSION:I

    .line 25
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    .line 26
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKPMMode:I

    .line 28
    new-instance v1, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

    const/16 v2, 0x3e7

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mJsonData_Range_Version:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

    .line 29
    new-instance v0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

    const/16 v2, -0xa

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mJsonData_Range_MODE:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

    .line 31
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mGameSDKVrrDisable:Z

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->JSONDATA_MAP:Ljava/util/Map;

    .line 63
    const-string v3, "GAMESDKVERSION"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "GameSDKMode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "GameSDKPMMode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$1;

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;-><init>()V

    return-void
.end method

.method private checkEachJsonDataValid(Lorg/json/JSONObject;Ljava/lang/String;Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;)Z
    .registers 11
    .param p1, "jsonData"    # Lorg/json/JSONObject;
    .param p2, "ParameterName"    # Ljava/lang/String;
    .param p3, "mRange"    # Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

    .line 73
    const-string v0, "GameSDK@JsonData"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 74
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] checkJsonDataValid() return false by : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 75
    return v1

    .line 77
    :cond_25
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "temp":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PROGRESS] checkEachJsonDataValid(): data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", min: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    invoke-virtual {p3}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->getMIN_VALUE()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->getMAX_VALUE()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v4, v0, v1, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->getMIN_VALUE()I

    move-result v4

    if-lt v2, v4, :cond_78

    invoke-virtual {p3}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->getMAX_VALUE()I

    move-result v4

    if-le v2, v4, :cond_76

    goto :goto_78

    .line 88
    .end local v2    # "temp":I
    :cond_76
    nop

    .line 89
    return v3

    .line 81
    .restart local v2    # "temp":I
    :cond_78
    :goto_78
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FAIL] checkJsonDataValid() return false by :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9c} :catch_9d

    .line 82
    return v1

    .line 85
    .end local v2    # "temp":I
    :catch_9d
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] checkEachJsonDataValid(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v1
.end method

.method private checkJsonData(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonData"    # Lorg/json/JSONObject;

    .line 239
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->checkJsonDataValid(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 240
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@JsonData"

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] checkJsonData Valid return false. jsonData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3c

    .line 243
    :cond_24
    const-string v0, "GameSDKMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    .line 244
    const-string v0, "GAMESDKVERSION"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GAMESDKVERSION:I

    .line 247
    const-string v0, "GameSDKPMMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKPMMode:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 251
    :goto_3c
    goto :goto_41

    .line 249
    :catch_3d
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method private checkJsonDataValid(Lorg/json/JSONObject;)Z
    .registers 7
    .param p1, "jsonData"    # Lorg/json/JSONObject;

    .line 94
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->JSONDATA_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;

    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->checkEachJsonDataValid(Lorg/json/JSONObject;Ljava/lang/String;Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;)Z

    move-result v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2e

    if-nez v3, :cond_2a

    .line 96
    return v0

    .line 98
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;>;"
    :cond_2a
    goto :goto_b

    .line 102
    :cond_2b
    nop

    .line 103
    const/4 v0, 0x1

    return v0

    .line 99
    :catch_2e
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] checkJsonDataValid(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSDK@JsonData"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v0
.end method

.method private filterGOSJsonData(Lcom/samsung/android/game/PkgData;Ljava/lang/String;)Z
    .registers 10
    .param p1, "gameData"    # Lcom/samsung/android/game/PkgData;
    .param p2, "version"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    :try_start_1
    const-string v1, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_43

    .line 213
    .local v1, "gosJsonData":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "GameSDK@JsonData"

    if-eqz p1, :cond_e

    .line 214
    :try_start_8
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGameSdkSetting()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_17

    .line 216
    :cond_e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "[IGNORE] filterGOSJsonData(): gosJsonData is null"

    invoke-virtual {v4, v3, v2, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    :goto_17
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterGOSJsonData(): gosJsonData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v0, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->setGOSJsonData(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->validateGameSDKMode()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 224
    return v0

    .line 227
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->validateGameSDKVersion(Ljava/lang/String;)Z

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3f} :catch_43

    if-nez v3, :cond_42

    .line 228
    return v0

    .line 230
    :cond_42
    return v2

    .line 231
    .end local v1    # "gosJsonData":Ljava/lang/String;
    :catch_43
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;
    .registers 1

    .line 308
    # getter for: Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$Singleton;->access$100()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v0

    return-object v0
.end method

.method private initializedJsonData()V
    .registers 2

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GAMESDKVERSION:I

    .line 108
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    .line 110
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKPMMode:I

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mGameSDKVrrDisable:Z

    .line 112
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 281
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    const-string v1, "GameSDK@JsonData:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameSDKMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VRR is disabled by GOS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mGameSDKVrrDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public getGAMESDKVERSION()I
    .registers 2

    .line 288
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GAMESDKVERSION:I

    return v0
.end method

.method public getGameSDKMode()I
    .registers 2

    .line 292
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    return v0
.end method

.method public getGameSDKPMMode()I
    .registers 2

    .line 296
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKPMMode:I

    return v0
.end method

.method public getGameSDKVrrDisabled()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mGameSDKVrrDisable:Z

    return v0
.end method

.method public onFocusedPackagePause(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 2
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->initializedJsonData()V

    .line 36
    return-void
.end method

.method public onFocusedPackageResume(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 2
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 40
    return-void
.end method

.method public setGOSJsonData(Ljava/lang/String;)V
    .registers 7
    .param p1, "gosJsonData"    # Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "isSuccess":Z
    const-string v1, "GameSDK@JsonData"

    if-eqz p1, :cond_1e

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1e

    .line 259
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "gosData":Lorg/json/JSONObject;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    const-string v4, "checkJsonData(gosData)"

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, v2}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->checkJsonData(Lorg/json/JSONObject;)V

    .line 262
    .end local v2    # "gosData":Lorg/json/JSONObject;
    goto :goto_27

    .line 263
    :cond_1e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "Json Data(length()<0) "

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_27
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_31

    if-lez v2, :cond_30

    .line 269
    const/4 v0, 0x1

    .line 273
    :cond_30
    goto :goto_35

    .line 271
    :catch_31
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_35
    if-nez v0, :cond_40

    .line 276
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "[Json Data] isSuccess = false"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_40
    return-void
.end method

.method public validateGameSDKMode()Z
    .registers 8

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "valid":Z
    iget v1, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "GameSDK@JsonData"

    packed-switch v1, :pswitch_data_6a

    goto :goto_68

    .line 130
    :pswitch_b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateGameSDKMode(): GameSDK VRR Filtered by GOS, mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 131
    iput-boolean v3, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mGameSDKVrrDisable:Z

    .line 132
    const/4 v0, 0x1

    goto :goto_68

    .line 126
    :pswitch_2b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateGameSDKMode(): GameSDKmode Filtered by GOS, mode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 127
    iput-boolean v3, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->mGameSDKVrrDisable:Z

    .line 128
    goto :goto_68

    .line 122
    :pswitch_4a
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateGameSDKMode(): GameSDKmode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GameSDKMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    .line 124
    nop

    .line 135
    :goto_68
    return v0

    nop

    :pswitch_data_6a
    .packed-switch -0x1
        :pswitch_4a
        :pswitch_2b
        :pswitch_b
    .end packed-switch
.end method

.method public validateGameSDKVersion(Ljava/lang/String;)Z
    .registers 13
    .param p1, "inVersion"    # Ljava/lang/String;

    .line 143
    const-string v0, "."

    const-string v1, "GameSDK@JsonData"

    const/4 v2, 0x0

    if-eqz p1, :cond_e2

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_e2

    .line 148
    :cond_11
    :try_start_11
    const-string v3, ","

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "version":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 151
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 152
    .local v4, "majorVersion":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 153
    .local v5, "minorVersion":I
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v6, v5

    .line 155
    .local v6, "integerVersion":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validateGameSDKVersion(): majorVersion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", minorVersion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", given string version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v2, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_a7

    const/16 v7, 0x9

    if-le v5, v7, :cond_69

    goto :goto_a7

    .line 163
    :cond_69
    const/16 v7, 0x1f

    if-gt v6, v7, :cond_77

    .line 164
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    const-string v8, "[FAIL] validateGameSDKVersion(): version mismatch"

    invoke-virtual {v7, v1, v2, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 165
    return v2

    .line 168
    :cond_77
    iget v7, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GAMESDKVERSION:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eq v7, v8, :cond_a6

    if-ge v6, v7, :cond_a6

    .line 169
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FAIL] validateGameSDKVersion(): version : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " is filtered by server : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->GAMESDKVERSION:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v9, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    return v2

    .line 172
    :cond_a6
    return v9

    .line 158
    :cond_a7
    :goto_a7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[FAIL] validateGameSDKVersion(): Invalid input version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v2, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_c1} :catch_c2

    .line 159
    return v2

    .line 173
    .end local v0    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "majorVersion":I
    .end local v5    # "minorVersion":I
    .end local v6    # "integerVersion":I
    :catch_c2
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] validateGameSDKVersion(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    return v2

    .line 144
    :cond_e2
    :goto_e2
    return v2
.end method

.method public validatePackageByGos(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 181
    const-string v0, "GameSDK@JsonData"

    const/4 v1, 0x0

    if-eqz p1, :cond_53

    :try_start_5
    const-string v2, ""

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_53

    .line 186
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 187
    .local v2, "userId":I
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/game/PkgDataHelper;->getGamePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v3

    .line 189
    .local v3, "gameData":Lcom/samsung/android/game/PkgData;
    const/4 v4, 0x1

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/samsung/android/game/PkgData;->isGameSdkSupported()Z

    move-result v5

    if-nez v5, :cond_31

    .line 190
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    const-string v6, "[FAIL] validatePackageByGos(): Filtered by isGameSdkSupported()"

    invoke-virtual {v5, v0, v4, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 191
    return v1

    .line 194
    :cond_31
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->filterGOSJsonData(Lcom/samsung/android/game/PkgData;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 195
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FAIL] validatePackageByGos(): Filtered by  filterGOSJsonData() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v4, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_52
    return v4

    .line 182
    .end local v2    # "userId":I
    .end local v3    # "gameData":Lcom/samsung/android/game/PkgData;
    :cond_53
    :goto_53
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] validatePackageByGos(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_6e

    .line 183
    return v1

    .line 199
    :catch_6e
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] validatePackageByGos(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method
