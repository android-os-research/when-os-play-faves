.class public final Lcom/android/server/am/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserState$KeyEvictedCallback;
    }
.end annotation


# static fields
.field public static final STATE_BOOTING:I = 0x0

.field public static final STATE_RUNNING_LOCKED:I = 0x1

.field public static final STATE_RUNNING_UNLOCKED:I = 0x3

.field public static final STATE_RUNNING_UNLOCKING:I = 0x2

.field public static final STATE_SHUTDOWN:I = 0x5

.field public static final STATE_STOPPING:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public lastState:I

.field public mBootProgressLogs:Ljava/lang/StringBuffer;

.field public final mHandle:Landroid/os/UserHandle;

.field public final mKeyEvictedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState$KeyEvictedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mProviderLastReportedFg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mStopCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IStopUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

.field public state:I

.field public switching:Z


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/server/am/UserState;->state:I

    .line 61
    iput v0, p0, Lcom/android/server/am/UserState;->lastState:I

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc00

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mBootProgressLogs:Ljava/lang/StringBuffer;

    .line 79
    iput-object p1, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 80
    new-instance v0, Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/internal/util/ProgressReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    return-void
.end method

.method public static stateToProtoEnum(I)I
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    return p0

    :cond_12
    return v0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "SHUTDOWN"

    return-object p0

    :cond_19
    const-string p0, "STOPPING"

    return-object p0

    :cond_1c
    const-string p0, "RUNNING_UNLOCKED"

    return-object p0

    :cond_1f
    const-string p0, "RUNNING_UNLOCKING"

    return-object p0

    :cond_22
    const-string p0, "RUNNING_LOCKED"

    return-object p0

    :cond_25
    const-string p0, "BOOTING"

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "state="

    .line 145
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-boolean p0, p0, Lcom/android/server/am/UserState;->switching:Z

    if-eqz p0, :cond_1b

    const-string p0, " SWITCHING"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    :cond_1b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 151
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 152
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {v0}, Lcom/android/server/am/UserState;->stateToProtoEnum(I)I

    move-result v0

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 153
    iget-boolean p0, p0, Lcom/android/server/am/UserState;->switching:Z

    const-wide v0, 0x10800000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 154
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getBootProgressBuilder()Ljava/lang/StringBuffer;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/am/UserState;->mBootProgressLogs:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public getBootProgressLog()Ljava/lang/String;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/am/UserState;->mBootProgressLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object p0, p0, Lcom/android/server/am/UserState;->mBootProgressLogs:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object v0
.end method

.method public isBootLogPrinted()Z
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/server/am/UserState;->mBootProgressLogs:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public setState(I)V
    .registers 8

    .line 100
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    if-ne p1, v0, :cond_5

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 104
    iget v1, p0, Lcom/android/server/am/UserState;->state:I

    const-string v2, " "

    const-wide/16 v3, 0x40

    if-eqz v1, :cond_2e

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/am/UserState;->state:I

    .line 106
    invoke-static {v5}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v3, v4, v1, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_2e
    const/4 v1, 0x5

    if-eq p1, v1, :cond_4a

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v3, v4, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 112
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 113
    invoke-static {v2}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    .line 112
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {v0, p1}, Lcom/android/server/am/EventLogTags;->writeAmUserStateChanged(II)V

    .line 115
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    iput v0, p0, Lcom/android/server/am/UserState;->lastState:I

    .line 116
    iput p1, p0, Lcom/android/server/am/UserState;->state:I

    return-void
.end method

.method public setState(II)Z
    .registers 4

    .line 84
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    if-ne v0, p1, :cond_9

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserState;->setState(I)V

    const/4 p0, 0x1

    return p0

    .line 88
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was in state "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {p0}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    .line 88
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "!@Boot: setStateFail, finishUserUnlocking"

    .line 92
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UserState: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserState;->state:I

    invoke-static {v1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UserState;->lastState:I

    .line 160
    invoke-static {v1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", switching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/UserState;->switching:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
