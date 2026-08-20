.class Lcom/android/server/people/data/DataManager$Injector;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCallLogQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/CallLogQueryHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Lcom/android/server/people/data/CallLogQueryHelper;"
        }
    .end annotation

    .line 1446
    new-instance p0, Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/CallLogQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;
    .registers 2

    .line 1441
    new-instance p0, Lcom/android/server/people/data/ContactsQueryHelper;

    invoke-direct {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createMmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/MmsQueryHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Lcom/android/server/people/data/MmsQueryHelper;"
        }
    .end annotation

    .line 1451
    new-instance p0, Lcom/android/server/people/data/MmsQueryHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/MmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1433
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public createSmsQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/SmsQueryHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Lcom/android/server/people/data/SmsQueryHelper;"
        }
    .end annotation

    .line 1456
    new-instance p0, Lcom/android/server/people/data/SmsQueryHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/SmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public createUsageStatsQueryHelper(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)Lcom/android/server/people/data/UsageStatsQueryHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;",
            "Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;",
            ")",
            "Lcom/android/server/people/data/UsageStatsQueryHelper;"
        }
    .end annotation

    .line 1462
    new-instance p0, Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/UsageStatsQueryHelper;-><init>(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)V

    return-object p0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1437
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
