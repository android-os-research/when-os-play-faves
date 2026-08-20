.class public Lcom/android/server/people/data/UsageStatsQueryHelper;
.super Ljava/lang/Object;
.source "UsageStatsQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;
    }
.end annotation


# instance fields
.field public final mConvoStartEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field public final mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

.field public mLastEventTimestamp:J

.field public final mPackageDataGetter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$nZ7shENcp4iWnNqD1CZXYLmDuLs(Ljava/lang/String;)Lcom/android/server/people/data/AppUsageStatsData;
    .registers 1

    invoke-static {p0}, Lcom/android/server/people/data/UsageStatsQueryHelper;->lambda$queryAppUsageStats$0(Ljava/lang/String;)Lcom/android/server/people/data/AppUsageStatsData;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;",
            "Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    .line 60
    invoke-static {}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 61
    iput p1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    .line 62
    iput-object p2, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Ljava/util/function/Function;

    .line 63
    iput-object p3, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

    return-void
.end method

.method public static getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    .line 232
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method public static synthetic lambda$queryAppUsageStats$0(Ljava/lang/String;)Lcom/android/server/people/data/AppUsageStatsData;
    .registers 1

    .line 165
    new-instance p0, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-direct {p0}, Lcom/android/server/people/data/AppUsageStatsData;-><init>()V

    return-object p0
.end method

.method public static queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    const/16 v7, 0xa

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/UsageStatsManagerInternal;->queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 136
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 137
    new-instance p1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 139
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_15

    .line 140
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2e
    return-object v0
.end method

.method public static queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v7, 0x0

    move v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object p0

    .line 157
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    if-nez p0, :cond_15

    return-object p1

    .line 161
    :cond_15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageStats;

    .line 162
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 163
    invoke-interface {p5, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 164
    new-instance p4, Lcom/android/server/people/data/UsageStatsQueryHelper$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/android/server/people/data/UsageStatsQueryHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/people/data/AppUsageStatsData;

    .line 166
    iget-object p4, p2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-static {p4}, Lcom/android/server/people/data/UsageStatsQueryHelper;->sumChooserCounts(Landroid/util/ArrayMap;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/android/server/people/data/AppUsageStatsData;->incrementChosenCountBy(I)V

    .line 167
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getAppLaunchCount()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/server/people/data/AppUsageStatsData;->incrementLaunchCountBy(I)V

    goto :goto_19

    :cond_4b
    return-object p1
.end method

.method public static sumChooserCounts(Landroid/util/ArrayMap;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 178
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_a
    if-ge v2, v1, :cond_2d

    .line 180
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_15

    goto :goto_2a

    .line 184
    :cond_15
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_1a
    if-ge v6, v5, :cond_2a

    .line 186
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2d
    return v3
.end method


# virtual methods
.method public final addEventByLocusId(Lcom/android/server/people/data/PackageData;Landroid/content/LocusId;Lcom/android/server/people/data/Event;)V
    .registers 7

    .line 221
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 225
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v1

    const/4 v2, 0x1

    .line 226
    invoke-virtual {p2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {v1, v2, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p2

    .line 227
    invoke-virtual {p2, p3}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

    invoke-interface {p0, p1, v0, p3}, Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public final addEventByShortcutId(Lcom/android/server/people/data/PackageData;Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .registers 7

    .line 209
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 213
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p2

    .line 215
    invoke-virtual {p2, p3}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 216
    iget-object p0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;

    invoke-interface {p0, p1, v0, p3}, Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public getLastEventTimestamp()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    return-wide v0
.end method

.method public final onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V
    .registers 9

    .line 194
    new-instance v0, Landroid/content/ComponentName;

    .line 195
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    if-eqz v0, :cond_50

    .line 197
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_24

    goto :goto_50

    .line 200
    :cond_24
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 201
    new-instance p2, Lcom/android/server/people/data/Event$Builder;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    const/16 v5, 0xd

    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 202
    invoke-virtual {p2, v1}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object p2

    .line 203
    invoke-virtual {p2}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object p2

    .line 204
    new-instance v1, Landroid/content/LocusId;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->addEventByLocusId(Lcom/android/server/people/data/PackageData;Landroid/content/LocusId;Lcom/android/server/people/data/Event;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public querySince(J)Z
    .registers 10

    .line 73
    iget-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide v2, p1

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/UsageStatsManagerInternal;->queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_12

    return p2

    :cond_12
    const/4 v0, 0x1

    .line 79
    :goto_13
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 80
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 81
    invoke-virtual {p1, p2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 84
    iget-wide v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    .line 85
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/PackageData;

    if-nez v2, :cond_3c

    goto :goto_97

    .line 90
    :cond_3c
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_94

    const/16 v4, 0x8

    if-eq v3, v4, :cond_83

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_54

    const/16 v1, 0x17

    if-eq v3, v1, :cond_94

    const/16 v1, 0x18

    if-eq v3, v1, :cond_94

    goto :goto_97

    .line 96
    :cond_54
    invoke-virtual {p0, v2, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    .line 97
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_67

    new-instance v3, Landroid/content/LocusId;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    if-eqz v3, :cond_97

    .line 99
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 101
    new-instance v2, Landroid/content/ComponentName;

    .line 102
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 92
    :cond_83
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/server/people/data/Event;

    .line 93
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 92
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/people/data/UsageStatsQueryHelper;->addEventByShortcutId(Lcom/android/server/people/data/PackageData;Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    goto :goto_97

    .line 110
    :cond_94
    invoke-virtual {p0, v2, p2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    :cond_97
    :goto_97
    move p2, v0

    goto/16 :goto_13

    :cond_9a
    return p2
.end method
