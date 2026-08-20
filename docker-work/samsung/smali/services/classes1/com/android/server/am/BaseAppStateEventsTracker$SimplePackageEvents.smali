.class public Lcom/android/server/am/BaseAppStateEventsTracker$SimplePackageEvents;
.super Lcom/android/server/am/BaseAppStateTimeEvents;
.source "BaseAppStateEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateEventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePackageEvents"
.end annotation


# static fields
.field public static final DEFAULT_INDEX:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 10

    const/4 v3, 0x1

    const-string v4, "ActivityManager"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 296
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateTimeEvents;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 297
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method


# virtual methods
.method public formatEventTypeLabel(I)Ljava/lang/String;
    .registers 2

    const-string p0, ""

    return-object p0
.end method

.method public getTotalEvents(J)J
    .registers 4

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/BaseAppStateEvents;->getTotalEvents(JI)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getTotalEventsSince(JJ)J
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 305
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateTimeEvents;->getTotalEventsSince(JJI)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
