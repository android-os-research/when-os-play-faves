.class public Lcom/samsung/android/server/vibrator/VibratorHqmData;
.super Ljava/lang/Object;
.source "VibratorHqmData.java"


# static fields
.field public static final KEY_ALARM_VIB_PLAYED_COUNT:Ljava/lang/String; = "FW_AVPC"

.field public static final KEY_EXTRA_VIB_PLAYED_COUNT:Ljava/lang/String; = "FW_EVPC"

.field public static final KEY_NOTIFICATION_VIB_PLAYED_COUNT:Ljava/lang/String; = "FW_NVPC"

.field public static final KEY_RING_VIB_PLAYED_COUNT:Ljava/lang/String; = "FW_RVPC"

.field public static final KEY_TOUCH_VIB_PLAYED_COUNT:Ljava/lang/String; = "FW_TVPC"


# instance fields
.field public mAlarmCount:I

.field public mExtraCount:I

.field public mLoggingData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationCount:I

.field public mRingCount:I

.field public mTouchCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 39
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 40
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 41
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 42
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    return-void
.end method

.method public get(Ljava/lang/String;)I
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public increaseCount(I)V
    .registers 4

    const/16 v0, 0x11

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_67

    const/16 v0, 0x12

    if-eq p1, v0, :cond_52

    const/16 v0, 0x21

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x31

    if-eq p1, v0, :cond_28

    .line 64
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    if-lt p1, v1, :cond_18

    goto :goto_1a

    :cond_18
    add-int/lit8 v1, p1, 0x1

    :goto_1a
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_EVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 56
    :cond_28
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    if-lt p1, v1, :cond_2d

    goto :goto_2f

    :cond_2d
    add-int/lit8 v1, p1, 0x1

    :goto_2f
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_NVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 48
    :cond_3d
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    if-lt p1, v1, :cond_42

    goto :goto_44

    :cond_42
    add-int/lit8 v1, p1, 0x1

    :goto_44
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_RVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 60
    :cond_52
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    if-lt p1, v1, :cond_57

    goto :goto_59

    :cond_57
    add-int/lit8 v1, p1, 0x1

    :goto_59
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_TVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 52
    :cond_67
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    if-lt p1, v1, :cond_6c

    goto :goto_6e

    :cond_6c
    add-int/lit8 v1, p1, 0x1

    :goto_6e
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_AVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7b
    return-void
.end method
