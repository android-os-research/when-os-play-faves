.class public Lcom/samsung/android/knox/analytics/activation/B2CListener;
.super Ljava/lang/Object;
.source "B2CListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;,
        Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;
    }
.end annotation


# static fields
.field public static final PERMISSION_KNOX_ANALYTICS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivationMonitor(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPackageRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkRemovedReceiver()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    if-eqz v0, :cond_1c

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 90
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 91
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    :cond_1c
    return-void
.end method

.method public register()V
    .registers 5

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    .line 39
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "B2CListenerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 41
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    const-string v3, "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
