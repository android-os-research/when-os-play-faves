.class public final Lcom/android/server/am/AppBroadcastEventsTracker$AppBroadcastEventsPolicy;
.super Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;
.source "AppBroadcastEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBroadcastEventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBroadcastEventsPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<",
        "Lcom/android/server/am/AppBroadcastEventsTracker;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_BG_BROADCAST_MONITOR_ENABLED:Z = true

.field public static final DEFAULT_BG_BROADCAST_WINDOW:J = 0x5265c00L

.field public static final DEFAULT_BG_EX_BROADCAST_THRESHOLD:I = 0x2710

.field public static final KEY_BG_BROADCAST_MONITOR_ENABLED:Ljava/lang/String; = "bg_broadcast_monitor_enabled"

.field public static final KEY_BG_BROADCAST_WINDOW:Ljava/lang/String; = "bg_broadcast_window"

.field public static final KEY_BG_EX_BROADCAST_THRESHOLD:Ljava/lang/String; = "bg_ex_broadcast_threshold"


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBroadcastEventsTracker;)V
    .registers 13

    const-string v3, "bg_broadcast_monitor_enabled"

    const/4 v4, 0x1

    const-string v5, "bg_broadcast_window"

    const-wide/32 v6, 0x5265c00

    const-string v8, "bg_ex_broadcast_threshold"

    const/16 v9, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 147
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 160
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP BROADCAST EVENT TRACKER POLICY SETTINGS:"

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .registers 1

    const-string p0, "broadcast"

    return-object p0
.end method
