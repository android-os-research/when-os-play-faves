.class public final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public static COUNTER_COLOR_FADE:Ljava/lang/String; = "ColorFadeLevel"

.field public static final DEBUG:Z = false

.field public static final SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DisplayPowerState"


# instance fields
.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCleanListener:Ljava/lang/Runnable;

.field public final mColorFade:Lcom/android/server/display/ColorFade;

.field public mColorFadeDrawPending:Z

.field public final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field public mColorFadeLevel:F

.field public mColorFadePrepared:Z

.field public mColorFadeReady:Z

.field public mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

.field public final mDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field public mScreenBrightness:F

.field public mScreenReady:Z

.field public mScreenState:I

.field public mScreenUpdatePending:Z

.field public final mScreenUpdateRunnable:Ljava/lang/Runnable;

.field public mSdrScreenBrightness:F

.field public volatile mStopped:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlanker(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorFade(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorFadeLevel(Lcom/android/server/display/DisplayPowerState;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorFadePrepared(Lcom/android/server/display/DisplayPowerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhotonicModulator(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSdrScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmColorFadeDrawPending(Lcom/android/server/display/DisplayPowerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmColorFadeReady(Lcom/android/server/display/DisplayPowerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenReady(Lcom/android/server/display/DisplayPowerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenUpdatePending(Lcom/android/server/display/DisplayPowerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvokeCleanListenerIfNeeded(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostScreenUpdateThreadSafe(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetCOUNTER_COLOR_FADE()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 108
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 122
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string/jumbo v1, "screenBrightnessFloat"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    .line 135
    new-instance v0, Lcom/android/server/display/DisplayPowerState$3;

    const-string/jumbo v1, "sdrScreenBrightnessFloat"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)V
    .registers 7

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 418
    new-instance v0, Lcom/android/server/display/DisplayPowerState$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$5;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 86
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 87
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 88
    new-instance p1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 90
    iput p3, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 97
    iput p4, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/high16 p1, 0x3f800000    # 1.0f

    if-eq p4, v1, :cond_37

    move p2, p1

    goto :goto_38

    :cond_37
    const/4 p2, 0x0

    .line 99
    :goto_38
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 100
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 101
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    const/4 p2, 0x0

    .line 103
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 104
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 105
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .registers 5

    .line 249
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    const-wide/32 v1, 0x20000

    const/16 v3, 0x64

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    :cond_11
    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void
.end method

.method public dismissColorFadeResources()V
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 343
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power State:"

    .line 344
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSdrScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 357
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz p0, :cond_f4

    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    :cond_f4
    return-void
.end method

.method public getColorFadeLevel()F
    .registers 1

    .line 309
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return p0
.end method

.method public getScreenBrightness()F
    .registers 1

    .line 221
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    return p0
.end method

.method public getScreenState()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return p0
.end method

.method public getSdrScreenBrightness()F
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    return p0
.end method

.method public final invokeCleanListenerIfNeeded()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 382
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 383
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 384
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method public final postScreenUpdateThreadSafe()V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_15

    .line 239
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    return v1

    .line 234
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return v2
.end method

.method public final scheduleColorFadeDraw()V
    .registers 4

    .line 373
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 375
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final scheduleScreenUpdate()V
    .registers 2

    .line 361
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    :cond_a
    return-void
.end method

.method public setColorFadeLevel(F)V
    .registers 10

    .line 276
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_61

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const-string v4, "DisplayPowerState"

    const/4 v5, 0x0

    if-nez v0, :cond_2d

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorFade exit displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->setState(Z)V

    goto :goto_4d

    :cond_2d
    float-to-double v6, p1

    cmpl-double v0, v6, v2

    if-nez v0, :cond_4d

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorFade entry displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->setState(Z)V

    .line 293
    :cond_4d
    :goto_4d
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 294
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq p1, v1, :cond_58

    .line 295
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 296
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 298
    :cond_58
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz p1, :cond_61

    .line 299
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    :cond_61
    return-void
.end method

.method public setColorFadeStateRunnable(Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    return-void
.end method

.method public setScreenBrightness(F)V
    .registers 3

    .line 204
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_13

    .line 209
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 210
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_13
    return-void
.end method

.method public setScreenState(I)V
    .registers 3

    .line 152
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, p1, :cond_c

    .line 157
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_c
    return-void
.end method

.method public setSdrScreenBrightness(F)V
    .registers 3

    .line 177
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_13

    .line 182
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 183
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_13
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    .line 336
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 339
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .registers 3

    .line 319
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    const/4 p0, 0x1

    return p0

    .line 320
    :cond_e
    :goto_e
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    const/4 p0, 0x0

    return p0
.end method
