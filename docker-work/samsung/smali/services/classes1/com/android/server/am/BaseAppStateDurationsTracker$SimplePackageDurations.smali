.class public Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "BaseAppStateDurationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateDurationsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePackageDurations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateDurations<",
        "Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;",
        ">;"
    }
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

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 232
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)V
    .registers 2

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    return-void
.end method


# virtual methods
.method public addEvent(ZJ)V
    .registers 5

    .line 240
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    return-void
.end method

.method public formatEventTypeLabel(I)Ljava/lang/String;
    .registers 2

    const-string p0, ""

    return-object p0
.end method

.method public getTotalDurations(J)J
    .registers 4

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurationsSince(JJ)J
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 248
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public isActive()Z
    .registers 2

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result p0

    return p0
.end method
