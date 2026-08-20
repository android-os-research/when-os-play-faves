.class public Lcom/android/server/am/MARsTrigger;
.super Ljava/lang/Object;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;
    }
.end annotation


# static fields
.field public static final ACTION_PACKAGE_NOTUSED_RECENTLY:Ljava/lang/String; = "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

.field public static final ACTION_REQUEST_DB_COMPLETE_FROMSDHMS:Ljava/lang/String; = "MARS_REQUEST_DB_COMPLETE"

.field public static final ACTION_REQUEST_FILLIN_SMDB_FROMSM:Ljava/lang/String; = "MARS_REQUEST_PKG_INFO"

.field public static final ACTION_REQUEST_UPDATE_MARSDB_FROMSM:Ljava/lang/String; = "MARS_REQUEST_POLICY_INFO"

.field public static final ACTION_UI_SET_ALWAYS_OPTIMIZING:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

.field public static final ACTION_UI_TRIGGER_POLICY_SPECIFIC_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

.field public static final FIRST_ALARM_TRIGGER_ACTION:Ljava/lang/String; = "FIRST_ALARM_TRIGGER_ACTION"

.field public static final MARS_CANCEL_GAME_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

.field public static final MARS_CANCEL_MPSM_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_MPSM_POLICY"

.field public static final MARS_CANCEL_SBIKE_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

.field public static final MARS_CANCEL_UDS_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_UDS_POLICY"

.field public static final MARS_TRIGGER_GAME_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

.field public static final MARS_TRIGGER_MPSM_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

.field public static final MARS_TRIGGER_SBIKE_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

.field public static final MARS_TRIGGER_UDS_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

.field public static final TAG:Ljava/lang/String; = "MARsTrigger"

.field public static final mFirstPolicyTriggerInterval:J = 0x1388L


# instance fields
.field public mAlarm:Landroid/app/AlarmManager;

.field public mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mEmStateReceiverRegistered:Z

.field public mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field public mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mPolicyMPSMIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mReceiverRegistered:Z

.field public mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mSMDBChangedReceiverRegistered:Z

.field public mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mUserActionReceiver:Landroid/content/BroadcastReceiver;

