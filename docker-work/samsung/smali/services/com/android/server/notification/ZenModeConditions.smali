.class public Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field public final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field public mEvaluatedUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFirstEvaluation:Z

.field public final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field public final mSubscriptions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 40
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    .line 54
    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 55
    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string p1, "countdown"

    .line 56
    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 57
    new-instance p1, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {p1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_28
    const-string/jumbo p1, "schedule"

    .line 59
    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 60
    new-instance p1, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {p1}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_39
    const-string p1, "event"

    .line 62
    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 63
    new-instance p1, Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p1}, Lcom/android/server/notification/EventConditionProvider;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 65
    :cond_49
    invoke-virtual {p2, p0}, Lcom/android/server/notification/ConditionProviders;->setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mSubscriptions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 75
    :cond_3
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_1f

    .line 76
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 77
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ZenModeHelper"

    const-string v2, "evaluateConfig: clearing manual rule"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1d
    iput-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 80
    :cond_1f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 81
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;Z)V

    .line 82
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 83
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_33

    .line 84
    invoke-virtual {p0, v2, v0, p2, p3}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;Z)V

    .line 86
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z

    goto :goto_33

    .line 93
    :cond_4c
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 94
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_57
    if-ltz v1, :cond_7e

    .line 96
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 97
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    if-eqz p3, :cond_7b

    .line 99
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 100
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    .line 101
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_7b
    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    .line 105
    :cond_7e
    monitor-exit p2
    :try_end_7f
    .catchall {:try_start_4f .. :try_end_7f} :catchall_8f

    const/4 p2, 0x0

    .line 107
    iput-boolean p2, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    .line 109
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    new-instance p2, Ljava/lang/Integer;

    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_8f
    move-exception p0

    .line 105
    :try_start_90
    monitor-exit p2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public final evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_168

    .line 140
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v0, :cond_8

    goto/16 :goto_168

    .line 141
    :cond_8
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_d

    return-void

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Lcom/android/server/notification/ConditionProviders;->getSystemProviders()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/SystemConditionProviderService;

    .line 146
    invoke-virtual {v6, v0}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 148
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.android.server.notification.ScheduleConditionProvider"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    if-eqz p4, :cond_6e

    .line 150
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 151
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    if-eqz v5, :cond_66

    const-string v7, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 152
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ne v4, v3, :cond_66

    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v4, :cond_66

    .line 153
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->isScheduleEnabled()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 154
    invoke-virtual {v6, v2}, Lcom/android/server/notification/SystemConditionProviderService;->onScheduleEnabled(Z)V

    goto :goto_6d

    .line 156
    :cond_66
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->isScheduleEnabled()Z

    move-result v4

    .line 157
    invoke-virtual {v6, v3}, Lcom/android/server/notification/SystemConditionProviderService;->onScheduleEnabled(Z)V

    :goto_6d
    move v5, v4

    .line 161
    :cond_6e
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    invoke-virtual {v4, v7, v0, v8}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 162
    invoke-virtual {v6}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move v4, v3

    goto :goto_1b

    :cond_83
    if-nez v4, :cond_bc

    .line 168
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Lcom/android/server/notification/ConditionProviders;->findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 169
    sget-boolean v6, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v6, :cond_b3

    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ensure external rule exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a0

    goto :goto_a1

    :cond_a0
    move v3, v2

    :goto_a1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    if-eqz v1, :cond_bc

    .line 171
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v6, v0, v1}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 175
    :cond_bc
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_df

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-nez v1, :cond_df

    const-string p0, "ZenModeHelper"

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No component found for automatic rule: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    return-void

    :cond_df
    if-eqz p2, :cond_e4

    .line 181
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_e4
    if-eqz p4, :cond_138

    if-eqz p3, :cond_f0

    .line 185
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f2

    :cond_f0
    if-eqz v4, :cond_138

    .line 187
    :cond_f2
    sget-boolean p2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz p2, :cond_10e

    const-string p3, "ZenModeHelper"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Subscribing to "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_10e
    iget-object p3, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p3, p4, v0, v5}, Lcom/android/server/notification/ConditionProviders;->subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;Z)Z

    move-result p3

    if-eqz p3, :cond_12b

    .line 190
    iget-object p3, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 191
    :try_start_11d
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, p4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit p3

    goto :goto_138

    :catchall_128
    move-exception p0

    monitor-exit p3
    :try_end_12a
    .catchall {:try_start_11d .. :try_end_12a} :catchall_128

    throw p0

    :cond_12b
    const/4 p3, 0x0

    .line 194
    iput-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz p2, :cond_138

    const-string p2, "ZenModeHelper"

    const-string/jumbo p3, "zmc failed to subscribe"

    .line 195
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_138
    :goto_138
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p2, :cond_168

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez p3, :cond_168

    .line 200
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ConditionProviders;->findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz p0, :cond_168

    .line 201
    sget-boolean p0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz p0, :cond_168

    const-string p0, "ZenModeHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Found existing condition for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    :goto_168
    return-void
.end method

.method public final isUserEvaluated(I)Z
    .registers 3

    .line 227
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onBootComplete()V
    .registers 1

    return-void
.end method

.method public onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 5

    .line 131
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConditionChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    .line 134
    :cond_2c
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    return-void
.end method

.method public onServiceAdded(Landroid/content/ComponentName;)V
    .registers 5

    .line 125
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceAdded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1b
    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zmc.onServiceAdded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitched()V
    .registers 1

    return-void
.end method

.method public final updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    .line 207
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 208
    iput-boolean p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 209
    sget-boolean p0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

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

.method public final updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 217
    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    if-nez v1, :cond_17

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 218
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeConditions;->isUserEvaluated(I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 219
    :cond_17
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Snoozing reset for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_33
    return v0
.end method
