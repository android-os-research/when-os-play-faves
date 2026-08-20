.class public Lcom/android/server/multicontrol/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/multicontrol/Log$EvictingArrayQueue;
    }
.end annotation


# static fields
.field public static CAPACITY_LOG:I = 0xc8

.field public static CAPACITY_STATE:I = 0x64

.field public static sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/multicontrol/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/multicontrol/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 22
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/multicontrol/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 23
    new-instance v0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/multicontrol/Log;->CAPACITY_LOG:I

    invoke-direct {v0, v1}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 25
    new-instance v0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/multicontrol/Log;->CAPACITY_STATE:I

    invoke-direct {v0, v1}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/multicontrol/Log;->sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/server/multicontrol/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const/4 p0, 0x5

    aput-object p1, v0, p0

    const/4 p0, 0x6

    aput-object p2, v0, p0

    const/4 p0, 0x0

    const-string p1, "%s %5d %5d %5d %c %s: %s"

    .line 98
    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x44

    .line 42
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x44

    .line 47
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 4

    const/16 v0, 0x56

    const-string v1, "MultiControl@StateStart"

    const-string v2, "=========================================================================="

    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/android/server/multicontrol/Log;->sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "MultiControl@StateEnd"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "MultiControl@SavedLogsStart"

    .line 36
    invoke-static {v0, v1, v2}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "MultiControl@SavedLogsEnd"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x45

    .line 52
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x45

    .line 57
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x49

    .line 62
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x49

    .line 67
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static save(CLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 93
    sget-object v0, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x56

    .line 72
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x56

    .line 77
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x57

    .line 82
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x57

    .line 87
    invoke-static {v0, p0, p1}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
