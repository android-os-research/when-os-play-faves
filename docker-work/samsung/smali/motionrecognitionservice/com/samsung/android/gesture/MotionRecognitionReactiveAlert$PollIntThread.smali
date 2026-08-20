.class final Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;
.super Ljava/lang/Thread;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PollIntThread"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mMainHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 193
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 195
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    .line 258
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 259
    return-void
.end method
