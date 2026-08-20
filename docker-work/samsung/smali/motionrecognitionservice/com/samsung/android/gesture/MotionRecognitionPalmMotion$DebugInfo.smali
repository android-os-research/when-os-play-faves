.class Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugInfo"
.end annotation


# instance fields
.field mPalmFlag:Z

.field mSipMode:Z

.field mSumMajor:F

.field mTime:J

.field mTimeStr:Ljava/lang/String;

.field mToolType:I

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mToolType:I

    .line 591
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mSumMajor:F

    .line 592
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mX:F

    .line 593
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mY:F

    .line 594
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mPalmFlag:Z

    .line 595
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mSipMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V

    return-void
.end method


# virtual methods
.method public setDebugInfo(IFZFFZ)V
    .registers 7
    .param p1, "toolType"    # I
    .param p2, "sumMajor"    # F
    .param p3, "palmFlag"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "sipMode"    # Z

    .line 603
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mToolType:I

    .line 604
    iput p2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mSumMajor:F

    .line 605
    iput-boolean p3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mPalmFlag:Z

    .line 606
    iput p4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mX:F

    .line 607
    iput p5, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mY:F

    .line 608
    iput-boolean p6, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mSipMode:Z

    .line 609
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "currentTime"    # J

    .line 598
    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mTime:J

    .line 599
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->this$0:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->-$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion$DebugInfo;->mTimeStr:Ljava/lang/String;

    .line 600
    return-void
.end method
