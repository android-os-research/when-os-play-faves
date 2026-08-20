.class public abstract Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "BaseAppStateEventsTracker.java"

# interfaces
.implements Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateEventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAppStateEventsPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/android/server/am/BaseAppStateEventsTracker;",
        ">",
        "Lcom/android/server/am/BaseAppStatePolicy<",
        "TV;>;",
        "Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;"
    }
.end annotation


# instance fields
.field public final mDefaultMaxTrackingDuration:J

.field public final mKeyMaxTrackingDuration:Ljava/lang/String;

.field public volatile mMaxTrackingDuration:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "*>;TV;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 233
    iput-object p5, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    .line 234
    iput-wide p6, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mDefaultMaxTrackingDuration:J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 278
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 280
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    .line 282
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 283
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    :cond_1b
    return-void
.end method

.method public getExemptionReasonString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .line 273
    invoke-static {p3}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxTrackingDuration()J
    .registers 3

    .line 269
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    return-wide v0
.end method

.method public abstract onMaxTrackingDurationChanged(J)V
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->updateMaxTrackingDuration()V

    goto :goto_f

    .line 242
    :cond_c
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 248
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 249
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->updateMaxTrackingDuration()V

    return-void
.end method

.method public updateMaxTrackingDuration()V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mDefaultMaxTrackingDuration:J

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 261
    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    .line 262
    iput-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onMaxTrackingDurationChanged(J)V

    :cond_15
    return-void
.end method
