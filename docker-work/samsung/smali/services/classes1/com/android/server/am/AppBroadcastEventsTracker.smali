.class public final Lcom/android/server/am/AppBroadcastEventsTracker;
.super Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.source "AppBroadcastEventsTracker.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$BroadcastEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker<",
        "Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;",
        ">;",
        "Landroid/app/ActivityManagerInternal$BroadcastEventListener;"
    }
.end annotation


# static fields
.field public static final DEBUG_APP_STATE_BROADCAST_EVENT_TRACKER:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppBroadcastEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBroadcastEventsTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 3

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBroadcastEventsTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .registers 2

    .line 39
    check-cast p1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBroadcastEventsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;)Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    move-result-object p0

    return-object p0
.end method

.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;
    .registers 11

    .line 77
    new-instance v7, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 78
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->getTimeSlotSize()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    const-string v5, "ActivityManager"

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;-><init>(ILjava/lang/String;JLjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-object v7
.end method

.method public createAppStateEvents(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;)Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;
    .registers 2

    .line 83
    new-instance p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;)V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP BROADCAST EVENT TRACKER:"

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getTrackerInfoForStatsd(I)[B
    .registers 4

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 89
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->getTotalEventsLocked(IJ)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_c
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v0, 0x10500000001L

    .line 95
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 98
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .registers 1
    .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
    .end annotation

    const/4 p0, 0x6

    return p0
.end method

.method public onSendingBroadcast(Ljava/lang/String;I)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->onNewEvent(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public onSystemReady()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 72
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V

    return-void
.end method
