.class public Lcom/samsung/android/gesture/PocketMotionManager;
.super Ljava/lang/Object;
.source "PocketMotionManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# static fields
.field private static final ANGLE_THD:I = 0x14

.field private static final ANGLE_THD_Z:I = 0x32

.field public static final AT_TYPE_NONE:I = 0x0

.field public static final AT_TYPE_NOT_WALK:I = 0x2

.field public static final AT_TYPE_WALK:I = 0x1

.field private static final LPF_ALPHA:D = 0.9300000071525574

.field private static final MAX_AXIS_SIZE:I = 0x3

.field private static final MAX_SENSOR_DATA:I = 0x24

.field private static final TAG:Ljava/lang/String;

.field private static final TILT_THD:D = 0.800000011920929

.field private static accSensor:Landroid/hardware/Sensor;

.field private static isRunningATMode:Z

.field private static isRunningAccSensor:Z

.field private static isRunningTiltSensor:Z

.field private static mATStatus:I

.field private static mContext:Landroid/content/Context;

.field private static mIsATEnabled:Z

.field private static mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private static pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static tiltSensor:Landroid/hardware/Sensor;


# instance fields
.field private accIndex:I

.field private accLPF:[[D

.field private accRaw:[[D

.field private accYData:D

.field private angle:[I

.field private isAccDataBufferFull:Z

.field private final mLockAccReg:Ljava/lang/Object;

.field public sensorAccEventListener:Landroid/hardware/SensorEventListener;

.field public sensorTiltEventListener:Landroid/hardware/SensorEventListener;

.field private tiltAngle:D

.field private tiltDetectorFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaccRaw(Lcom/samsung/android/gesture/PocketMotionManager;)[[D
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaccYData(Lcom/samsung/android/gesture/PocketMotionManager;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accYData:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAccDataBufferFull(Lcom/samsung/android/gesture/PocketMotionManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    const-class v0, Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 40
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 41
    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 42
    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    .line 54
    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 55
    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    .line 56
    sput v1, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 16
    const-class v0, D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->mLockAccReg:Ljava/lang/Object;

    .line 34
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    .line 35
    new-array v1, v1, [I

    fill-array-data v1, :array_46

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltDetectorFlag:Z

    .line 136
    new-instance v0, Lcom/samsung/android/gesture/PocketMotionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketMotionManager$1;-><init>(Lcom/samsung/android/gesture/PocketMotionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorAccEventListener:Landroid/hardware/SensorEventListener;

    .line 252
    new-instance v0, Lcom/samsung/android/gesture/PocketMotionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketMotionManager$2;-><init>(Lcom/samsung/android/gesture/PocketMotionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorTiltEventListener:Landroid/hardware/SensorEventListener;

    return-void

    :array_3e
    .array-data 4
        0x24
        0x3
    .end array-data

    :array_46
    .array-data 4
        0x24
        0x3
    .end array-data
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketMotionManager;
    .registers 1

    .line 59
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketMotionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 62
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->pocketMotionManager:Lcom/samsung/android/gesture/PocketMotionManager;

    return-object v0
.end method

.method public static initActivityTracker()V
    .registers 3

    .line 281
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "init activity tracker"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 284
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 285
    if-eqz v1, :cond_2b

    .line 286
    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    .line 289
    :cond_2b
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 290
    return-void
.end method

.method private initialize()V
    .registers 3

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    .line 101
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    sput-object p0, Lcom/samsung/android/gesture/PocketMotionManager;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->accSensor:Landroid/hardware/Sensor;

    .line 84
    if-nez v0, :cond_1c

    .line 85
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "accelerometer is null"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1c
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    .line 88
    if-nez v0, :cond_2f

    .line 89
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "tilt detector is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 92
    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 94
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->initActivityTracker()V

    .line 95
    return-void
.end method


# virtual methods
.method calcAccLPF()V
    .registers 11

    .line 163
    iget v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    const/4 v1, 0x3

    if-nez v0, :cond_1e

    iget-boolean v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    if-nez v2, :cond_1e

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1d

    .line 165
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    aget-object v3, v4, v3

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_1d
    goto :goto_49

    .line 168
    :cond_1e
    add-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x24

    .line 169
    .local v0, "prevIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v1, :cond_49

    .line 170
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v5, v3, v4

    aget-object v3, v3, v0

    aget-wide v6, v3, v2

    const-wide v8, 0x3fedc28f60000000L    # 0.9300000071525574

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    const-wide v8, 0x3fb1eb8500000000L    # 0.06999999284744263

    mul-double/2addr v3, v8

    add-double/2addr v6, v3

    aput-wide v6, v5, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 173
    .end local v0    # "prevIdx":I
    .end local v2    # "i":I
    :cond_49
    :goto_49
    return-void
.end method

.method calcAccTilt()V
    .registers 20

    .line 176
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    if-nez v1, :cond_7

    .line 177
    return-void

    .line 179
    :cond_7
    iget v1, v0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    const/4 v2, 0x3

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x24

    .line 181
    .local v1, "refIdx":I
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .local v5, "cosAlpha":D
    move-wide v7, v3

    .local v7, "normRef":D
    move-wide v9, v3

    .line 182
    .local v9, "normCur":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_13
    if-ge v11, v2, :cond_2d

    .line 183
    iget-object v12, v0, Lcom/samsung/android/gesture/PocketMotionManager;->accLPF:[[D

    iget v13, v0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v13, v12, v13

    aget-wide v13, v13, v11

    mul-double v15, v13, v13

    add-double/2addr v9, v15

    .line 184
    aget-object v12, v12, v1

    aget-wide v15, v12, v11

    mul-double v17, v15, v15

    add-double v7, v7, v17

    .line 185
    mul-double/2addr v13, v15

    add-double/2addr v5, v13

    .line 182
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 187
    .end local v11    # "i":I
    :cond_2d
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 188
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 190
    mul-double v11, v9, v7

    const-wide v13, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpl-double v2, v11, v13

    if-ltz v2, :cond_44

    .line 191
    mul-double v11, v9, v7

    div-double/2addr v5, v11

    goto :goto_49

    .line 193
    :cond_44
    const-wide v5, 0x3feff7cee0000000L    # 0.9990000128746033

    .line 195
    :goto_49
    const-wide v11, 0x3fefae1480000000L    # 0.9900000095367432

    cmpl-double v2, v5, v11

    if-lez v2, :cond_55

    .line 196
    iput-wide v3, v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    goto :goto_6c

    .line 197
    :cond_55
    const-wide v2, -0x401051eb80000000L    # -0.9900000095367432

    cmpg-double v2, v5, v2

    if-gez v2, :cond_66

    .line 198
    const-wide v2, 0x40091eb860000000L    # 3.140000104904175

    iput-wide v2, v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    goto :goto_6c

    .line 200
    :cond_66
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    .line 201
    :goto_6c
    return-void
.end method

.method calcAngle()V
    .registers 11

    .line 204
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    mul-double/2addr v2, v2

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    mul-double/2addr v5, v5

    add-double/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v6, v0, v5

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 205
    .local v2, "realg":D
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v7, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v6, v6, v7

    aget-wide v6, v6, v1

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v0, v1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v1, v1, v6

    aget-wide v6, v1, v4

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int v1, v6

    aput v1, v0, v4

    .line 207
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accRaw:[[D

    iget v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accIndex:I

    aget-object v1, v1, v4

    aget-wide v6, v1, v5

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    double-to-int v1, v6

    mul-int/lit8 v1, v1, -0x1

    aput v1, v0, v5

    .line 208
    return-void
.end method

.method public getATStatus()I
    .registers 2

    .line 341
    sget v0, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    return v0
.end method

.method public getAccYData()D
    .registers 3

    .line 276
    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->accYData:D

    return-wide v0
.end method

.method public isTiltChanged()Z
    .registers 6

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->isAccDataBufferFull:Z

    if-nez v1, :cond_6

    .line 213
    return v0

    .line 215
    :cond_6
    iget-wide v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    const-wide v3, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2c

    .line 216
    const/4 v0, 0x1

    .line 217
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tilt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltAngle:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2c
    return v0
.end method

.method public isTiltDetectorFlag()Z
    .registers 2

    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltDetectorFlag:Z

    return v0
.end method

.method public isUpsidePosition()Z
    .registers 8

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x14

    if-gt v1, v3, :cond_59

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v3, :cond_59

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    const/16 v5, 0x32

    if-lt v1, v5, :cond_59

    .line 225
    const/4 v0, 0x1

    .line 226
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Angle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    aget v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    aget v4, v6, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketMotionManager;->angle:[I

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_59
    return v0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 11
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 318
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 319
    .local v0, "context":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_47

    .line 320
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityTrackerContext()Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    move-result-object v1

    .line 321
    .local v1, "activityTracker":Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->getTimeStamp()J

    move-result-wide v2

    .line 322
    .local v2, "timestamp":J
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->getStatus()I

    move-result v4

    .line 323
    .local v4, "status":I
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;->getAccuracy()I

    move-result v5

    .line 324
    .local v5, "accuracy":I
    sget-object v6, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activity tracker "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    packed-switch v4, :pswitch_data_48

    goto :goto_47

    .line 328
    :pswitch_40
    const/4 v6, 0x1

    sput v6, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 329
    goto :goto_47

    .line 332
    :pswitch_44
    const/4 v6, 0x2

    sput v6, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 338
    .end local v1    # "activityTracker":Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    .end local v2    # "timestamp":J
    .end local v4    # "status":I
    .end local v5    # "accuracy":I
    :cond_47
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44
        :pswitch_40
        :pswitch_40
        :pswitch_44
    .end packed-switch
.end method

.method public registerAccelSensor()Z
    .registers 8

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "result":Z
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 107
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v2, "This is FactoryBinary"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v0

    .line 111
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->mLockAccReg:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_13
    sget-object v3, Lcom/samsung/android/gesture/PocketMotionManager;->accSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_25

    sget-boolean v4, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    if-nez v4, :cond_25

    .line 113
    sget-object v4, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorAccEventListener:Landroid/hardware/SensorEventListener;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    move v0, v3

    .line 115
    :cond_25
    if-eqz v0, :cond_34

    .line 116
    sget-object v3, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v4, "register acc sensor"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sput-boolean v2, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketMotionManager;->initialize()V

    goto :goto_3b

    .line 120
    :cond_34
    sget-object v2, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v3, "register acc sensor fail"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_3b
    monitor-exit v1

    .line 123
    return v0

    .line 122
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public registerActivityTracker()V
    .registers 3

    .line 293
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 294
    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    if-nez v0, :cond_1c

    .line 295
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 296
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "register activity tracker"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    .line 299
    :cond_1c
    return-void
.end method

.method public registerTiltSensor()V
    .registers 5

    .line 235
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1e

    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    if-nez v1, :cond_1e

    .line 236
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorTiltEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketMotionManager;->setTiltDetectorFlag(Z)V

    .line 239
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "register tilt sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1e
    return-void
.end method

.method public requestToUpdateActivityTracker()V
    .registers 3

    .line 311
    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 312
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 313
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "request activity tracker"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_17
    return-void
.end method

.method public setTiltDetectorFlag(Z)V
    .registers 2
    .param p1, "tiltDetectorFlag"    # Z

    .line 272
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltDetectorFlag:Z

    .line 273
    return-void
.end method

.method public unregisterAccelSensor()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager;->mLockAccReg:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 129
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorAccEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v2, "unregister acc sensor"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_16
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningAccSensor:Z

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public unregisterActivityTracker()V
    .registers 4

    .line 302
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketMotionManager;->mATStatus:I

    .line 303
    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->mIsATEnabled:Z

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 304
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v2, 0x19

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 305
    sget-object v1, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v2, "unregister activity tracker"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningATMode:Z

    .line 308
    :cond_1c
    return-void
.end method

.method public unregisterTiltSensor()V
    .registers 3

    .line 244
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->tiltSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 245
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager;->sensorTiltEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 246
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketMotionManager;->isRunningTiltSensor:Z

    .line 247
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketMotionManager;->setTiltDetectorFlag(Z)V

    .line 248
    sget-object v0, Lcom/samsung/android/gesture/PocketMotionManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister tilt sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_1d
    return-void
.end method
