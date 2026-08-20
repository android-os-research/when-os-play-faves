.class public Lcom/android/server/display/BrightnessThrottler;
.super Ljava/lang/Object;
.source "BrightnessThrottler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessThrottler$Injector;,
        Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BrightnessThrottler"

.field public static final THROTTLING_INVALID:I = -0x1


# instance fields
.field public mBrightnessCap:F

.field public mBrightnessMaxReason:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

.field public final mThrottlingChangeCallback:Ljava/lang/Runnable;

.field public mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

.field public mThrottlingStatus:I


# direct methods
.method public static synthetic $r8$lambda$swaJkoxS5CEKG3PInbI0TthuAtg(Lcom/android/server/display/BrightnessThrottler;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->lambda$dump$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mthermalStatusChanged(Lcom/android/server/display/BrightnessThrottler;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->thermalStatusChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V
    .registers 5

    .line 57
    new-instance v0, Lcom/android/server/display/BrightnessThrottler$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessThrottler$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/BrightnessThrottler;-><init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 62
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 63
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 65
    iput-object p4, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    .line 66
    new-instance p3, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 68
    iget-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V

    return-void
.end method

.method private synthetic lambda$dump$0(Ljava/io/PrintWriter;)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public deviceSupportsThrottling()Z
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessThrottler;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "BrightnessThrottler:"

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMaxReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 179
    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBrightnessCap()F
    .registers 1

    .line 76
    iget p0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    return p0
.end method

.method public getBrightnessMaxReason()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    return p0
.end method

.method public isThrottled()Z
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V
    .registers 2

    .line 101
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->stop()V

    .line 102
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 104
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->deviceSupportsThrottling()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 105
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->startObserving()V

    :cond_10
    return-void
.end method

.method public stop()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    return-void
.end method

.method public final thermalStatusChanged(I)V
    .registers 3

    .line 126
    iget v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    if-eq v0, p1, :cond_9

    .line 127
    iput p1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->updateThrottling()V

    :cond_9
    return-void
.end method

.method public final updateThrottling()V
    .registers 7

    .line 133
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->deviceSupportsThrottling()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 140
    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 142
    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 143
    iget v4, v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v5, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    if-gt v4, v5, :cond_2d

    .line 144
    iget v0, v3, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    const/4 v1, 0x1

    goto :goto_17

    .line 153
    :cond_2d
    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_37

    iget v2, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    if-eq v2, v1, :cond_46

    .line 154
    :cond_37
    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessThrottler;->verifyAndConstrainBrightnessCap(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 155
    iput v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 163
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_46

    .line 164
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_46
    return-void
.end method

.method public final verifyAndConstrainBrightnessCap(F)F
    .registers 5

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    const-string v1, "brightness "

    const-string v2, "BrightnessThrottler"

    if-gez v0, :cond_24

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is lower than the minimum possible brightness "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_24
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_45

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is higher than the maximum possible brightness "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_45
    return p1
.end method
