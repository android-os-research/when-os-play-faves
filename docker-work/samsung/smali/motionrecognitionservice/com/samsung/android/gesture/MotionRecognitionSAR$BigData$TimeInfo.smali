.class Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeInfo"
.end annotation


# instance fields
.field private mSarDevices:J

.field private mStart:J

.field private mWorking:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->mSarDevices:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->mStart:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->mWorking:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmSarDevices(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->mSarDevices:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStart(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->mStart:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWorking(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;->mWorking:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData$TimeInfo;-><init>()V

    return-void
.end method
