.class public Lcom/android/server/am/BroadcastDispatcher$Deferrals;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deferrals"
.end annotation


# instance fields
.field public alarmCount:I

.field public final broadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public deferUntil:J

.field public deferredAt:J

.field public deferredBy:J

.field public final uid:I


# direct methods
.method public constructor <init>(IJJI)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    .line 64
    iput-wide p2, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredAt:J

    .line 65
    iput-wide p4, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    add-long/2addr p2, p4

    .line 66
    iput-wide p2, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 67
    iput p6, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/BroadcastRecord;)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    .line 84
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V
    .registers 3

    .line 90
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public isEmpty()Z
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Deferrals{uid="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deferUntil="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-wide v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", #broadcasts="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
