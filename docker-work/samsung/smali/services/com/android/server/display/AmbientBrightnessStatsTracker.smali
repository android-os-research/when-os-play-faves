.class public Lcom/android/server/display/AmbientBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;,
        Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;,
        Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;,
        Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
    }
.end annotation


# static fields
.field public static final BUCKET_BOUNDARIES_FOR_NEW_STATS:[F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final MAX_DAYS_TO_TRACK:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AmbientBrightnessStatsTracker"


# instance fields
.field public final mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

.field public mCurrentAmbientBrightness:F

.field public mCurrentUserId:I

.field public final mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

.field public final mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$PpdGe5Aypn-LWzDAucX-R3O7B_k(Lcom/android/server/display/AmbientBrightnessStatsTracker;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 55
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    return-void

    :array_a
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
        0x43960000    # 300.0f
        0x447a0000    # 1000.0f
        0x453b8000    # 3000.0f
        0x461c4000    # 10000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    if-eqz p2, :cond_a

    .line 70
    iput-object p2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    goto :goto_11

    .line 72
    :cond_a
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 74
    :goto_11
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-direct {p1, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 75
    new-instance p1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    new-instance p2, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V

    invoke-direct {p1, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;)V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 76
    iput p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    return-void
.end method

.method private synthetic lambda$new$0()J
    .registers 3

    .line 75
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->elapsedRealtimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized add(IF)V
    .registers 7

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 95
    iget v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    if-ne p1, v0, :cond_21

    .line 96
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v3, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 97
    invoke-virtual {v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v3

    .line 96
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    goto :goto_23

    .line 102
    :cond_21
    iput p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    .line 104
    :goto_23
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 105
    iget-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->start()V

    .line 106
    iput p2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 112
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AmbientBrightnessStats:"

    .line 127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 129
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserStats(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readStats(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 120
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 2

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    .line 81
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->start()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 82
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 6

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 86
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 87
    invoke-virtual {v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v4

    .line 86
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    .line 89
    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->reset()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 90
    iput v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 91
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeStats(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 116
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
