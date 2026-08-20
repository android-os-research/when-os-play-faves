.class public Lcom/samsung/android/gesture/MotionRecognitionPalmData;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    }
.end annotation


# static fields
.field protected static final PALM_DOWN:I = 0x1

.field protected static final PALM_DOWN_LARGE:I = 0x2

.field protected static final PALM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static final mIsDebug:Z


# instance fields
.field private hasPalmFlag:I

.field private isLandscape:Z

.field private isLowDPI:Z

.field private isPalm:Z

.field private final mContext:Landroid/content/Context;

.field private mFingerPointerCnt:I

.field private final mLastActions:[I

.field private mLastTimeActionUp:J

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private final mTouchPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private meanX:F

.field private meanY:F

.field private screenHeight:I

.field private screenWidth:I

.field private sumEccen:F

.field private sumMajor:F

.field private sumMinor:F

.field private sumX:F

.field private sumY:F

.field private varianceX:F

.field private varianceY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mIsDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    .line 38
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    .line 42
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    .line 43
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    .line 44
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 45
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    .line 46
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    .line 47
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    .line 48
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 49
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 51
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    .line 52
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape:Z

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastTimeActionUp:J

    .line 60
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private calculateVariance()V
    .registers 8

    .line 220
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    .line 221
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    .line 222
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 226
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 227
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;

    .line 228
    .local v1, "t":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    float-to-double v2, v2

    iget v4, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 229
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    float-to-double v2, v2

    iget v4, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 230
    .end local v1    # "t":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    goto :goto_20

    .line 232
    :cond_5b
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    .line 233
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    .line 234
    return-void
.end method

.method private printDebugLog(II)V
    .registers 12
    .param p1, "palmTouchCnt"    # I
    .param p2, "sweepCnt"    # I

    .line 185
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mIsDebug:Z

    if-eqz v0, :cond_136

    int-to-float v0, p1

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_136

    int-to-float v0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_136

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_16
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    if-ge v1, v2, :cond_136

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    const-string v3, "[PALM] ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%-5s\t"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "tmp":Ljava/lang/String;
    const-string v5, " ACTION: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%-7s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v5, "X: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "%-7s\t"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 199
    const-string v5, "Y: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-array v5, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const-string v8, "%-10.5s\t"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 201
    const-string v5, "ECC: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-array v5, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 203
    const-string v5, "MAJOR: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string v5, "MINOR: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%-10.6s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 207
    const-string v5, "VarX: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%-10.6s\t"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 209
    const-string v5, "VarY: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .end local v4    # "tmp":Ljava/lang/String;
    .local v2, "tmp":Ljava/lang/String;
    const-string v3, "PALM: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PalmMotion"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v2    # "tmp":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 216
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "idx":I
    :cond_136
    return-void
.end method


# virtual methods
.method public getFingerCnt()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    return v0
.end method

.method public getHasPalmFlag()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    return v0
.end method

.method public getLastAction(I)I
    .registers 3
    .param p1, "idx"    # I

    .line 252
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLastTimeActionUp()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastTimeActionUp:J

    return-wide v0
.end method

.method public getMeanX()F
    .registers 2

    .line 88
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    return v0
.end method

.method public getMeanY()F
    .registers 2

    .line 92
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPalm(I)I
    .registers 3
    .param p1, "index"    # I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    return v0
.end method

.method public getSumEccen()F
    .registers 2

    .line 80
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    return v0
.end method

.method public getSumMajor()F
    .registers 2

    .line 84
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    return v0
.end method

.method public getVarianceX()F
    .registers 2

    .line 96
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceX:F

    return v0
.end method

.method public getVarianceY()F
    .registers 2

    .line 100
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->varianceY:F

    return v0
.end method

.method public isLandscape()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape:Z

    return v0
.end method

.method public isLowDPI()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI:Z

    return v0
.end method

.method public isPalm()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    return v0
.end method

.method public setActionMoveEvent()V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 248
    return-void
.end method

.method public setLastTimeActionUp(J)V
    .registers 3
    .param p1, "currentTime"    # J

    .line 124
    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastTimeActionUp:J

    .line 125
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 69
    return-void
.end method

.method public update(II)V
    .registers 9
    .param p1, "palmTouchCnt"    # I
    .param p2, "sweepCnt"    # I

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->variableInitialize()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    if-ge v0, v1, :cond_6a

    .line 168
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 169
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;-><init>(FFFF)V

    .line 170
    .local v1, "p":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    .line 173
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    .line 174
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 175
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    .line 176
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    .line 167
    .end local v1    # "p":Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 179
    .end local v0    # "i":I
    :cond_6a
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->calculateVariance()V

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->printDebugLog(II)V

    .line 181
    return-void
.end method

.method public updateAction(I)V
    .registers 6
    .param p1, "action"    # I

    .line 241
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mLastActions:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 242
    const/4 v2, 0x0

    aget v3, v0, v2

    aput v3, v0, v1

    .line 243
    aput p1, v0, v2

    .line 244
    return-void
.end method

.method public updateScreenInfo()V
    .registers 9

    .line 146
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 147
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 149
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    .line 150
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    .line 151
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 153
    .local v2, "dpi":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_30

    .line 154
    iget v5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenWidth:I

    div-int/2addr v5, v2

    .line 155
    .local v5, "widthInch":I
    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->screenHeight:I

    div-int/2addr v6, v2

    .line 156
    .local v6, "heightInch":I
    const/16 v7, 0xc8

    if-gt v2, v7, :cond_2d

    const/4 v7, 0x4

    if-le v5, v7, :cond_2b

    if-gt v6, v7, :cond_2d

    :cond_2b
    move v7, v3

    goto :goto_2e

    :cond_2d
    move v7, v4

    :goto_2e
    iput-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLowDPI:Z

    .line 158
    .end local v5    # "widthInch":I
    .end local v6    # "heightInch":I
    :cond_30
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v4

    :goto_3a
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isLandscape:Z

    .line 159
    return-void
.end method

.method public updateSimpleReadyPalmInfo()V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 258
    .local v0, "fingerPointCnt":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_2e

    .line 263
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->getPalm(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1e

    goto :goto_2c

    .line 267
    :cond_1e
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 264
    :cond_2c
    :goto_2c
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->isPalm:Z

    .line 269
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method public variableInitialize()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->mFingerPointerCnt:I

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumX:F

    .line 136
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumY:F

    .line 137
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumEccen:F

    .line 138
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanX:F

    .line 139
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->meanY:F

    .line 140
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMajor:F

    .line 141
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->sumMinor:F

    .line 142
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData;->hasPalmFlag:I

    .line 143
    return-void
.end method
