.class public Lcom/android/server/people/data/PackageData;
.super Ljava/lang/Object;
.source "PackageData.java"


# instance fields
.field public final mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field public final mEventStore:Lcom/android/server/people/data/EventStore;

.field public final mIsDefaultDialerPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageDataDir:Ljava/io/File;

.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$czLru6m5vyWM8PdERwrXKJHYDpY(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fPPrQAV2fImh83uG-ng6QcMMbKc(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uQ-PMHA76oqan6reog2HrYjKxG0(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yM9IJlTSElF08ckdpX52LjdwW7A(Lcom/android/server/people/data/PackageData;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/PackageData;->lambda$pruneOrphanEvents$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 70
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    .line 71
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 73
    new-instance p1, Lcom/android/server/people/data/ConversationStore;

    invoke-direct {p1, p2, p5}, Lcom/android/server/people/data/ConversationStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 74
    new-instance p1, Lcom/android/server/people/data/EventStore;

    invoke-direct {p1, p2, p5}, Lcom/android/server/people/data/EventStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 75
    iput-object p3, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 76
    iput-object p4, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method private synthetic lambda$pruneOrphanEvents$0(Ljava/lang/String;)Z
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$pruneOrphanEvents$1(Ljava/lang/String;)Z
    .registers 3

    .line 245
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    new-instance v0, Landroid/content/LocusId;

    invoke-direct {v0, p1}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private synthetic lambda$pruneOrphanEvents$2(Ljava/lang/String;)Z
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$pruneOrphanEvents$3(Ljava/lang/String;)Z
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    new-instance v1, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 95
    :cond_13
    array-length v10, v1

    const/4 v2, 0x0

    move v11, v2

    :goto_16
    if-ge v11, v10, :cond_39

    aget-object v12, v1, v11

    .line 96
    new-instance v13, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v13

    move v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    .line 99
    invoke-virtual {v13}, Lcom/android/server/people/data/PackageData;->loadFromDisk()V

    .line 100
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_39
    return-object v0
.end method


# virtual methods
.method public deleteDataForConversation(Ljava/lang/String;)V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 224
    :cond_9
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 226
    iget-object p1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x1

    .line 227
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1, v1, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 229
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 231
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 232
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 234
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 235
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    :cond_45
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public forAllConversations(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .registers 3

    .line 192
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p0

    if-eqz p0, :cond_c

    goto :goto_11

    .line 194
    :cond_c
    new-instance p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {p0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    :goto_11
    return-object p0
.end method

.method public getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getConversationStore()Lcom/android/server/people/data/ConversationStore;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object p0
.end method

.method public getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .registers 6

    .line 146
    new-instance v0, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    .line 153
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 159
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 161
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x1

    .line 162
    invoke-virtual {p1}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {v2, v3, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 164
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 168
    :cond_34
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    return-object v0

    .line 172
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 173
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 176
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 179
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 180
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object p0

    if-eqz p0, :cond_67

    .line 183
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    :cond_67
    return-object v0
.end method

.method public getEventStore()Lcom/android/server/people/data/EventStore;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 122
    iget p0, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    return p0
.end method

.method public isDefaultDialer()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDefaultSmsApp()Z
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final loadFromDisk()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->loadConversationsFromDisk()V

    .line 107
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p0}, Lcom/android/server/people/data/EventStore;->loadFromDisk()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->onDestroy()V

    .line 259
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    return-void
.end method

.method public pruneOrphanEvents()V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 247
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 250
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 251
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x3

    new-instance v2, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    :cond_38
    return-void
.end method

.method public saveToDisk()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->saveConversationsToDisk()V

    .line 113
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p0}, Lcom/android/server/people/data/EventStore;->saveToDisk()V

    return-void
.end method
