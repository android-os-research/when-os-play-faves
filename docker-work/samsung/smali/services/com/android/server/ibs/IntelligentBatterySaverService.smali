.class public Lcom/android/server/ibs/IntelligentBatterySaverService;
.super Landroid/os/IIntelligentBatterySaverService$Stub;
.source "IntelligentBatterySaverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;,
        Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;,
        Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_CLEAR_BROADCAST:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE.ibs"

.field public static final MSG_CHECK_SCPM_PARAMETERES:I = 0x1

.field public static final MSG_FORCE_RESET_EVERY_POLICY:I = 0x2

.field public static final ONE_MINUTE:I = 0xea60

.field public static final TAG:Ljava/lang/String; = "IntelligentBatterySaverService"

.field public static mIBSEnable:Z = false


# instance fields
.field public mBootCompleteReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

.field public mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

.field public mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public final mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

.field public mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

.field public mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

.field public mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

.field public mSCPMReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

.field public mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

.field public mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public static synthetic $r8$lambda$iKDAHUBTh6ivcYYCdkS-Pu3LQII(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverService;->lambda$dump$0(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTVIvZjVmnF8FzsBtrEDGewQm2o(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverService;->lambda$dump$1(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceHandler(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforceResetEveryPolicy(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->forceResetEveryPolicy()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 63
    invoke-direct {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sys.config.ibs.enable"

    .line 65
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntelligentBatterySaverService"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    sget-boolean v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    if-eqz v1, :cond_66

    .line 70
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 71
    invoke-static {}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->getInstance()Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 72
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-direct {v1, p1}, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 73
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverGather;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v1, p1, p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverGather;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Lcom/android/server/ibs/IntelligentBatterySaverLogger;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 74
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 75
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 76
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-direct {v1, p1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 78
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->onBootCompleted()V

    .line 84
    :cond_66
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {v1, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 85
    invoke-virtual {v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->init()V

    .line 89
    invoke-static {}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->getInstance()Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 90
    new-instance v2, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V

    iput-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .registers 3

    .line 294
    invoke-virtual {p2, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$1(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .registers 3

    .line 295
    invoke-virtual {p2, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->dumpSleepModeHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSqdBlockList(ILjava/lang/String;)Z
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->addBlockList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 265
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_37

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump IntelligentBatterySaverService from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 273
    :cond_37
    sget-boolean p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    if-eqz p1, :cond_54

    const-string p1, ""

    .line 274
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "IBS Version: 1.0"

    .line 275
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->dumpIBSHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 282
    :cond_54
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    if-eqz p1, :cond_5b

    .line 283
    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/sqd/IbsQuickDim;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 288
    :cond_5b
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    if-eqz p1, :cond_62

    .line 289
    invoke-virtual {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 294
    :cond_62
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 295
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forceApplyEveryPolicy()V
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->forceApplyUpdatedSCPMPolicy()V

    return-void
.end method

.method public final forceResetEveryPolicy()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendForceEixtFastDrainRestrictionMessage()V

    .line 101
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogAppNetworkForceReset()V

    return-void
.end method

.method public getGain()[J
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getGain()[J

    move-result-object p0

    return-object p0
.end method

.method public getOperationHistory()Landroid/os/Bundle;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getOperationHistory()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSleepTime()Landroid/os/Bundle;
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getSleepTime()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSqdBlockList()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getBlockList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .registers 2

    .line 95
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mBootCompleteReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

    .line 96
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSCPMReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    return-void
.end method

.method public isEnableSerive()Z
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isEnableSerive()Z

    move-result p0

    return p0
.end method

.method public isSqdUiControlEnabled()Z
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getSQDUiControlEnable()Z

    move-result p0

    return p0
.end method

.method public final onBootCompleted()V
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->init()V

    .line 110
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->init()V

    .line 111
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->init()V

    .line 112
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->init()V

    .line 113
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->init()V

    return-void
.end method

.method public removeSqdBlockList(ILjava/lang/String;)Z
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeBlockList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setRubinEvent(Ljava/lang/String;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setRubinEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setSarrUiControlEnable(Z)V
    .registers 2

    return-void
.end method

.method public setSleepModeEnabled(Z)V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    return-void
.end method

.method public setSleepTime(JJ)V
    .registers 8

    .line 161
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepTime(JJ)V

    return-void
.end method

.method public setSqdUiControlEnabled(Z)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    return-void
.end method
