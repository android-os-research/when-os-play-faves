.class public Lcom/android/server/sepunion/cover/ResolutionMonitor;
.super Ljava/lang/Object;
.source "ResolutionMonitor.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallbackRunnable:Ljava/lang/Runnable;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbackRunnable(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConfiguration(Lcom/android/server/sepunion/cover/ResolutionMonitor;Landroid/content/res/Configuration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p3, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->registerReceiver()V

    return-void
.end method


# virtual methods
.method public final registerReceiver()V
    .registers 4

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;-><init>(Lcom/android/server/sepunion/cover/ResolutionMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
