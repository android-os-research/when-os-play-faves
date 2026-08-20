.class public Lcom/android/server/sepunion/cover/SleepTokenAcquirer;
.super Ljava/lang/Object;
.source "SleepTokenAcquirer.java"


# static fields
.field public static final DELAY_SLEEP_TOKEN:I = 0xc8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public final mDefaultSleepToken:Ljava/lang/Runnable;

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCoverAppCovered:Z

.field public final mSleepTokenTask:Ljava/lang/Runnable;

.field public mSwitchState:Z

.field public mVirtualAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;


# direct methods
.method public static synthetic $r8$lambda$Maue2yjJJqPA-qfl4v3rhI_RnPM(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->doDefaultSleepToken()V

    return-void
.end method

.method public static synthetic $r8$lambda$VVYdYFaddU-7Mmo7DITtTtB2yRs(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->doSleepToken()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    .line 37
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method


# virtual methods
.method public final acquire(I)V
    .registers 5

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->getSleepTokenAcquirer(I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 51
    sget-object v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireSleepToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    :cond_1f
    return-void
.end method

.method public final doDefaultSleepToken()V
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->acquire(I)V

    :cond_c
    return-void
.end method

.method public final doSleepToken()V
    .registers 4

    .line 80
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    if-nez v0, :cond_19

    .line 81
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    .line 84
    :cond_19
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 85
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2f

    :cond_2b
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->release(I)V

    :goto_2f
    return-void
.end method

.method public final getSleepTokenAcquirer(I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;
    .registers 5

    const-string v0, "createSleepTokenAcquirer "

    if-nez p1, :cond_27

    .line 66
    iget-object v1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    if-nez v1, :cond_49

    .line 67
    sget-object v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createSleepTokenAcquirer(Ljava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    goto :goto_49

    .line 71
    :cond_27
    iget-object v1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mVirtualAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    if-nez v1, :cond_49

    .line 72
    sget-object v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v1, "cover-virtual"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createSleepTokenAcquirer(Ljava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mVirtualAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    :cond_49
    :goto_49
    if-nez p1, :cond_4e

    .line 76
    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    goto :goto_50

    :cond_4e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mVirtualAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    :goto_50
    return-object p0
.end method

.method public final release(I)V
    .registers 5

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->getSleepTokenAcquirer(I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 59
    sget-object v0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseSleepToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    :cond_20
    return-void
.end method

.method public update(ZZ)V
    .registers 3

    .line 41
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    .line 42
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    .line 44
    iget-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
