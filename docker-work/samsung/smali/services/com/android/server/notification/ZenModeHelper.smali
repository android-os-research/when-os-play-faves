.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final LIFESTYLE_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field public static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field public static final RULE_LIMIT_PER_PACKAGE:I = 0x64

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

.field public static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAudioManager:Landroid/media/AudioManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mConditions:Lcom/android/server/notification/ZenModeConditions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mConfig:Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mConfigs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDefaultConfig:Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field public final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field public mIsBootComplete:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field public final mNotificationManager:Landroid/app/NotificationManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field public final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field public final mRulesUidCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field public final mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

.field public mSuppressedEffects:J

.field public mUser:I

.field public mZenMode:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mapplyConfig(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetZenModeSetting(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;)V
    .registers 10

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 129
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v3, 0x0

    .line 134
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 151
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 152
    new-instance v4, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v4, p0, p2, v2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H-IA;)V

    iput-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 154
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 155
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 159
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 160
    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 163
    new-instance p2, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-direct {p2, p0, v4}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 164
    invoke-virtual {p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 165
    new-instance p2, Lcom/android/server/notification/ZenModeFiltering;

    invoke-direct {p2, p1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 166
    new-instance p1, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {p1, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 167
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 168
    iput-object p4, p0, Lcom/android/server/notification/ZenModeHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 8

    .line 733
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    if-nez p3, :cond_11

    .line 735
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :cond_11
    const/16 p2, 0xc

    new-array p2, p2, [Ljava/lang/Object;

    .line 738
    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 741
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x3

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 742
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x4

    iget v3, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x5

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 743
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x6

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/4 v0, 0x7

    iget v3, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 744
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    const/16 v0, 0x8

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 745
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/16 v0, 0x9

    iget v3, p3, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 746
    invoke-static {v3}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    const/16 v0, 0xa

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 747
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const/16 v0, 0xb

    iget-boolean v3, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v0

    const-string v0, "allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,conversations=%b,conversationsFrom=%s,events=%b,reminders=%b)\n"

    .line 738
    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 748
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Object;

    .line 749
    iget v0, p3, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "  disallow(visualEffects=%s)\n"

    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 750
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  manualRule="

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 751
    iget-object p2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b2

    return-void

    .line 752
    :cond_b2
    iget-object p2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_b8
    if-ge v1, p2, :cond_d3

    .line 754
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_c2

    const-string v0, "  automaticRules="

    goto :goto_c4

    :cond_c2
    const-string v0, "                 "

    :goto_c4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    :cond_d3
    return-void
.end method

.method public static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 869
    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zenSeverity(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v1

    :cond_c
    return v0
.end method


# virtual methods
.method public addAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "android"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_58

    .line 326
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 328
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :cond_1b
    if-eqz v0, :cond_50

    .line 334
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, -0x1

    if-eqz v0, :cond_28

    const-string v3, "android.service.zen.automatic.ruleInstanceLimit"

    .line 335
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 338
    :cond_28
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v0

    .line 339
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getPackageRuleCount(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x64

    if-gt v3, v4, :cond_48

    if-lez v2, :cond_58

    if-lt v2, v0, :cond_48

    goto :goto_58

    .line 344
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rule instance limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 331
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lacking enabled CPS or config activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 350
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_aa

    .line 353
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_81

    const-string v2, "ZenModeHelper"

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAutomaticZenRule rule= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_81
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 357
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 358
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 359
    iget-object p1, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object p2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v2, p3, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 361
    iget-object p0, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 363
    :cond_a2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Could not create rule"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 351
    :cond_aa
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Could not create rule"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b2
    move-exception p0

    .line 365
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_5b .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 2

    .line 207
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 8

    .line 980
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 982
    invoke-virtual {p0, p2, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 983
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 4

    .line 1067
    iget p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    .line 1068
    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1069
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 1070
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    .line 1068
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_38

    :cond_16
    const/4 v0, 0x3

    if-ne p0, v0, :cond_33

    .line 1072
    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1073
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    const/4 p2, 0x1

    .line 1074
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 1075
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 1076
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    .line 1072
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_38

    .line 1078
    :cond_33
    iget-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    :goto_38
    return-void
.end method

.method public applyRestrictions()V
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 1134
    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    move v4, v3

    goto :goto_b

    :cond_a
    move v4, v2

    :goto_b
    const/4 v5, 0x2

    if-ne v1, v5, :cond_10

    move v6, v3

    goto :goto_11

    :cond_10
    move v6, v2

    :goto_11
    const/4 v7, 0x3

    if-ne v1, v7, :cond_16

    move v1, v3

    goto :goto_17

    :cond_16
    move v1, v2

    .line 1138
    :goto_17
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    if-nez v8, :cond_2e

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1139
    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2c

    goto :goto_2e

    :cond_2c
    move v8, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v8, v3

    .line 1142
    :goto_2f
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v9

    .line 1143
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v10

    .line 1144
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v11

    .line 1145
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v12

    .line 1148
    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x1

    and-long/2addr v15, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_54

    move v15, v3

    goto :goto_55

    :cond_54
    move v15, v2

    :goto_55
    if-nez v1, :cond_67

    if-eqz v4, :cond_5d

    if-nez v8, :cond_5d

    if-eqz v9, :cond_67

    :cond_5d
    const-wide/16 v8, 0x2

    and-long/2addr v8, v13

    cmp-long v8, v8, v17

    if-eqz v8, :cond_65

    goto :goto_67

    :cond_65
    move v8, v2

    goto :goto_68

    :cond_67
    :goto_67
    move v8, v3

    :goto_68
    if-eqz v4, :cond_6e

    if-nez v12, :cond_6e

    move v9, v3

    goto :goto_6f

    :cond_6e
    move v9, v2

    :goto_6f
    if-eqz v4, :cond_75

    if-nez v11, :cond_75

    move v11, v3

    goto :goto_76

    :cond_75
    move v11, v2

    :goto_76
    if-nez v1, :cond_7f

    if-eqz v4, :cond_7d

    if-nez v10, :cond_7d

    goto :goto_7f

    :cond_7d
    move v1, v2

    goto :goto_80

    :cond_7f
    :goto_7f
    move v1, v3

    :goto_80
    if-nez v6, :cond_8f

    if-eqz v4, :cond_8d

    .line 1161
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1162
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    if-eqz v6, :cond_8d

    goto :goto_8f

    :cond_8d
    move v6, v2

    goto :goto_90

    :cond_8f
    :goto_8f
    move v6, v3

    .line 1164
    :goto_90
    sget-object v10, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v12, v10

    move v13, v2

    :goto_94
    if-ge v13, v12, :cond_10d

    aget v14, v10, v13

    .line 1165
    sget-object v5, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_a5

    .line 1167
    invoke-virtual {v0, v4, v2, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_108

    :cond_a5
    if-ne v5, v3, :cond_b4

    if-nez v15, :cond_ae

    if-eqz v6, :cond_ac

    goto :goto_ae

    :cond_ac
    move v5, v2

    goto :goto_af

    :cond_ae
    :goto_ae
    move v5, v3

    .line 1169
    :goto_af
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_108

    :cond_b4
    const/4 v3, 0x2

    if-ne v5, v3, :cond_c3

    if-nez v8, :cond_be

    if-eqz v6, :cond_bc

    goto :goto_be

    :cond_bc
    move v5, v2

    goto :goto_bf

    :cond_be
    :goto_be
    const/4 v5, 0x1

    .line 1171
    :goto_bf
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_108

    :cond_c3
    const/4 v3, 0x4

    if-ne v5, v3, :cond_d2

    if-nez v9, :cond_cd

    if-eqz v6, :cond_cb

    goto :goto_cd

    :cond_cb
    move v3, v2

    goto :goto_ce

    :cond_cd
    :goto_cd
    const/4 v3, 0x1

    .line 1173
    :goto_ce
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_108

    :cond_d2
    const/4 v3, 0x5

    if-ne v5, v3, :cond_e1

    if-nez v11, :cond_dc

    if-eqz v6, :cond_da

    goto :goto_dc

    :cond_da
    move v3, v2

    goto :goto_dd

    :cond_dc
    :goto_dc
    const/4 v3, 0x1

    .line 1175
    :goto_dd
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_108

    :cond_e1
    const/4 v3, 0x6

    if-ne v5, v3, :cond_105

    const/16 v3, 0xd

    if-ne v14, v3, :cond_f9

    if-nez v1, :cond_ef

    if-eqz v6, :cond_ed

    goto :goto_ef

    :cond_ed
    move v3, v2

    goto :goto_f0

    :cond_ef
    :goto_ef
    const/4 v3, 0x1

    :goto_f0
    const/16 v5, 0x1c

    .line 1179
    invoke-virtual {v0, v4, v3, v14, v5}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1181
    invoke-virtual {v0, v4, v2, v14, v7}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_108

    :cond_f9
    if-nez v1, :cond_100

    if-eqz v6, :cond_fe

    goto :goto_100

    :cond_fe
    move v3, v2

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v3, 0x1

    .line 1183
    :goto_101
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_108

    .line 1186
    :cond_105
    invoke-virtual {v0, v4, v6, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    :goto_108
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_94

    :cond_10d
    return-void
.end method

.method public applyRestrictions(ZZI)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x3

    .line 1206
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    const/16 v0, 0x1c

    .line 1207
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    return-void
.end method

.method public applyRestrictions(ZZII)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1196
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz p1, :cond_b

    .line 1198
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    .line 1196
    :goto_c
    invoke-virtual {v2, p4, p3, p2, p0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 1200
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1201
    throw p0
.end method

.method public applyZenToRingerMode()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1228
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_5

    return-void

    .line 1230
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 1232
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v1, :cond_1f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    goto :goto_29

    :cond_14
    if-eqz v0, :cond_29

    .line 1236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    goto :goto_29

    :cond_1f
    if-nez v0, :cond_29

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v0

    const/4 v1, 0x0

    .line 1246
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    :cond_29
    :goto_29
    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 1251
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v1, "ZenModeHelper"

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    :cond_33
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 8

    .line 541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_c

    goto :goto_39

    .line 544
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 548
    :cond_17
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    .line 550
    array-length v2, p0

    move v3, v0

    :goto_26
    if-ge v3, v2, :cond_38

    .line 552
    aget-object v4, p0, v3

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    return v1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public cleanUpCallersAfter(J)V
    .registers 3

    .line 197
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->cleanUpCallersAfter(J)V

    return-void
.end method

.method public final cleanUpZenRules()V
    .registers 11

    .line 888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 889
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 890
    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 891
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v4, :cond_4a

    .line 892
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_17
    if-ltz v4, :cond_4a

    .line 893
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide/32 v6, 0xf731400

    .line 894
    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_52

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_47

    .line 896
    :try_start_30
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 897
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    const/high16 v7, 0x400000

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_41} :catch_42
    .catchall {:try_start_30 .. :try_end_41} :catchall_52

    goto :goto_47

    .line 900
    :catch_42
    :try_start_42
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    :cond_4a
    const/4 v0, 0x0

    const-string v1, "cleanUpZenRules"

    .line 905
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 906
    monitor-exit v2

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public final computeZenMode()I
    .registers 7

    .line 1045
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1046
    :cond_6
    monitor-enter v0

    .line 1047
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_11

    iget p0, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return p0

    .line 1049
    :cond_11
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1050
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1051
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v4, v5, :cond_1b

    .line 1053
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "zen_settings_suggestion_viewed"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_55

    .line 1055
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_zen_settings_suggestion"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    :cond_55
    iget v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_1b

    .line 1062
    :cond_58
    monitor-exit v0

    return v1

    :catchall_5a
    move-exception p0

    .line 1063
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .registers 12

    .line 643
    new-instance p0, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 646
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-wide v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    .line 648
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule;->setPackageName(Ljava/lang/String;)V

    return-object p0
.end method

.method public createZenUpgradeNotification()Landroid/app/Notification;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1569
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1570
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    .line 1569
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1574
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const v1, 0x1040fa9

    const v2, 0x1040fa8

    const v3, 0x10803bd

    goto :goto_36

    :cond_2d
    const v1, 0x1040fa7

    const v2, 0x1040fa6

    const v3, 0x10805b7

    .line 1581
    :goto_36
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v5, 0x10008000

    .line 1582
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1583
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x1080571

    .line 1585
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1586
    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1587
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1588
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 1589
    invoke-static {p0, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1591
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1592
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1593
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1594
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1595
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1281
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1282
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchOnConfigChanged()V
    .registers 2

    .line 1256
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1257
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchOnConsolidatedPolicyChanged()V
    .registers 2

    .line 1268
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1269
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchOnPolicyChanged()V
    .registers 2

    .line 1262
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1263
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchOnZenModeChanged()V
    .registers 2

    .line 1274
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1275
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    .line 688
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 689
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 690
    :try_start_d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_1b

    .line 691
    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 693
    :cond_1b
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 694
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_27

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_27

    iget v5, v5, Landroid/service/notification/Condition;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v5, :cond_27

    .line 697
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_27

    .line 700
    :cond_48
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v1, 0x10500000003L

    .line 701
    iget-wide v3, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 702
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_d .. :try_end_64} :catchall_62

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 706
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZenMode="

    .line 707
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_38
    if-ge v2, v0, :cond_65

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mConfigs[u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 715
    :cond_65
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 716
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    :try_start_76
    const-string/jumbo v2, "mConfig"

    .line 717
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 718
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_bd

    .line 720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSuppressedEffects="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 722
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPriorityOnlyDndExemptPackages="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ""

    .line 723
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    :goto_9b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_b2

    .line 725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 728
    :cond_b2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 729
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_bd
    move-exception p0

    .line 718
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method public evaluateZenMode(Ljava/lang/String;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1009
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_10

    return-void

    .line 1011
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 1012
    :cond_16
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    .line 1013
    :goto_1a
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v2

    .line 1015
    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 1016
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 1017
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    if-eqz p2, :cond_40

    if-ne v2, v1, :cond_3d

    const/4 p1, 0x1

    if-ne v2, p1, :cond_40

    .line 1020
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1021
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result p1

    if-eq v0, p1, :cond_40

    .line 1022
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 1024
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    if-eq v2, v1, :cond_4a

    .line 1026
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostDispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper$H;)V

    :cond_4a
    return-void
.end method

.method public final findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 481
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 483
    :cond_13
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 484
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 485
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_33
    :goto_33
    return-object v0
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 602
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 603
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 606
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    const/16 v1, 0x81

    .line 603
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 p1, 0x0

    .line 608
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 609
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 610
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppsToBypassDndForEnabledLifeStyle()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1108
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1109
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1110
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v1, :cond_d

    .line 1111
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getAppsToBypassDnd()Ljava/util/ArrayList;

    move-result-object v0

    .line 1112
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lifestyle apps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_50
    return-object v0
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 314
    :cond_a
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 315
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_22

    if-nez p1, :cond_16

    return-object v2

    .line 317
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v2

    :catchall_22
    move-exception p0

    .line 315
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .line 913
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 914
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 915
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 1

    .line 922
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 513
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 514
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 515
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 519
    :cond_32
    monitor-exit v1

    return v0

    :catchall_34
    move-exception p0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public getExceptionPackages()[Ljava/lang/String;
    .registers 5

    .line 1212
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070105

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1214
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDndExceptionPackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1218
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 1219
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1220
    array-length p0, p0

    array-length v2, v0

    invoke-static {v0, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 1

    .line 865
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageRuleCount(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 530
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 531
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 532
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 536
    :cond_2c
    monitor-exit v1

    return v0

    :catchall_2e
    move-exception p0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .registers 6

    const-string v0, "android"

    .line 1374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x3e8

    return p0

    .line 1377
    :cond_b
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_26

    .line 1380
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_26

    .line 1384
    :catch_26
    :cond_26
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPreviousRingerModeSetting()I
    .registers 3

    .line 997
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode_ringer_level"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 582
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 583
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 584
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 587
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x84

    .line 584
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_35

    const/4 v0, 0x0

    .line 589
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1b
    if-ge v0, v1, :cond_35

    .line 590
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 591
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 592
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    return-object v2

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuppressedEffects()J
    .registers 3

    .line 290
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .registers 1

    .line 294
    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return p0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 1

    .line 272
    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {p0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result p0

    return p0
.end method

.method public final getZenModeSetting()I
    .registers 3

    .line 987
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getZenRules()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 300
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_e

    monitor-exit v1

    return-object v0

    .line 301
    :cond_e
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 302
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 303
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 306
    :cond_2e
    monitor-exit v1

    return-object v0

    :catchall_30
    move-exception p0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public initZenMode()V
    .registers 3

    .line 215
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    const-string/jumbo v1, "init"

    .line 216
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public final loadConfigForUser(ILjava/lang/String;)V
    .registers 7

    .line 256
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_62

    if-gez p1, :cond_7

    goto :goto_62

    .line 257
    :cond_7
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 258
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_26
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_53

    if-eqz v0, :cond_4b

    const-string v0, "ZenModeHelper"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generating default config for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_4b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 263
    iput p1, v1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 265
    :cond_53
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter p1

    const/4 v0, 0x0

    .line 266
    :try_start_57
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 267
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5f

    .line 268
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    return-void

    :catchall_5f
    move-exception p0

    .line 267
    :try_start_60
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    :goto_62
    return-void
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 15

    .line 182
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 185
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 220
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-string/jumbo v1, "onSystemReady"

    if-eqz v0, :cond_c

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 229
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 233
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    .line 234
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    if-gez p1, :cond_3

    return-void

    .line 243
    :cond_3
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1e
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3

    const-string/jumbo v0, "onUserSwitched"

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3

    const-string/jumbo v0, "onUserUnlocked"

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    return-void
.end method

.method public final populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .registers 7

    if-eqz p4, :cond_16

    .line 620
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 622
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 623
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 626
    :cond_16
    iget-boolean p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    const/4 p4, 0x0

    if-eq p0, p1, :cond_21

    .line 627
    iput-boolean p4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 630
    :cond_21
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 p0, 0x0

    .line 631
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 632
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 633
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p0

    iput-boolean p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 634
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result p0

    iput-boolean p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 635
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 637
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result p0

    .line 636
    invoke-static {p0, p4}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result p0

    iput p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 638
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public pullRules(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 1316
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_8e

    .line 1318
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1319
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig;

    .line 1320
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v6}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    const/16 v7, 0x2764

    .line 1321
    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    .line 1322
    invoke-virtual {v6, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v8, 0x1

    if-eqz v7, :cond_32

    move v7, v8

    goto :goto_33

    :cond_32
    move v7, v2

    .line 1323
    :goto_33
    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    iget-boolean v7, v5, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 1324
    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    const/4 v7, -0x1

    .line 1325
    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    const-string v7, ""

    .line 1326
    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    const/16 v7, 0x3e8

    .line 1327
    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    .line 1328
    invoke-virtual {v6, v8, v8}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    .line 1329
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeByteArray([B)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v6

    .line 1330
    invoke-virtual {v6}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v6, :cond_70

    iget-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v7, :cond_70

    .line 1332
    invoke-virtual {p0, v4, v6, p1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;Ljava/util/List;)V

    .line 1334
    :cond_70
    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1335
    invoke-virtual {p0, v4, v6, p1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;Ljava/util/List;)V

    goto :goto_7a

    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 1338
    :cond_8e
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public final readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 4

    const p0, 0x117000c

    const/4 v0, 0x0

    .line 1289
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1290
    :cond_8
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1d

    .line 1291
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_23
    .catchall {:try_start_4 .. :try_end_17} :catchall_21

    if-eqz p0, :cond_8

    .line 1297
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_1d
    :goto_1d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2c

    :catchall_21
    move-exception p0

    goto :goto_32

    :catch_23
    move-exception p0

    :try_start_24
    const-string p1, "ZenModeHelper"

    const-string v1, "Error reading default zen mode config from resource"

    .line 1295
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    goto :goto_1d

    .line 1299
    :goto_2c
    new-instance p0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object p0

    .line 1297
    :goto_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1298
    throw p0
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Landroid/util/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    const-string/jumbo v0, "readXml"

    if-eqz p1, :cond_1a7

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    .line 766
    iput p3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 767
    iput-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 771
    :cond_10
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fixed_delete_mode_rule"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    :goto_23
    if-eqz v2, :cond_7c

    const-string v2, "ZenModeHelper"

    const-string/jumbo v5, "need Delete ModeRule"

    .line 774
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_34
    if-ltz v2, :cond_71

    .line 776
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v6, "com.android.settings"

    .line 777
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "ZenModeHelper"

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAt!! rule id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_6e
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .line 782
    :cond_71
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "fixed_delete_mode_rule"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 786
    :cond_7c
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_83
    if-ltz v2, :cond_f3

    .line 787
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v6, "SCHEDULED_DEFAULT_RULE"

    .line 788
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    iget-boolean v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-eqz v6, :cond_9c

    goto :goto_c8

    .line 790
    :cond_9c
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040f94

    .line 791
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string v5, "ZenModeHelper"

    .line 792
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change default rule name= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    :cond_c8
    :goto_c8
    const-string v6, "EVENTS_DEFAULT_RULE"

    .line 793
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    const-string v6, "ZenModeHelper"

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAt!! rule id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_f0
    :goto_f0
    add-int/lit8 v2, v2, -0x1

    goto :goto_83

    .line 802
    :cond_f3
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    sget-object v5, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 806
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_12d

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_12d

    .line 807
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v3

    :goto_114
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_128

    .line 810
    iput-boolean v4, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 811
    iput-object v1, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 812
    iput-wide v5, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 815
    :cond_128
    iget-boolean v9, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v9, v3

    and-int/2addr v8, v9

    goto :goto_114

    :cond_12d
    move v8, v3

    :cond_12e
    const/16 v5, 0x8

    if-nez v2, :cond_172

    if-eqz v8, :cond_172

    if-nez p2, :cond_13a

    .line 819
    iget p2, p1, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge p2, v5, :cond_172

    .line 824
    :cond_13a
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 825
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p2, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_161

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 826
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14d

    .line 828
    :cond_161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reset to default rules"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_172
    const/4 p2, -0x1

    if-ne p3, p2, :cond_176

    move p3, v4

    .line 833
    :cond_176
    iget p2, p1, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge p2, v5, :cond_187

    .line 834
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "show_zen_upgrade_notification"

    invoke-static {p2, v2, v3, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_193

    .line 838
    :cond_187
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "zen_settings_updated"

    invoke-static {p2, v2, v3, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 841
    :goto_193
    sget-boolean p2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p2, :cond_19c

    const-string p2, "ZenModeHelper"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_19c
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter p2

    .line 843
    :try_start_19f
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 844
    monitor-exit p2

    goto :goto_1a7

    :catchall_1a4
    move-exception p0

    monitor-exit p2
    :try_end_1a6
    .catchall {:try_start_19f .. :try_end_1a6} :catchall_1a4

    throw p0

    :cond_1a7
    :goto_1a7
    return-void
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 401
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 403
    :cond_a
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 404
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v3, :cond_1a

    .line 405
    monitor-exit v0

    return v2

    .line 406
    :cond_1a
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 407
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    const-string v2, "android"

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 409
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 410
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 411
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 415
    :cond_61
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->getPackageUserKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_70
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_93

    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_93
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 423
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 422
    invoke-virtual {p0, v2, v3, p1, v4}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 424
    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 419
    :cond_a7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot delete rules not owned by your condition provider"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_af
    move-exception p0

    .line 425
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    throw p0
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 430
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_a

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 432
    :cond_a
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 433
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_16
    if-ltz v2, :cond_3c

    .line 434
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 435
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 436
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_3c
    const/4 p1, 0x0

    .line 439
    invoke-virtual {p0, v1, p2, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_43
    move-exception p0

    .line 440
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 7

    const/4 v0, -0x1

    .line 276
    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result p2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 278
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_22

    .line 279
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_22
    move-object p1, v0

    :goto_23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public final ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1b

    if-eqz p3, :cond_1b

    .line 493
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v0, :cond_a

    goto :goto_1b

    .line 494
    :cond_a
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return p0

    .line 495
    :cond_11
    iget-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return p0

    :cond_1a
    const/4 p0, 0x1

    :cond_1b
    :goto_1b
    return p0
.end method

.method public final ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1343
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_7

    move-object v0, v1

    .line 1344
    :cond_7
    sget-object v2, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v0, v1

    .line 1349
    :cond_10
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v1

    .line 1350
    :goto_1b
    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v2, :cond_22

    const-string v0, "MANUAL_RULE"

    move-object v1, v2

    .line 1356
    :cond_22
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mStatsEventBuilderFactory:Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-virtual {v2}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;->newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    const/16 v3, 0x2764

    .line 1357
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->setAtomId(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1358
    invoke-virtual {v2, p1}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1359
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 1360
    invoke-virtual {v2, v3}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeBoolean(Z)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    iget v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1361
    invoke-virtual {v2, v4}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v2

    .line 1362
    invoke-virtual {v2, v0}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeString(Ljava/lang/String;)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object v0

    .line 1363
    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/ZenModeHelper;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeInt(I)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 1364
    invoke-virtual {p0, p1, p1}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->addBooleanAnnotation(BZ)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    move-result-object p0

    new-array p1, v3, [B

    .line 1366
    iget-object p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p2, :cond_5e

    .line 1367
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object p1

    .line 1369
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->writeByteArray([B)Lcom/android/server/notification/SysUiStatsEvent$Builder;

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/notification/SysUiStatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 5

    .line 457
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 459
    :cond_9
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 462
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRules(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Ljava/util/List;

    move-result-object p1

    .line 461
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;)V

    .line 464
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 7

    .line 445
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 448
    :cond_9
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;)V

    .line 452
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig;",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/service/notification/Condition;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_26

    .line 469
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    .line 471
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 472
    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 474
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string v1, "conditionChanged"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_d

    :cond_26
    :goto_26
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    .line 931
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 932
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 933
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 927
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p0

    return p0
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z
    .registers 12

    .line 938
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "ZenModeHelper"

    if-eqz p1, :cond_a1

    .line 940
    :try_start_9
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_a1

    .line 944
    :cond_11
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3c

    .line 946
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 947
    sget-boolean p0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p0, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setConfigLocked: store config for user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_38} :catch_9f
    .catchall {:try_start_9 .. :try_end_38} :catchall_9d

    .line 974
    :cond_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 951
    :cond_3c
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 953
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 954
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_67

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    :cond_67
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v4, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 958
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 959
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 958
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    move v4, v6

    goto :goto_7f

    :cond_7e
    move v4, v2

    .line 960
    :goto_7f
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v5}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 961
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 962
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 963
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    :cond_8f
    if-eqz v4, :cond_94

    .line 966
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 968
    :cond_94
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostApplyConfig(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    :try_end_99
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_99} :catch_9f
    .catchall {:try_start_3c .. :try_end_99} :catchall_9d

    .line 974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_9d
    move-exception p0

    goto :goto_c2

    :catch_9f
    move-exception p0

    goto :goto_b9

    .line 941
    :cond_a1
    :goto_a1
    :try_start_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid config in setConfigLocked; "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/SecurityException; {:try_start_a1 .. :try_end_b5} :catch_9f
    .catchall {:try_start_a1 .. :try_end_b5} :catchall_9d

    .line 974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_b9
    :try_start_b9
    const-string p1, "Invalid rule in config"

    .line 971
    invoke-static {v3, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_9d

    .line 974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_c2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    throw p0
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    .line 653
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 654
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "show_zen_settings_suggestion"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 661
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 663
    :cond_9
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 664
    :cond_11
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setManualZenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setRingerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_48
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_73

    .line 669
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 670
    iget-object p1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5e
    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 671
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result p4

    if-eqz p4, :cond_5e

    .line 672
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    goto :goto_5e

    .line 676
    :cond_73
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 677
    iput-boolean v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 678
    iput p1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 679
    iput-object p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 680
    iput-object p4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 681
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 683
    :cond_82
    invoke-virtual {p0, v1, p3, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    .line 684
    monitor-exit v0

    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 5

    if-eqz p1, :cond_1d

    .line 876
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_7

    goto :goto_1d

    .line 877
    :cond_7
    monitor-enter v0

    .line 878
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 879
    invoke-virtual {v1, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    const/4 p1, 0x0

    const-string/jumbo v2, "setNotificationPolicy"

    .line 880
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 881
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 3

    .line 1002
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1003
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_12

    .line 1004
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_12
    const-string/jumbo v0, "zen_mode_ringer_level"

    .line 1002
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    return-void
.end method

.method public setSuppressedEffects(J)V
    .registers 5

    .line 284
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 285
    :cond_7
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 286
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    return-void
.end method

.method public setZenModeSetting(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 992
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 993
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 203
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final showZenUpgradeNotification(I)V
    .registers 7

    .line 1543
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1545
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    const/4 v2, 0x1

    const-string/jumbo v3, "show_zen_upgrade_notification"

    const/4 v4, 0x0

    if-eqz v1, :cond_35

    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1548
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1550
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "zen_settings_updated"

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_35

    goto :goto_36

    :cond_35
    move v2, v4

    :goto_36
    if-eqz v0, :cond_41

    .line 1554
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_41
    if-eqz v2, :cond_59

    .line 1559
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x30

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->createZenUpgradeNotification()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    .line 1559
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1561
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "ZenModeHelper"

    return-object p0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .registers 12

    .line 371
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 373
    :cond_a
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "ZenModeHelper"

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutomaticZenRule zenRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    if-eqz p1, :cond_77

    .line 382
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_6f

    .line 383
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 388
    iget-boolean v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_62

    .line 389
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5e

    move v7, v6

    goto :goto_5f

    :cond_5e
    const/4 v7, 0x2

    .line 389
    :goto_5f
    invoke-virtual {p0, v4, v5, p1, v7}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V

    .line 394
    :cond_62
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 395
    iget-object p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, p3, p1, v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 384
    :cond_6f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot update rules not owned by your condition provider"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rule doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_7f
    move-exception p0

    .line 396
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public final updateConsolidatedPolicy(Ljava/lang/String;)V
    .registers 7

    .line 1083
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_5

    return-void

    .line 1084
    :cond_5
    monitor-enter v0

    .line 1085
    :try_start_6
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 1086
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_14

    .line 1087
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1090
    :cond_14
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1091
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1092
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    goto :goto_20

    .line 1095
    :cond_36
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 1096
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1097
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged()V

    .line 1099
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 1101
    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final updateDefaultAutomaticRuleNames()V
    .registers 5

    .line 1121
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1122
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1123
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040f93

    .line 1124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_c

    .line 1125
    :cond_32
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1126
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040f94

    .line 1127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_c

    :cond_4c
    return-void
.end method

.method public updateDefaultZenRules()V
    .registers 6

    .line 562
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 563
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 564
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_f

    .line 567
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-nez v3, :cond_f

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_f

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 568
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 569
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 570
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale change - updating default zen rule name from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_67
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 574
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    const-string/jumbo v3, "locale changed"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    goto :goto_f

    :cond_78
    return-void
.end method

.method public final updateRingerModeAffectedStreams()V
    .registers 1

    .line 1033
    const-class p0, Landroid/media/AudioManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_d

    .line 1035
    invoke-virtual {p0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    :cond_d
    return-void
.end method

.method public final updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    .line 500
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 501
    iput-boolean p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 502
    sget-boolean p0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Snoozing reset for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p0, 0x1

    :cond_2c
    return p0
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;ZLjava/lang/Integer;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 851
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    if-eqz p2, :cond_17

    .line 853
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v3, p4, :cond_17

    goto :goto_22

    .line 856
    :cond_17
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeXml(Landroid/util/TypedXmlSerializer;Ljava/lang/Integer;)V

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 858
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method
