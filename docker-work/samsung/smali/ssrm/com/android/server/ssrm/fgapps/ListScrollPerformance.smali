.class public Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
.super Ljava/lang/Object;
.source "ListScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;,
        Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;,
        Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;


# instance fields
.field private isBoostDisabledByFold:Z

.field private listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

.field private listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

.field mAcquired:Z

.field mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

.field private resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

.field private resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistScrollEvent(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresumePackageChangedE(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->isBoostDisabledByFold:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlistScrollEvent(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollEvent:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    .line 31
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    .line 33
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedE:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 35
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    .line 37
    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->isBoostDisabledByFold:Z

    .line 52
    sput-object p1, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;-><init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    .line 55
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->listScrollReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 57
    new-instance v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;-><init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    .line 58
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->resumePackageChangedReceiver:Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 60
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    const-string v1, "LISTVIEW_SCROLL"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 63
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_51

    .line 64
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;-><init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 66
    :cond_51
    return-void
.end method

.method private acquire()V
    .registers 3

    .line 69
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    if-eqz v0, :cond_5

    .line 70
    return-void

    .line 72
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    .line 73
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "acquire::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_16

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 77
    :cond_16
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    if-nez v0, :cond_d

    .line 45
    sput-object p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 48
    :cond_d
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->sInstance:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    return-object v0
.end method

.method private release()V
    .registers 3

    .line 80
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    if-nez v0, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mAcquired:Z

    .line 84
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "release::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_16

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 88
    :cond_16
    return-void
.end method


# virtual methods
.method public execute(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 96
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->isBoostDisabledByFold:Z

    if-eqz v0, :cond_f

    .line 97
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->release()V

    .line 98
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

    const-string v1, "Booster doesn\'t work on fold scenario."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 101
    :cond_f
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1f

    .line 102
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mContext:Landroid/content/Context;

    const/16 v1, 0x15

    const-string v2, "LISTVIEW_SCROLL"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->mListScrollBoosterManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 105
    :cond_1f
    if-eqz p1, :cond_25

    .line 106
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->acquire()V

    goto :goto_28

    .line 108
    :cond_25
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->release()V

    .line 110
    :goto_28
    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->TAG:Ljava/lang/String;

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

    .line 92
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->release()V

    .line 93
    return-void
.end method
