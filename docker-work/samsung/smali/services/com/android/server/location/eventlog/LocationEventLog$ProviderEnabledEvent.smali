.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderEnabledEvent"
.end annotation


# instance fields
.field public final mEnabled:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 266
    iput p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mUserId:I

    .line 267
    iput-boolean p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;->mEnabled:Z

    if-eqz p0, :cond_20

    const-string p0, "enabled"

    goto :goto_22

    :cond_20
    const-string p0, "disabled"

    .line 273
    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
