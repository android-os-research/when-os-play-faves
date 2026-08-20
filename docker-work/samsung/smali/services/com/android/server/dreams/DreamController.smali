.class public final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$DreamRecord;,
        Lcom/android/server/dreams/DreamController$Listener;
    }
.end annotation


# static fields
.field public static final DREAM_CONNECTION_TIMEOUT:I = 0x1388

.field public static final DREAM_FINISH_TIMEOUT:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "DreamController"


# instance fields
.field public final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field public mDreamStartTime:J

.field public final mDreamingStartedIntent:Landroid/content/Intent;

.field public final mDreamingStoppedIntent:Landroid/content/Intent;

.field public final mHandler:Landroid/os/Handler;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field public mSavedStopReason:Ljava/lang/String;

.field public final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field public final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$l7qszohe6DdTRzuFGFeC6E3UFwc(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->lambda$stopDream$1(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0-PjqcFvDQ2ef4CtAZmJfIInKU(Lcom/android/server/dreams/DreamController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamController;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mattach(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .registers 7

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    .line 76
    new-instance v0, Lcom/android/server/dreams/DreamController$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$1;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 96
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    const-string/jumbo p0, "reason"

    const-string p2, "dream"

    .line 98
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "DreamController"

    const-string v1, "Stubborn dream did not finish itself in the time allotted"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string/jumbo v1, "slow to finish"

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mSavedStopReason:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$stopDream$1(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {p0, p1}, Lcom/android/server/dreams/DreamController$Listener;->onDreamStopped(Landroid/os/Binder;)V

    return-void
.end method


# virtual methods
.method public final attach(Landroid/service/dreams/IDreamService;)V
    .registers 6

    const/4 v0, 0x1

    .line 240
    :try_start_1
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 241
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v2, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-boolean v3, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, v2, v3, v1}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_2c

    .line 249
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 251
    iget-boolean p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    if-nez p1, :cond_2b

    .line 252
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 253
    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    :cond_2b
    return-void

    :catch_2c
    move-exception p1

    const-string v1, "DreamController"

    const-string v2, "The dream service died unexpectedly."

    .line 244
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "attach failed"

    .line 245
    invoke-virtual {p0, v0, p1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Dreamland:"

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-eqz v0, :cond_e7

    const-string v0, "  mCurrentDream:"

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsPreviewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSentStartBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWakingGently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ec

    :cond_e7
    const-string p0, "  mCurrentDream: null"

    .line 115
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ec
    return-void
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;Landroid/content/ComponentName;)V
    .registers 24

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move/from16 v10, p5

    const-string v11, "Unable to bind dream service: "

    const-string v12, "DreamController"

    const/4 v13, 0x1

    const-string/jumbo v1, "starting new dream"

    .line 122
    invoke-virtual {v9, v13, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    const-wide/32 v14, 0x20000

    const-string/jumbo v1, "startDream"

    .line 124
    invoke-static {v14, v15, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 127
    :try_start_1a
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dream: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isPreviewMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canDoze="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v8, Lcom/android/server/dreams/DreamController$DreamRecord;
    :try_end_55
    .catchall {:try_start_1a .. :try_end_55} :catchall_ff

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v14, v8

    move-object/from16 v8, p6

    :try_start_65
    invoke-direct/range {v1 .. v8}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    iput-object v14, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    .line 136
    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 137
    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v2, :cond_7b

    const/16 v2, 0xdf

    goto :goto_7d

    :cond_7b
    const/16 v2, 0xde

    .line 136
    :goto_7d
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.dreams.DreamService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x800000

    .line 141
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    move-object/from16 v2, p7

    .line 142
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_96
    .catchall {:try_start_65 .. :try_end_96} :catchall_fa

    .line 144
    :try_start_96
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bindService failed"

    .line 148
    invoke-virtual {v9, v13, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/SecurityException; {:try_start_96 .. :try_end_bf} :catch_da
    .catchall {:try_start_96 .. :try_end_bf} :catchall_fa

    const-wide/32 v1, 0x20000

    .line 160
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 157
    :cond_c6
    :try_start_c6
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v13, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 158
    iget-object v0, v9, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d3
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_fa

    const-wide/32 v1, 0x20000

    .line 160
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_da
    move-exception v0

    .line 152
    :try_start_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "unable to bind service: SecExp."

    .line 153
    invoke-virtual {v9, v13, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_db .. :try_end_f3} :catchall_fa

    const-wide/32 v1, 0x20000

    .line 160
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_fa
    move-exception v0

    const-wide/32 v1, 0x20000

    goto :goto_101

    :catchall_ff
    move-exception v0

    move-wide v1, v14

    :goto_101
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 161
    throw v0
.end method

.method public stopDream(ZLjava/lang/String;)V
    .registers 11

    .line 165
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "stopDream"

    .line 169
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_33

    .line 172
    :try_start_10
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_10f

    if-eqz v2, :cond_1a

    .line 234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 176
    :cond_1a
    :try_start_1a
    iget-object v2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-eqz v2, :cond_33

    const/4 v3, 0x1

    .line 178
    iput-boolean v3, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_10f

    .line 180
    :try_start_21
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mSavedStopReason:Ljava/lang/String;

    .line 181
    invoke-interface {v2}, Landroid/service/dreams/IDreamService;->wakeUp()V

    .line 182
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2f} :catch_33
    .catchall {:try_start_21 .. :try_end_2f} :catchall_10f

    .line 234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 190
    :catch_33
    :cond_33
    :try_start_33
    iget-object p1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v2, 0x0

    .line 191
    iput-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const-string v3, "DreamController"

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping dream: name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isPreviewMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", canDoze="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", reason=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mSavedStopReason:Ljava/lang/String;

    if-nez p2, :cond_7b

    const-string p2, ""

    goto :goto_93

    :cond_7b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(from \'"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/dreams/DreamController;->mSavedStopReason:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_93
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 199
    iget-boolean v3, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v3, :cond_a6

    const/16 v3, 0xdf

    goto :goto_a8

    :cond_a6
    const/16 v3, 0xde

    .line 198
    :goto_a8
    invoke-static {p2, v3}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 200
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 201
    iget-boolean v3, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v3, :cond_b4

    const-string v3, "dozing_minutes"

    goto :goto_b6

    :cond_b4
    const-string v3, "dreaming_minutes"

    .line 202
    :goto_b6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 200
    invoke-static {p2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iput-object v2, p0, Lcom/android/server/dreams/DreamController;->mSavedStopReason:Ljava/lang/String;

    .line 208
    iget-boolean p2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    if-eqz p2, :cond_e2

    .line 209
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 212
    :cond_e2
    iget-object p2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_e4
    .catchall {:try_start_33 .. :try_end_e4} :catchall_10f

    if-eqz p2, :cond_f5

    .line 214
    :try_start_e6
    invoke-interface {p2}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_e9} :catch_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_10f

    .line 220
    :catch_e9
    :try_start_e9
    iget-object p2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    invoke-interface {p2}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_f3
    .catch Ljava/util/NoSuchElementException; {:try_start_e9 .. :try_end_f3} :catch_f3
    .catchall {:try_start_e9 .. :try_end_f3} :catchall_10f

    .line 224
    :catch_f3
    :try_start_f3
    iput-object v2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 227
    :cond_f5
    iget-boolean p2, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz p2, :cond_fe

    .line 228
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    :cond_fe
    invoke-virtual {p1}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    .line 232
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10b
    .catchall {:try_start_f3 .. :try_end_10b} :catchall_10f

    .line 234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_10f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 235
    throw p0
.end method
