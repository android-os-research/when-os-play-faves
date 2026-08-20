.class public Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;
.super Ljava/lang/Object;
.source "BaseAppStateTimeEvents.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateTimeEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseTimeEvent"
.end annotation


# instance fields
.field public mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;)V
    .registers 4

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-wide v0, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 126
    new-instance v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 134
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    if-eq v1, v2, :cond_d

    return v0

    .line 137
    :cond_d
    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v1, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-wide p0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public trimTo(J)V
    .registers 3

    .line 117
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    return-void
.end method
