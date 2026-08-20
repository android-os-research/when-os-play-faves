.class public final Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetLaunchInfo"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static isReady:Z


# instance fields
.field public mCurTime:J

.field public mShortComponentName:Ljava/lang/String;

.field public mSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

.field public mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurTime(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortComponentName(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->setLaunch()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 415
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 417
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J

    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    .line 424
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 425
    iput p2, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mUid:I

    .line 430
    const-class p0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter p0

    const/4 p1, 0x1

    .line 431
    :try_start_12
    sput-boolean p1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    .line 432
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/wm/SluggishDetector$SetLaunchInfo-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final refresh()V
    .registers 3

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J

    return-void
.end method

.method public final setLaunch()V
    .registers 3

    .line 460
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 461
    :try_start_4
    sput-boolean v1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    .line 462
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 464
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->refresh()V

    return-void

    :catchall_b
    move-exception p0

    .line 462
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
