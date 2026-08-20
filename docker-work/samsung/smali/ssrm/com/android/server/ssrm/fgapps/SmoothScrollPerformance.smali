.class public Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
.super Ljava/lang/Object;
.source "SmoothScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;,
        Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;,
        Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;


# instance fields
.field private isBoostDisabledByFold:Z

.field mAcquired:Z

.field mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

.field private resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

.field private resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

.field private smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

.field private smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetresumePackageChangedE(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsmoothScrollEvent(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->isBoostDisabledByFold:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsmoothScrollEvent(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    .line 32
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    .line 34
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 36
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    .line 38
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->isBoostDisabledByFold:Z

    .line 54
    sput-object p1, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    .line 58
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    .line 59
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->smoothScrollReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 61
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    .line 62
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 64
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    const-string v1, "SMOOTH_SCROLL"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 67
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_58

    .line 68
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;-><init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 70
    :cond_58
    return-void
.end method

.method private acquire()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    if-eqz v0, :cond_5

    .line 74
    return-void

    .line 76
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    .line 77
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "acquire::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_16

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 81
    :cond_16
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    if-nez v0, :cond_d

    .line 47
    sput-object p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 50
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    return-object v0
.end method

.method private release()V
    .registers 3

    .line 84
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    if-nez v0, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mAcquired:Z

    .line 88
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "release::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_16

    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 92
    :cond_16
    return-void
.end method


# virtual methods
.method public execute(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 100
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->isBoostDisabledByFold:Z

    if-eqz v0, :cond_f

    .line 101
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->release()V

    .line 102
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "Booster doesn\'t work on fold scenario."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 105
    :cond_f
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1f

    .line 106
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mContext:Landroid/content/Context;

    const/16 v1, 0x15

    const-string v2, "LISTVIEW_SCROLL"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->mSmoothScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 109
    :cond_1f
    if-eqz p1, :cond_25

    .line 110
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->acquire()V

    goto :goto_28

    .line 112
    :cond_25
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->release()V

    .line 114
    :goto_28
    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged:: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->release()V

    .line 97
    return-void
.end method
