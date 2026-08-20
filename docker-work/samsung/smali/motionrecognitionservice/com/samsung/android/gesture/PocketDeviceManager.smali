.class public Lcom/samsung/android/gesture/PocketDeviceManager;
.super Ljava/lang/Object;
.source "PocketDeviceManager.java"


# static fields
.field public static final A42_5G_KOR:Ljava/lang/String; = "A426N"

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static pocketDeviceManager:Lcom/samsung/android/gesture/PocketDeviceManager;

.field private static ppm:Lcom/samsung/android/gesture/PocketProximityManager;


# instance fields
.field private coverManager:Lcom/samsung/android/cover/CoverManager;

.field private coverState:Lcom/samsung/android/cover/CoverState;

.field private isCoverChecked:Z

.field private isCoverNotSupported:Z

.field private isCoverOpened:Z

.field private isScreenOn:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field private screenOnTime:J

.field private strModel:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetisCoverOpened(Lcom/samsung/android/gesture/PocketDeviceManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisCoverOpened(Lcom/samsung/android/gesture/PocketDeviceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->pocketDeviceManager:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn:Z

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverChecked:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverNotSupported:Z

    .line 131
    new-instance v0, Lcom/samsung/android/gesture/PocketDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketDeviceManager$1;-><init>(Lcom/samsung/android/gesture/PocketDeviceManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;
    .registers 1

    .line 49
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->pocketDeviceManager:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->pocketDeviceManager:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 52
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->pocketDeviceManager:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method private hasCoverSystemFeature(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    .local v0, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 149
    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 150
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 151
    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, 0x1

    .line 148
    :goto_28
    return v1
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    sput-object p0, Lcom/samsung/android/gesture/PocketDeviceManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .registers 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 56
    sput-object p0, Lcom/samsung/android/gesture/PocketDeviceManager;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method


# virtual methods
.method public checkModelName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketDeviceManager;->getDeviceName()Ljava/lang/String;

    .line 79
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 84
    const-string v0, "ril.product_code"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    .line 86
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    const-string v1, "Not Active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 87
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    .line 89
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->strModel:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOnTime()J
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->screenOnTime:J

    return-wide v0
.end method

.method public initialize()V
    .registers 3

    .line 41
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->getInstance()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 42
    if-nez v0, :cond_10

    .line 43
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 46
    :cond_10
    return-void
.end method

.method public isCoverOpened()Z
    .registers 3

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverChecked:Z

    if-nez v0, :cond_6

    .line 164
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverNotSupported:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 168
    return v1

    .line 170
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened:Z

    return v0
.end method

.method public isFactoryBinary()Z
    .registers 4

    .line 194
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 195
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "This is FactoryBinary"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isFolderType()Z
    .registers 6

    .line 176
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 177
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "mContext is null"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return v1

    .line 181
    :cond_d
    const/4 v2, 0x0

    .line 182
    .local v2, "foldingSensor":Landroid/hardware/Sensor;
    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 183
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v3, 0x10096

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 184
    if-nez v2, :cond_27

    .line 185
    sget-object v3, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "It\'s NOT folder type"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v1

    .line 188
    :cond_27
    sget-object v1, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "It\'s folder type"

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    return v1
.end method

.method public isScreenOn()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn:Z

    return v0
.end method

.method public registerCoverListener()V
    .registers 4

    .line 94
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 95
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverChecked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    return-void

    .line 100
    :cond_12
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "First ScreenOff, check cover State"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverChecked:Z

    .line 104
    sget-object v2, Lcom/samsung/android/gesture/PocketDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->hasCoverSystemFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 105
    const-string v2, "hasCoverSystemFeature() is false"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverNotSupported:Z

    .line 107
    return-void

    .line 110
    :cond_2b
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    sget-object v2, Lcom/samsung/android/gesture/PocketDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->coverManager:Lcom/samsung/android/cover/CoverManager;

    .line 111
    nop

    .line 112
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    .line 119
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->coverState:Lcom/samsung/android/cover/CoverState;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->coverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->coverState:Lcom/samsung/android/cover/CoverState;

    .line 121
    if-eqz v0, :cond_5c

    .line 122
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->coverState:Lcom/samsung/android/cover/CoverState;

    if-ne v0, v1, :cond_54

    .line 123
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened:Z

    goto :goto_5b

    .line 124
    :cond_54
    iget-boolean v0, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_5b

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened:Z

    .line 129
    :cond_5b
    :goto_5b
    return-void

    .line 128
    :cond_5c
    return-void
.end method

.method public sendMessage(IJ)V
    .registers 7
    .param p1, "pocketMsg"    # I
    .param p2, "delayMillis"    # J

    .line 204
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 205
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "mHandler is null"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 209
    :cond_c
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 210
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already send Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 212
    :cond_2b
    sget-object v0, Lcom/samsung/android/gesture/PocketDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 214
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_3f

    .line 215
    sget-object v1, Lcom/samsung/android/gesture/PocketDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_44

    .line 217
    :cond_3f
    sget-object v1, Lcom/samsung/android/gesture/PocketDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    .end local v0    # "message":Landroid/os/Message;
    :goto_44
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 4
    .param p1, "isScreenOn"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn:Z

    .line 69
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOnTime(J)V

    goto :goto_12

    .line 72
    :cond_d
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOnTime(J)V

    .line 73
    :goto_12
    return-void
.end method

.method public setScreenOnTime(J)V
    .registers 3
    .param p1, "screenOnTime"    # J

    .line 159
    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketDeviceManager;->screenOnTime:J

    .line 160
    return-void
.end method