.field public mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarm(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTimeChangeClockTime(Lcom/android/server/am/MARsTrigger;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTimeChangeRealtime(Lcom/android/server/am/MARsTrigger;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMARsFirstTriggerPolicyAlarmIntent(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastTimeChangeClockTime(Lcom/android/server/am/MARsTrigger;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTimeChangeRealtime(Lcom/android/server/am/MARsTrigger;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpolicyNameToInt(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsTrigger;->policyNameToInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetAlarm(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    .line 364
    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    new-instance v0, Lcom/android/server/am/MARsTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$3;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 449
    new-instance v0, Lcom/android/server/am/MARsTrigger$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$4;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 484
    new-instance v0, Lcom/android/server/am/MARsTrigger$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$5;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    new-instance v0, Lcom/android/server/am/MARsTrigger$6;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$6;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 561
    new-instance v0, Lcom/android/server/am/MARsTrigger$7;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$7;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyMPSMIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/android/server/am/MARsTrigger$8;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$8;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    new-instance v0, Lcom/android/server/am/MARsTrigger$9;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$9;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    new-instance v0, Lcom/android/server/am/MARsTrigger$10;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$10;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 682
    new-instance v0, Lcom/android/server/am/MARsTrigger$11;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$11;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 699
    new-instance v0, Lcom/android/server/am/MARsTrigger$12;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$12;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 729
    new-instance v0, Lcom/android/server/am/MARsTrigger$13;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$13;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/MARsTrigger-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/MARsTrigger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MARsTrigger;
    .registers 1

    .line 102
    invoke-static {}, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final actionToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    .line 327
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "User Set Always Optimizing"

    return-object p0

    :cond_b
    const-string p0, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    .line 329
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "Package Not Used Recently"

    return-object p0

    :cond_16
    const-string p0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 331
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "User Trigger Policy"

    return-object p0

    :cond_21
    const-string p0, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    .line 333
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "Trigger UDS(Ultra Data Saving) Policy"

    return-object p0

    :cond_2c
    const-string p0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 335
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "Trigger S Bike Policy"

    return-object p0

    :cond_37
    const-string p0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 337
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "Trigger GAME MODE Policy"

    return-object p0

    :cond_42
    const-string p0, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

    .line 339
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "Trigger MPSM Policy"

    return-object p0

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public deInit()V
    .registers 1

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsTrigger;->setContext(Landroid/content/Context;)V

    .line 116
    new-instance p1, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-void
.end method

.method public final policyNameToInt(Ljava/lang/String;)I
    .registers 2

    const-string p0, "applocker"

    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string p0, "autorun"

    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-string p0, "freecess"

    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x4

    return p0

    :cond_1e
    const-string/jumbo p0, "udspolicy"

    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x5

    return p0

    :cond_29
    const-string/jumbo p0, "sbikepolicy"

    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x6

    return p0

    :cond_34
    const-string p0, "gamepolicy"

    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const/16 p0, 0x9

    return p0

    :cond_3f
    const-string/jumbo p0, "mpsmpolicy"

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const/16 p0, 0xa

    return p0

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method

.method public registerEmStateReceiver()V
    .registers 4

    .line 280
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 283
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    return-void
.end method

.method public registerGameReceiver()V
    .registers 3

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerMPSMReceiver()V
    .registers 3

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_MPSM_POLICY"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyMPSMIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerReceiver(Z)V
    .registers 7

    .line 126
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    if-nez v0, :cond_15

    .line 130
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 133
    :cond_15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "MARS_REQUEST_POLICY_INFO"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "MARS_REQUEST_DB_COMPLETE"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 141
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 147
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "FIRST_ALARM_TRIGGER_ACTION"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz p1, :cond_de

    .line 175
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_de
    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    return-void
.end method

.method public registerSBikeReceiver()V
    .registers 3

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerSMDBChangedReceiver()V
    .registers 4

    .line 304
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 307
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MARS_REQUEST_PKG_INFO"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    return-void
.end method

.method public registerUDSReceiver()V
    .registers 3

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.MARS_CANCEL_UDS_POLICY"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setAlarm(Ljava/lang/String;J)V
    .registers 8

    const-string v0, "FIRST_ALARM_TRIGGER_ACTION"

    .line 766
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 767
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2a

    .line 768
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android"

    .line 769
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 770
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 771
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    .line 772
    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 775
    :cond_2a
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    const/4 v0, 0x1

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 775
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_37
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 111
    new-instance p1, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public unregisterEmStateReceiver()V
    .registers 3

    .line 291
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 295
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string p0, "MARsTrigger"

    const-string v0, "IllegalArgumentException occurred in unregisterEmStateReceiver()"

    .line 298
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public unregisterGameReceiver()V
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unregisterMPSMReceiver()V
    .registers 2

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyMPSMIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "MARsTrigger"

    const-string v0, "IllegalArgumentException occurred in unregisterMPSMReceiver()"

    .line 273
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public unregisterReceiver(Z)V
    .registers 3

    .line 189
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_15

    .line 194
    :try_start_7
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_15
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iget-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_36
    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    return-void
.end method

.method public unregisterSBikeReceiver()V
    .registers 2

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "MARsTrigger"

    const-string v0, "IllegalArgumentException occurred in unregisterSBikeReceiver()"

    .line 242
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public unregisterSMDBChangedReceiver()V
    .registers 3

    .line 315
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 319
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string p0, "MARsTrigger"

    const-string v0, "IllegalArgumentException occurred in unregisterSMDBChangedReceiver()"

    .line 322
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public unregisterUDSReceiver()V
    .registers 2

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "MARsTrigger"

    const-string v0, "IllegalArgumentException occurred in unregisterUDSReceiver()"

    .line 225
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method
