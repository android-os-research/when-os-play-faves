.class public Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsageStatsQueryRunnable"
.end annotation


# instance fields
.field public mLastEventTimestamp:J

.field public final mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$L5c-F-8UvApPv_gRgMAwxjuR5IM(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;ILjava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->lambda$new$0(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .registers 5

    .line 1305
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object p1

    new-instance v0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;I)V

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/people/data/DataManager$Injector;->createUsageStatsQueryHelper(ILjava/util/function/Function;Lcom/android/server/people/data/UsageStatsQueryHelper$EventListener;)Lcom/android/server/people/data/UsageStatsQueryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x493e0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$UsageStatsQueryRunnable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method

.method private synthetic lambda$new$0(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;
    .registers 3

    .line 1307
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V
    .registers 6

    .line 1321
    invoke-virtual {p3}, Lcom/android/server/people/data/Event;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2a

    .line 1323
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0, p2}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1324
    invoke-virtual {p3}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p2

    .line 1325
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    .line 1326
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p3

    .line 1328
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p1

    .line 1326
    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    :cond_2a
    return-void
.end method

.method public run()V
    .registers 4

    .line 1313
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/UsageStatsQueryHelper;->querySince(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1314
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-virtual {v0}, Lcom/android/server/people/data/UsageStatsQueryHelper;->getLastEventTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    :cond_12
    return-void
.end method
