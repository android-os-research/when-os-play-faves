.class public final Lcom/android/server/job/controllers/UidRestrictController;
.super Lcom/android/server/job/controllers/StateController;
.source "UidRestrictController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;
    }
.end annotation


# static fields
.field public static final ACTION_JOB_RESTRICT_UID:Ljava/lang/String; = "android.intent.ACTION_JOB_RESTRICT_UID"

.field public static final DEBUG:Z

.field public static final EXTRA_NAME_RESTRICT:Ljava/lang/String; = "restrict"

.field public static final EXTRA_NAME_UID:Ljava/lang/String; = "uid"

.field public static final TAG:Ljava/lang/String; = "JobScheduler.UidRestrict"

.field public static final sIgnoreUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mListener:Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;

.field public final mRestrictedUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrackedTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/UidRestrictController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 41
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    const/4 v0, 0x3

    const-string v3, "JobScheduler.UidRestrict"

    .line 42
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/android/server/job/controllers/UidRestrictController;->DEBUG:Z

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x3e8

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/job/controllers/UidRestrictController;->sIgnoreUids:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    .line 45
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController;->mListener:Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;

    .line 59
    new-instance p1, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;-><init>(Lcom/android/server/job/controllers/UidRestrictController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController;->mListener:Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->startTracking()V

    return-void
.end method

.method public static isUidIgnored(I)Z
    .registers 2

    .line 53
    sget-object v0, Lcom/android/server/job/controllers/UidRestrictController;->sIgnoreUids:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Restricted uids: "

    .line 160
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 164
    :cond_2c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Tracking jobs:"

    .line 166
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 169
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    :goto_80
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 172
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 173
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto :goto_aa

    :cond_93
    const-string v3, "  --#"

    .line 176
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v3, " from "

    .line 178
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 180
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_ad
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b0000000aL

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 192
    iget-object v2, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 194
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    .line 195
    :goto_30
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 196
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 197
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    goto :goto_79

    :cond_43
    const-wide v6, 0x20b00000005L

    .line 200
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10b00000001L

    .line 201
    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v8, 0x10500000002L

    .line 203
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 202
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000003L

    .line 204
    iget-object v10, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    .line 205
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 204
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 206
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 211
    :cond_7c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 212
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 65
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    .line 66
    invoke-static {p2}, Lcom/android/server/job/controllers/UidRestrictController;->isUidIgnored(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 67
    :cond_b
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 68
    iget-object v2, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_2d

    .line 70
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 71
    iget-object v3, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2d
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x80

    .line 74
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 75
    iget-object p0, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 76
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setUidRestrictConstraintSatisfied(JZ)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 4

    const/16 p2, 0x80

    .line 81
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 82
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p2

    .line 83
    iget-object p0, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1d

    .line 85
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method public setUidRestrictedLocked(IZ)Z
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, p2, :cond_26

    const/4 v0, 0x1

    if-eqz p2, :cond_19

    .line 96
    iget-object p2, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 98
    :cond_19
    iget-object p2, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 100
    :goto_22
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/UidRestrictController;->updateUidRestrictConstraintUidLocked(I)V

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public final updateUidRestrictConstraintUidLocked(I)V
    .registers 8

    .line 106
    iget-object v0, p0, Lcom/android/server/job/controllers/UidRestrictController;->mTrackedTasks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 107
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v0, :cond_47

    .line 109
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 110
    iget-object v4, p0, Lcom/android/server/job/controllers/UidRestrictController;->mRestrictedUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 111
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/job/controllers/JobStatus;->setUidRestrictConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 113
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 117
    :cond_47
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_52

    .line 118
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_52
    return-void
.end method
