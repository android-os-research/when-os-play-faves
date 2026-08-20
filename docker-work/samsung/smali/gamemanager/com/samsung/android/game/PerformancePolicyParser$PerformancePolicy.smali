.class Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
.super Ljava/lang/Object;
.source "PerformancePolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/PerformancePolicyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PerformancePolicy"
.end annotation


# static fields
.field private static final DEFAULT_SIOP_MODE:I = 0x1


# instance fields
.field cpuLevel:I

.field cpuMinPercent:I

.field gameMode:I

.field gameSdkSetting:Ljava/lang/String;

.field governorSetting:Ljava/lang/String;

.field gpuLevel:I

.field gpuMinPercent:I

.field isGameSdkSupported:Z

.field shiftTemperature:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuLevel:I

    .line 13
    iput v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuLevel:I

    .line 14
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameMode:I

    .line 15
    iput v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->shiftTemperature:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuMinPercent:I

    .line 17
    iput v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuMinPercent:I

    .line 18
    iput-boolean v1, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->isGameSdkSupported:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->governorSetting:Ljava/lang/String;

    return-void
.end method
