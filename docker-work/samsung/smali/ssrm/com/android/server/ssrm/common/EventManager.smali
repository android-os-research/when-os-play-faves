.class public Lcom/android/server/ssrm/common/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static sEventManager:Lcom/android/server/ssrm/common/EventManager;


# instance fields
.field private aegHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/common/AbstractEG;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/common/EventManager;->sEventManager:Lcom/android/server/ssrm/common/EventManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->aegHashMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/android/server/ssrm/common/EventManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 43
    new-instance v0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 44
    new-instance v0, Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 45
    new-instance v0, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 46
    new-instance v0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 47
    new-instance v0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 48
    new-instance v0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 49
    new-instance v0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 51
    new-instance v0, Lcom/android/server/ssrm/common/intent/shutdown/ShutdownEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/shutdown/ShutdownEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 52
    new-instance v0, Lcom/android/server/ssrm/common/intent/request/SsrmRequestEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 53
    new-instance v0, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/SmartSwitch/SmartSwitchEG;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/EventManager;->register(Lcom/android/server/ssrm/common/AbstractEG;)V

    .line 54
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/ssrm/common/EventManager;->sEventManager:Lcom/android/server/ssrm/common/EventManager;

    if-eqz v0, :cond_7

    .line 34
    iget-object v0, v0, Lcom/android/server/ssrm/common/EventManager;->mContext:Landroid/content/Context;

    return-object v0

    .line 36
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/android/server/ssrm/common/EventManager;->sEventManager:Lcom/android/server/ssrm/common/EventManager;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/android/server/ssrm/common/EventManager;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/common/EventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/common/EventManager;->sEventManager:Lcom/android/server/ssrm/common/EventManager;

    .line 60
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/common/EventManager;->sEventManager:Lcom/android/server/ssrm/common/EventManager;

    return-object v0
.end method


# virtual methods
.method public deRegister(Lcom/android/server/ssrm/common/AbstractEG;)V
    .registers 4
    .param p1, "aeg"    # Lcom/android/server/ssrm/common/AbstractEG;

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->aegHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/AbstractEG;->getGeneratorIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/ssrm/common/AbstractEG;->deregister(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public deRegisterReciever(Lcom/android/server/ssrm/common/IEReceiver;)V
    .registers 4
    .param p1, "ier"    # Lcom/android/server/ssrm/common/IEReceiver;

    .line 89
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->aegHashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/ssrm/common/IEReceiver;->getGeneratorIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/common/AbstractEG;

    .line 90
    .local v0, "aeg":Lcom/android/server/ssrm/common/AbstractEG;
    if-eqz v0, :cond_11

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/common/AbstractEG;->removeReceiver(Lcom/android/server/ssrm/common/IEReceiver;)V

    .line 93
    :cond_11
    return-void
.end method

.method public register(Lcom/android/server/ssrm/common/AbstractEG;)V
    .registers 4
    .param p1, "aeg"    # Lcom/android/server/ssrm/common/AbstractEG;

    .line 65
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->aegHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/AbstractEG;->getGeneratorIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    return-void

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/ssrm/common/AbstractEG;->register(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->aegHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/AbstractEG;->getGeneratorIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;
    .registers 4
    .param p1, "ier"    # Lcom/android/server/ssrm/common/IEReceiver;

    .line 79
    iget-object v0, p0, Lcom/android/server/ssrm/common/EventManager;->aegHashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/ssrm/common/IEReceiver;->getGeneratorIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/common/AbstractEG;

    .line 80
    .local v0, "aeg":Lcom/android/server/ssrm/common/AbstractEG;
    if-eqz v0, :cond_16

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/common/AbstractEG;->addReceiver(Lcom/android/server/ssrm/common/IEReceiver;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/server/ssrm/common/AbstractEG;->getLastEvent()Lcom/android/server/ssrm/common/IEvent;

    move-result-object v1

    return-object v1

    .line 84
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method
