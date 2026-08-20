.class public Lcom/samsung/android/server/audio/AudioHqmHelper;
.super Ljava/lang/Object;
.source "AudioHqmHelper.java"


# static fields
.field public static final AUDIO_FEATURE:Ljava/lang/String; = "FWAC"

.field public static final BIG_DATA:[[Ljava/lang/String;

.field public static final COMONENT_VER:Ljava/lang/String; = "0.0"

.field public static final COMPONENT_ID:Ljava/lang/String; = "Audio"

.field public static final COM_MANUFACTURE:Ljava/lang/String; = "sec"

.field public static final DEV_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field public static final HIT_TYPE:Ljava/lang/String; = "sm"

.field public static final MS_PER_HOUR:I = 0x36ee80

.field public static final PERIOD_LOGGING:I = 0x5265c00

.field public static final PRI_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "AS.AudioHqmHelper"

.field public static sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 27

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "HW_CSPT"

    const-string v2, "HW_CSPV"

    const-string v3, "HW_CSPC"

    const-string v4, "HW_CRET"

    const-string v5, "HW_CREV"

    const-string v6, "HW_CREC"

    const-string v7, "HW_CEAT"

    const-string v8, "HW_CEAV"

    const-string v9, "HW_CEAC"

    const-string v10, "HW_REVC"

    const-string v11, "HW_EVSC"

    const-string v12, "HW_CBTT"

    const-string v13, "HW_CBTC"

    const-string v14, "HW_CUST"

    const-string v15, "HW_CUSV"

    const-string v16, "HW_CUSC"

    .line 55
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "HW_MSPT"

    const-string v4, "HW_MSPV"

    const-string v5, "HW_MSPC"

    const-string v6, "HW_MEAT"

    const-string v7, "HW_MEAV"

    const-string v8, "HW_MEAC"

    const-string v9, "HW_MBTT"

    const-string v10, "HW_MBTV"

    const-string v11, "HW_MBTC"

    const-string v12, "HW_MUST"

    const-string v13, "HW_MUSV"

    const-string v14, "HW_MUSC"

    const-string v15, "HW_3EJC"

    const-string v16, "HW_4EJC"

    const-string v17, "HW_MEDT"

    const-string v18, "HW_MEDV"

    const-string v19, "HW_MEDC"

    const-string v20, "HW_DLBY"

    const-string v21, "MU_MSVL"

    const-string v22, "MU_MEVL"

    const-string v23, "MU_MUHV"

    const-string v24, "HW_MUHT"

    const-string v25, "HW_MUHV"

    const-string v26, "HW_MUHC"

    filled-new-array/range {v3 .. v26}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "FM_FWBT"

    const-string v2, "FM_FVBT"

    const-string v3, "FW_DSDC"

    const-string v4, "FW_VSMC"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HqmManagerService"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v0, "alarm"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioHqmHelper;
    .registers 2

    .line 77
    sget-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Lcom/samsung/android/server/audio/AudioHqmHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/AudioHqmHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;

    .line 80
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;

    return-object p0
.end method


# virtual methods
.method public final convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 113
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_1c

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_19} :catch_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 121
    :cond_1c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_21
    move-exception p0

    .line 118
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V
    .registers 10

    const/4 p2, 0x0

    move v0, p2

    .line 95
    :goto_2
    sget-object v1, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, p2

    .line 99
    :goto_12
    sget-object v4, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    aget-object v5, v4, v0

    array-length v6, v5

    if-ge v3, v6, :cond_2e

    .line 100
    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 101
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 105
    :cond_2e
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_34
    return-void
.end method

.method public final sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string p2, "\\{"

    const-string v0, ""

    .line 130
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\}"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    iget-object p1, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz p1, :cond_37

    const-string p1, "AS.AudioHqmHelper"

    const-string/jumbo p2, "sendLoggingDataToHQM() Server update !!!"

    .line 133
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Audio"

    const-string v4, "FWAC"

    const-string/jumbo v5, "sm"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_37
    return-void
.end method

.method public startLogging(Landroid/content/Context;)V
    .registers 12

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 85
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 88
    iget-object v3, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long v5, p0, v0

    const/4 v4, 0x3

    const-wide/32 v7, 0x5265c00

    .line 88
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
