.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpInfo"
.end annotation


# instance fields
.field currentTimeStr:Ljava/lang/String;

.field freeFallTime:J

.field height:J

.field status:I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 2

    .line 3827
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    return-void
.end method


# virtual methods
.method public setFreeFallDetectionData(JIJ)V
    .registers 9
    .param p1, "height"    # J
    .param p3, "status"    # I
    .param p4, "time"    # J

    .line 3834
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->currentTimeStr:Ljava/lang/String;

    .line 3835
    iput-wide p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->height:J

    .line 3836
    iput p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->status:I

    .line 3837
    iput-wide p4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->freeFallTime:J

    .line 3838
    return-void
.end method
