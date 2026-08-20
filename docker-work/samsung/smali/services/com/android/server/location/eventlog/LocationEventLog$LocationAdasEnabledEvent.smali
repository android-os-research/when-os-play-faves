.class public final Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationAdasEnabledEvent"
.end annotation


# instance fields
.field public final mEnabled:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mUserId:I

    .line 501
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adas location [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mEnabled:Z

    if-eqz p0, :cond_1b

    const-string p0, "enabled"

    goto :goto_1d

    :cond_1b
    const-string p0, "disabled"

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
