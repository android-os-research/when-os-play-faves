.class public Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
.super Ljava/lang/Object;
.source "VibratorHqmHelper.java"


# static fields
.field public static final BIG_DATA:[Ljava/lang/String;

.field public static final COMONENT_VER:Ljava/lang/String; = "0.0"

.field public static final COMPONENT_ID:Ljava/lang/String; = "Audio"

.field public static final COM_MANUFACTURE:Ljava/lang/String; = "sec"

.field public static final DEV_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field public static final HIT_TYPE:Ljava/lang/String; = "sm"

.field public static final MS_PER_HOUR:I = 0x36ee80

.field public static final PERIOD_LOGGING:I = 0x5265c00

.field public static final PRI_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "VibratorHqmHelper"

.field public static final VIBRATOR_FEATURE:Ljava/lang/String; = "VIBE"

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "FW_RVPC"

    const-string v1, "FW_AVPC"

    const-string v2, "FW_NVPC"

    const-string v3, "FW_TVPC"

    const-string v4, "FW_EVPC"

    .line 55
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HqmManagerService"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v0, "alarm"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    .registers 2

    .line 69
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 72
    :cond_b
    sget-object p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

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

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 104
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_1c

    .line 106
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

    .line 112
    :cond_1c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_21
    move-exception p0

    .line 109
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendHqmVibratorData(Lcom/samsung/android/server/vibrator/VibratorHqmData;)V
    .registers 7

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 90
    :goto_b
    sget-object v3, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_27

    .line 91
    aget-object v4, v3, v2

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->get(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 93
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 97
    :cond_27
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

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

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string p2, "\\{"

    const-string v0, ""

    .line 121
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\}"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz p1, :cond_37

    const-string p1, "VibratorHqmHelper"

    const-string/jumbo p2, "sendLoggingDataToHQM() Server update !!!"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Audio"

    const-string v4, "VIBE"

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

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.media.action.VIBRTOR_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 77
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 80
    iget-object v3, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long v5, p0, v0

    const/4 v4, 0x3

    const-wide/32 v7, 0x5265c00

    .line 80
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
