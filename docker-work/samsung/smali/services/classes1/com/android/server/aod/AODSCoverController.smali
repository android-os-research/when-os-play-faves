.class public Lcom/android/server/aod/AODSCoverController;
.super Ljava/lang/Object;
.source "AODSCoverController.java"


# static fields
.field public static final LUX_FOR_HIGH_NIT:F = 2.0f

.field public static final LUX_QUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LUX_QUE_SIZE:I = 0xf

.field public static final TAG:Ljava/lang/String; = "AODManagerService.SCover"


# instance fields
.field public mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field public mContext:Landroid/content/Context;

.field public mCoverAttached:Z

.field public mCoverClosed:Z

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mCoverUIWorking:Z

.field public mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAODSettingHelper(Lcom/android/server/aod/AODSCoverController;)Lcom/android/server/aod/AODSettingHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverAttached(Lcom/android/server/aod/AODSCoverController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverClosed(Lcom/android/server/aod/AODSCoverController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCoverAttached(Lcom/android/server/aod/AODSCoverController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverClosed(Lcom/android/server/aod/AODSCoverController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverUIWorking(Lcom/android/server/aod/AODSCoverController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterSViewCoverSensorListener(Lcom/android/server/aod/AODSCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterSViewCoverSensorListener(Lcom/android/server/aod/AODSCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLUX_QUE()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/aod/AODSettingHelper;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 42
    new-instance p1, Lcom/samsung/android/cover/CoverManager;

    iget-object p2, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, " AODSCoverController"

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverAttached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverClosed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverUIWorking : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isCoverUIWorking()Z
    .registers 1

    .line 162
    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    return p0
.end method

.method public isSViewCoverBrightnessHigh()Z
    .registers 9

    .line 132
    sget-object p0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter p0

    .line 133
    :try_start_3
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 134
    monitor-exit p0

    return v1

    :cond_c
    const/high16 v0, 0x40400000    # 3.0f

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_4e

    .line 142
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v5

    .line 143
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    .line 147
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 148
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_40
    int-to-float v0, v3

    div-float/2addr v4, v0

    .line 151
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_4e
    const-string v3, "AODManagerService.SCover"

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSViewCoverBrightnessHighInternal: (SVIEW_COVER) luxes ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], average ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], lux ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], NIT state ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7b

    move v2, v1

    goto :goto_7c

    :cond_7b
    move v2, v5

    :goto_7c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_8e

    goto :goto_8f

    :cond_8e
    move v1, v5

    .line 157
    :goto_8f
    monitor-exit p0

    return v1

    :catchall_91
    move-exception v0

    .line 158
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw v0
.end method

.method public refresh()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_22

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 80
    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_22

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 81
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 83
    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V

    goto :goto_22

    .line 85
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V

    :cond_22
    :goto_22
    return-void
.end method

.method public register()V
    .registers 4

    .line 46
    new-instance v0, Lcom/android/server/aod/AODSCoverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/aod/AODSCoverController$1;-><init>(Lcom/android/server/aod/AODSCoverController;)V

    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 64
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_31

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    .line 69
    iget-boolean v2, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    if-eqz v2, :cond_26

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    iput-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    .line 71
    :cond_29
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_39

    :cond_31
    const-string p0, "AODManagerService.SCover"

    const-string/jumbo v0, "initCoverManager is not supported"

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public final registerSViewCoverSensorListener()V
    .registers 5

    .line 92
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_14

    .line 94
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    :cond_14
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_2d

    .line 97
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 98
    new-instance v1, Lcom/android/server/aod/AODSCoverController$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODSCoverController$2;-><init>(Lcom/android/server/aod/AODSCoverController;)V

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 116
    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final unregisterSViewCoverSensorListener()V
    .registers 4

    .line 122
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v2, :cond_14

    .line 124
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 126
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 128
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method
