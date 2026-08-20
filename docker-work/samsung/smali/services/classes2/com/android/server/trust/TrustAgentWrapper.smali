.class public Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final DATA_DURATION:Ljava/lang/String; = "duration"

.field public static final DATA_ESCROW_TOKEN:Ljava/lang/String; = "escrow_token"

.field public static final DATA_HANDLE:Ljava/lang/String; = "handle"

.field public static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field public static final DATA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final DEBUG:Z

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final MSG_ADD_ESCROW_TOKEN:I = 0x7

.field public static final MSG_ESCROW_TOKEN_STATE:I = 0x9

.field public static final MSG_GRANT_TRUST:I = 0x1

.field public static final MSG_LOCK_USER:I = 0xc

.field public static final MSG_MANAGING_TRUST:I = 0x6

.field public static final MSG_REMOVE_ESCROW_TOKEN:I = 0x8

.field public static final MSG_RESTART_TIMEOUT:I = 0x4

.field public static final MSG_REVOKE_TRUST:I = 0x2

.field public static final MSG_SET_TRUST_AGENT_FEATURES_COMPLETED:I = 0x5

.field public static final MSG_SHOW_KEYGUARD_ERROR_MESSAGE:I = 0xb

.field public static final MSG_TRUST_TIMEOUT:I = 0x3

.field public static final MSG_UNLOCK_USER:I = 0xa

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field public static final RESTART_TIMEOUT_MILLIS:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "TrustAgentWrapper"

.field public static final TRUST_EXPIRED_ACTION:Ljava/lang/String; = "android.server.trust.TRUST_EXPIRED_ACTION"


# instance fields
.field public final mAlarmIntent:Landroid/content/Intent;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmPendingIntent:Landroid/app/PendingIntent;

.field public mBound:Z

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mDisplayTrustGrantedMessage:Z

.field public final mHandler:Landroid/os/Handler;

.field public mManagingTrust:Z

.field public mMaximumTimeToLock:J

.field public mMessage:Ljava/lang/CharSequence;

.field public final mName:Landroid/content/ComponentName;

.field public mPendingSuccessfulUnlock:Z

.field public mScheduledRestartUptimeMillis:J

.field public mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field public mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field public mTrustDisabledByDpm:Z

.field public final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field public mTrustable:Z

.field public final mTrustableDowngradeReceiver:Landroid/content/BroadcastReceiver;

.field public mTrusted:Z

.field public final mUserId:I

.field public mWaitingForTrustableDowngrade:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaximumTimeToLock(Lcom/android/server/trust/TrustAgentWrapper;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessage(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTrustTimeout(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleRestart(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCallback(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 65
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 13

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 119
    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$2;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$2;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 313
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    .line 422
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$5;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$5;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 461
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    .line 462
    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    const-string p2, "alarm"

    .line 463
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 464
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 465
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    .line 467
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "componentName"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    const/4 v6, 0x1

    .line 468
    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual {v7, v4, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->scheduleRestart()V

    const v4, 0x4000001

    .line 481
    invoke-virtual {p1, p3, v2, v4, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz p3, :cond_9d

    const/4 v6, 0x0

    const/4 p0, 0x2

    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    move-object v2, p1

    move-object v4, v7

    move v7, p0

    .line 484
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 486
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_b7

    .line 488
    :cond_9d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t bind to TrustAgent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustAgentWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b7
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 693
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_b

    return-void

    .line 698
    :cond_b
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent unbound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2b
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logAgentStopped(ILandroid/content/ComponentName;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    .line 702
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 704
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 705
    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 706
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public downgradeToTrustable()V
    .registers 3

    .line 668
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 670
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    const/4 v1, 0x1

    .line 671
    iput-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 672
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, p0, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_13
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getScheduledRestartUptimeMillis()J
    .registers 3

    .line 723
    iget-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    return-wide v0
.end method

.method public isBound()Z
    .registers 1

    .line 714
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    return p0
.end method

.method public isConnected()Z
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isManagingTrust()Z
    .registers 2

    .line 677
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isTrustable()Z
    .registers 2

    .line 655
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isTrusted()Z
    .registers 2

    .line 651
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onDeviceLocked()V
    .registers 2

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public onDeviceUnlocked()V
    .registers 2

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .registers 3

    const-string p0, "TrustAgentWrapper"

    const-string v0, "Exception "

    .line 493
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onEscrowTokenActivated(JI)V
    .registers 6

    .line 583
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEscrowTokenActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TrustAgentWrapper"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_23
    iget-object p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p3, :cond_30

    const/4 v0, 0x1

    .line 586
    :try_start_28
    invoke-interface {p3, p1, p2, v0}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public final onTrustTimeout()V
    .registers 2

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .registers 3

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_8

    .line 510
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_f

    .line 512
    :cond_8
    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_f
    return-void
.end method

.method public onUnlockLockout(I)V
    .registers 3

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    .line 549
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public onUserMayRequestUnlock()V
    .registers 2

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    .line 536
    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onUserMayRequestUnlock()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 539
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public onUserRequestedUnlock(Z)V
    .registers 3

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    .line 525
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUserRequestedUnlock(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public final scheduleRestart()V
    .registers 7

    .line 727
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    .line 729
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 3

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_c

    .line 596
    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public setUntrustable()V
    .registers 2

    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    return-void
.end method

.method public shouldDisplayTrustGrantedMessage()Z
    .registers 1

    .line 689
    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    return p0
.end method

.method public updateDevicePolicyFeatures()Z
    .registers 10

    .line 605
    sget-boolean v0, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    const-string v1, "TrustAgentWrapper"

    if-eqz v0, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDevicePolicyFeatures("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v2, 0x0

    .line 607
    :try_start_23
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v3, :cond_be

    .line 608
    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    .line 609
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 611
    iget v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_94

    .line 613
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_44} :catch_c0

    const/4 v6, 0x1

    if-eqz v0, :cond_5b

    .line 616
    :try_start_47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detected trust agents disabled. Config = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    if-eqz v4, :cond_9c

    .line 617
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9c

    if-eqz v0, :cond_87

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TrustAgent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " disabled until it acknowledges "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    .line 623
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v1, v4, v0}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_93} :catch_bc

    goto :goto_9c

    .line 626
    :cond_94
    :try_start_94
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1, v5}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_9b} :catch_c0

    move v6, v2

    .line 628
    :cond_9c
    :goto_9c
    :try_start_9c
    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v3, v5, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    .line 629
    iget-wide v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_c5

    .line 632
    iput-wide v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    .line 633
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c5

    .line 634
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 635
    iput-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 636
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_bb} :catch_bc

    goto :goto_c5

    :catch_bc
    move-exception v0

    goto :goto_c2

    :cond_be
    move v6, v2

    goto :goto_c5

    :catch_c0
    move-exception v0

    move v6, v2

    .line 641
    :goto_c2
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 643
    :cond_c5
    :goto_c5
    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v0, v6, :cond_d2

    .line 644
    iput-boolean v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    .line 645
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v0, p0, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_d2
    return v6
.end method
