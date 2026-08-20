.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;
.super Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;
.source "KnoxAnalyticsServiceImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

.field public final mContext:Landroid/content/Context;

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mIsKnoxAnalyticsActivated:Z


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsKnoxAnalyticsActivated(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    .line 25
    new-instance v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;-><init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mActivationObserver:Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 52
    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V

    return-void
.end method


# virtual methods
.method public log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 5

    if-nez p1, :cond_a

    .line 58
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "log(): null data"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    if-nez v0, :cond_16

    .line 62
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "KnoxAnalytics has been shutdown, can\'t log."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 66
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceCallingPermissionForLog(Landroid/content/Context;II)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_33

    .line 73
    :cond_2c
    sget-object p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "mEventQueue is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .registers 2

    .line 78
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->convertToKnoxAnalyticsSDK(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method
