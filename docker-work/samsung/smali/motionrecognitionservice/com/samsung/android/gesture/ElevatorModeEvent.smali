.class public Lcom/samsung/android/gesture/ElevatorModeEvent;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;,
        Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;
    }
.end annotation


# static fields
.field private static final ELE_VER:Ljava/lang/String; = "__ELE__1.02"

.field private static final LOG_SAMPLINGTIME:I = 0xa

.field private static final ONE_MIN:I = 0xea60

.field private static final ONE_SEC:I = 0x3e8

.field private static final SAMPLING_RATE:I = 0x14

.field private static final TIMER_TH:I = 0x493e0


# instance fields
.field final CAND_ELE_OUT:I

.field final NO_ELE:I

.field final VERTICAL_ELE:I

.field acc:Lcom/samsung/android/gesture/AR_SENSORDATA;

.field arrAccData:[F

.field arrMagData:[F

.field baro:Lcom/samsung/android/gesture/AR_BARODATA;

.field baroData:F

.field calc_Feature:Lcom/samsung/android/gesture/AR_CalcFeature;

.field private eleCallback:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

.field eleCandCnt:I

.field elevatorCore:Lcom/samsung/android/gesture/ElevatorCore;

.field gARData:Lcom/samsung/android/gesture/AR_MAIN_DATA;

.field private handler:Landroid/os/Handler;

.field isElevatorCur:Z

.field isElevatorPrev:Z

.field private mContext:Landroid/content/Context;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mag:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

.field prevStepCnt:I

.field state:I

.field stepCnt:I

.field stepDetector:Lcom/samsung/android/gesture/StepDetector;

.field private thread:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

.field timer:I


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/gesture/ElevatorModeEvent;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mElevatorDetectNotifier(Lcom/samsung/android/gesture/ElevatorModeEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/ElevatorModeEvent;->ElevatorDetectNotifier()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->NO_ELE:I

    .line 27
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->CAND_ELE_OUT:I

    .line 28
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->VERTICAL_ELE:I

    .line 36
    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    .line 37
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->baroData:F

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->handler:Landroid/os/Handler;

    .line 55
    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepCnt:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->prevStepCnt:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorPrev:Z

    iput-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    .line 58
    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    .line 59
    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    .line 60
    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->timer:I

    .line 176
    new-instance v0, Lcom/samsung/android/gesture/ElevatorModeEvent$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/ElevatorModeEvent$1;-><init>(Lcom/samsung/android/gesture/ElevatorModeEvent;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElevatorModeEvent Object Made"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private ElevatorDetectNotifier()Z
    .registers 9

    .line 111
    iget v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->timer:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->timer:I

    .line 113
    const/4 v1, 0x0

    const v2, 0x493e0

    if-lt v0, v2, :cond_24

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ELEVATOR OUT_TIMEOUT Callback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCallback:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    const/16 v2, 0x72

    invoke-interface {v0, v2}, Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;->onElevatorStateChanged(I)V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/gesture/ElevatorModeEvent;->initTimer()V

    .line 117
    return v1

    .line 120
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->acc:Lcom/samsung/android/gesture/AR_SENSORDATA;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    aget v2, v2, v1

    iput v2, v0, Lcom/samsung/android/gesture/AR_SENSORDATA;->x:F

    .line 121
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->acc:Lcom/samsung/android/gesture/AR_SENSORDATA;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v0, Lcom/samsung/android/gesture/AR_SENSORDATA;->y:F

    .line 122
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->acc:Lcom/samsung/android/gesture/AR_SENSORDATA;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    const/4 v4, 0x2

    aget v2, v2, v4

    iput v2, v0, Lcom/samsung/android/gesture/AR_SENSORDATA;->z:F

    .line 123
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->baro:Lcom/samsung/android/gesture/AR_BARODATA;

    iget v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->baroData:F

    iput v2, v0, Lcom/samsung/android/gesture/AR_BARODATA;->data:F

    .line 124
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mag:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    aget v2, v2, v1

    iput v2, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    .line 125
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mag:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    aget v2, v2, v3

    iput v2, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    .line 126
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mag:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    aget v2, v2, v4

    iput v2, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    .line 127
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepDetector:Lcom/samsung/android/gesture/StepDetector;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/StepDetector;->process([F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepCnt:I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->calc_Feature:Lcom/samsung/android/gesture/AR_CalcFeature;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->gARData:Lcom/samsung/android/gesture/AR_MAIN_DATA;

    iget-object v2, v2, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    iget-object v5, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->acc:Lcom/samsung/android/gesture/AR_SENSORDATA;

    iget-object v6, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->baro:Lcom/samsung/android/gesture/AR_BARODATA;

    iget-object v7, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mag:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/samsung/android/gesture/AR_CalcFeature;->AR_Calc_Feature(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_SENSORDATA;Lcom/samsung/android/gesture/AR_BARODATA;Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->elevatorCore:Lcom/samsung/android/gesture/ElevatorCore;

    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->gARData:Lcom/samsung/android/gesture/AR_MAIN_DATA;

    iget-object v5, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/gesture/ElevatorCore;->AR_Elevator_Detect(Lcom/samsung/android/gesture/AR_MAIN_DATA;[F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    .line 132
    iget-boolean v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorPrev:Z

    if-eq v2, v0, :cond_94

    iget v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    if-ne v0, v4, :cond_94

    .line 133
    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    .line 134
    iput v3, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    .line 135
    new-instance v0, Lcom/samsung/android/gesture/StepDetector;

    invoke-direct {v0}, Lcom/samsung/android/gesture/StepDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepDetector:Lcom/samsung/android/gesture/StepDetector;

    .line 137
    :cond_94
    iget v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    if-ne v0, v3, :cond_a8

    .line 138
    iget v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    .line 139
    iget v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepCnt:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_a6

    iput-boolean v3, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    goto :goto_a8

    .line 140
    :cond_a6
    iput-boolean v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    .line 142
    :cond_a8
    :goto_a8
    iget v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    const/16 v2, 0x4e20

    if-lt v0, v2, :cond_b4

    .line 143
    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    .line 144
    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    .line 145
    iput-boolean v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorPrev:Z

    .line 148
    :cond_b4
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    iget-boolean v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorPrev:Z

    if-eq v0, v2, :cond_f7

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/gesture/ElevatorModeEvent;->initTimer()V

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    iput-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorPrev:Z

    .line 151
    iget-object v2, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCallback:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    if-eqz v2, :cond_f7

    .line 152
    if-eqz v0, :cond_dd

    .line 153
    new-instance v0, Lcom/samsung/android/gesture/StepDetector;

    invoke-direct {v0}, Lcom/samsung/android/gesture/StepDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepDetector:Lcom/samsung/android/gesture/StepDetector;

    .line 154
    iput v4, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Elevator In Callback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_dd
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    if-nez v0, :cond_f7

    .line 159
    iput v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Elevator Out Callback_STEP OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCallback:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;->onElevatorStateChanged(I)V

    .line 168
    :cond_f7
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->calc_Feature:Lcom/samsung/android/gesture/AR_CalcFeature;

    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->gARData:Lcom/samsung/android/gesture/AR_MAIN_DATA;

    iget-object v1, v1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AR_CalcFeature;->AR_Calc_UpdateBaroIndex(Lcom/samsung/android/gesture/AR_FEATURE;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->calc_Feature:Lcom/samsung/android/gesture/AR_CalcFeature;

    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->gARData:Lcom/samsung/android/gesture/AR_MAIN_DATA;

    iget-object v1, v1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AR_CalcFeature;->AR_Calc_UpdateMagIndex(Lcom/samsung/android/gesture/AR_FEATURE;)V

    .line 173
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->isElevatorCur:Z

    return v0
.end method

.method private initSensorData()V
    .registers 3

    .line 100
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    .line 101
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->baroData:F

    .line 103
    return-void
.end method

.method private initTimer()V
    .registers 3

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->timer:I

    .line 108
    return-void
.end method


# virtual methods
.method public Get_Version()Ljava/lang/String;
    .registers 2

    .line 222
    const-string v0, "__ELE__1.02"

    return-object v0
.end method

.method public registerElevatorDetector(Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;)V
    .registers 8
    .param p1, "callback"    # Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    .line 69
    new-instance v0, Lcom/samsung/android/gesture/AR_MAIN_DATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_MAIN_DATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->gARData:Lcom/samsung/android/gesture/AR_MAIN_DATA;

    .line 70
    new-instance v0, Lcom/samsung/android/gesture/AR_CalcFeature;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_CalcFeature;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->calc_Feature:Lcom/samsung/android/gesture/AR_CalcFeature;

    .line 71
    new-instance v0, Lcom/samsung/android/gesture/ElevatorCore;

    invoke-direct {v0}, Lcom/samsung/android/gesture/ElevatorCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->elevatorCore:Lcom/samsung/android/gesture/ElevatorCore;

    .line 72
    new-instance v0, Lcom/samsung/android/gesture/AR_BARODATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_BARODATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->baro:Lcom/samsung/android/gesture/AR_BARODATA;

    .line 73
    new-instance v0, Lcom/samsung/android/gesture/AR_SENSORDATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_SENSORDATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->acc:Lcom/samsung/android/gesture/AR_SENSORDATA;

    .line 74
    new-instance v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mag:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 75
    new-instance v0, Lcom/samsung/android/gesture/StepDetector;

    invoke-direct {v0}, Lcom/samsung/android/gesture/StepDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->stepDetector:Lcom/samsung/android/gesture/StepDetector;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->state:I

    .line 77
    iput v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCandCnt:I

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Elevator Detector Register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCallback:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->handler:Landroid/os/Handler;

    const/16 v5, 0x4e20

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 83
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 84
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->handler:Landroid/os/Handler;

    const v5, 0x186a0

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 86
    new-instance v0, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;-><init>(Lcom/samsung/android/gesture/ElevatorModeEvent;Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread-IA;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->thread:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    .line 87
    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->setDaemon(Z)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->thread:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->start()V

    .line 89
    return-void
.end method

.method public unregisterElevatorDetector()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->thread:Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/ElevatorModeEvent$SensorThread;->interrupt()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/gesture/ElevatorModeEvent;->initSensorData()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorModeEvent;->eleCallback:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Elevator Detector Unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
