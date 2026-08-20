.class public Lcom/samsung/android/gesture/PocketBigDataManager;
.super Ljava/lang/Object;
.source "PocketBigDataManager.java"


# static fields
.field public static final HQM_HIT_TYPE_PH:Ljava/lang/String; = "ph"

.field public static final HQM_HIT_TYPE_SM:Ljava/lang/String; = "sm"

.field public static final HQM_POCKET_FEATURE:Ljava/lang/String; = "PKMD"

.field private static final HQM_SURVEY_LOG:Z = true

.field private static final P_POPUPCNT:Ljava/lang/String; = "P_POPUPCNT"

.field private static final P_PROXCNT:Ljava/lang/String; = "P_PROXCNT"

.field private static final P_REASON:[Ljava/lang/String;

.field private static final P_SHOWTIME:Ljava/lang/String; = "P_SHOWTIME"

.field public static final RM_DRAG_POPUP_OK:I = 0x5

.field public static final RM_LIGHT:I = 0x2

.field public static final RM_PROXIMITY:I = 0x3

.field public static final RM_REASON_MAX:I = 0x6

.field public static final RM_SCREEN_TIMEOUT:I = 0x1

.field public static final RM_TILT:I = 0x4

.field private static final SENSOR_MRSI_FEATURE_MAX_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String;

.field private static pocketBigDataManager:Lcom/samsung/android/gesture/PocketBigDataManager;


# instance fields
.field private mPopupEndTime:J

.field private mPopupStartTime:J

.field private mReasonCnt:[I

.field private proxyCnt:I

.field private showPopupCnt:I

.field private showPopupTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 8
    const-class v0, Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    .line 22
    const-string v1, ""

    const-string v2, "P_TIMEOUT"

    const-string v3, "P_LIGHT"

    const-string v4, "P_PROX"

    const-string v5, "P_TILT"

    const-string v6, "P_DRAG_OK"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->P_REASON:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->pocketBigDataManager:Lcom/samsung/android/gesture/PocketBigDataManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupCnt:I

    .line 36
    iput v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketBigDataManager;->initialize()V

    .line 41
    return-void

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketBigDataManager;
    .registers 1

    .line 52
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->pocketBigDataManager:Lcom/samsung/android/gesture/PocketBigDataManager;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketBigDataManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->pocketBigDataManager:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 54
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->pocketBigDataManager:Lcom/samsung/android/gesture/PocketBigDataManager;

    return-object v0
.end method


# virtual methods
.method public addProxCount()V
    .registers 4

    .line 75
    iget v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    .line 76
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add proxCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public checkExtraString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "extra"    # Ljava/lang/String;

    .line 132
    move-object v0, p1

    .line 134
    .local v0, "loggingData":Ljava/lang/String;
    const-string v1, "{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_37

    .line 139
    const-string v2, "MRSI Feature\'s length is wrong!!"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    .line 142
    :cond_37
    return-object v0
.end method

.method public initialize()V
    .registers 4

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    .line 45
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    aput v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0    # "i":I
    :cond_c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupEndTime:J

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupStartTime:J

    .line 48
    iput v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    iput v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupCnt:I

    .line 49
    return-void
.end method

.method public makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "strKey"    # Ljava/lang/String;
    .param p2, "strValue"    # Ljava/lang/String;

    .line 89
    const-string v0, ""

    .line 90
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public makeExtraString()Ljava/lang/String;
    .registers 8

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v0, "res":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupCnt:I

    if-eqz v1, :cond_16

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "P_POPUPCNT"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_16
    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, ","

    const-string v3, ""

    if-eqz v1, :cond_5a

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "P_SHOWTIME"

    if-nez v1, :cond_4d

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 106
    :cond_4d
    iget-wide v5, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_5a
    :goto_5a
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5b
    const/4 v4, 0x6

    if-ge v1, v4, :cond_a9

    .line 111
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    aget v4, v4, v1

    if-eqz v4, :cond_a6

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/gesture/PocketBigDataManager;->P_REASON:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a6

    .line 116
    :cond_93
    sget-object v4, Lcom/samsung/android/gesture/PocketBigDataManager;->P_REASON:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_a6
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 120
    .end local v1    # "i":I
    :cond_a9
    iget v1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    if-eqz v1, :cond_e5

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "P_PROXCNT"

    if-nez v1, :cond_d8

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e5

    .line 125
    :cond_d8
    iget v1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeDataSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_e5
    :goto_e5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->checkExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printBigData()V
    .registers 5

    .line 80
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->proxyCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4b
    const/4 v1, 0x6

    if-ge v0, v1, :cond_77

    .line 84
    sget-object v1, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 85
    .end local v0    # "i":I
    :cond_77
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "print BigData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeExtraString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public sendHWParamServer(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 23
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "hitType"    # Ljava/lang/String;

    .line 151
    const-string v0, "HqmManagerService"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    .line 153
    .local v0, "semHqmManager":Landroid/os/SemHqmManager;
    const-string v12, "Sensor"

    .line 154
    .local v12, "compID":Ljava/lang/String;
    const-string v13, "0.0"

    .line 155
    .local v13, "compVer":Ljava/lang/String;
    const-string v14, "sec"

    .line 156
    .local v14, "compManufacture":Ljava/lang/String;
    const-string v15, ""

    .line 157
    .local v15, "dev_customDataSet":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/PocketBigDataManager;->makeExtraString()Ljava/lang/String;

    move-result-object v16

    .line 158
    .local v16, "basic_customDataSet":Ljava/lang/String;
    const-string v17, ""

    .line 160
    .local v17, "pri_customDataSet":Ljava/lang/String;
    if-eqz v0, :cond_2f

    if-eqz v16, :cond_2f

    .line 161
    move-object v2, v0

    move/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_36

    .line 164
    :cond_2f
    sget-object v2, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    const-string v3, "SemHqmManager is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_36
    return-void
.end method

.method public setPopupEndTime(J)V
    .registers 9
    .param p1, "time"    # J

    .line 69
    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupEndTime:J

    .line 70
    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    iget-wide v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    .line 71
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OVERLAY TIME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupEndTime:J

    iget-wide v4, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setPopupStartTime(J)V
    .registers 4
    .param p1, "time"    # J

    .line 64
    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mPopupStartTime:J

    .line 65
    iget v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->showPopupCnt:I

    .line 66
    return-void
.end method

.method public setRMReason(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 59
    sget-object v0, Lcom/samsung/android/gesture/PocketBigDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RM reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketBigDataManager;->mReasonCnt:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 61
    return-void
.end method
