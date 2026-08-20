.class public Lcom/android/server/ibs/IntelligentBatterySaverGather;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCharging:Z

.field public mContext:Landroid/content/Context;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFilter:Landroid/content/IntentFilter;

.field public mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field public mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

.field public mScreenOn:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Lcom/android/server/ibs/IntelligentBatterySaverLogger;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IntelligentBatterySaverGather"

    .line 12
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 44
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 46
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mScreenOn:Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mCharging:Z

    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 52
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 58
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method
