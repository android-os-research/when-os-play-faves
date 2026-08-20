.class public Lcom/android/server/remoteappmode/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;
    }
.end annotation


# static fields
.field public static CAPACITY_LOG:I = 0xc8

.field public static CAPACITY_STATE:I = 0x64

.field public static sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/remoteappmode/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/remoteappmode/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 19
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/remoteappmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 20
    new-instance v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/remoteappmode/Log;->CAPACITY_LOG:I

    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 22
    new-instance v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/remoteappmode/Log;->CAPACITY_STATE:I

    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/remoteappmode/Log;->sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/server/remoteappmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 97
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

    .line 95
    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x44

    .line 39
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x44

    .line 44
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 4

    const/16 v0, 0x56

    const-string v1, "[RAMS]StateStart"

    const-string v2, "=========================================================================="

    .line 30
    invoke-static {v0, v1, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/android/server/remoteappmode/Log;->sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[RAMS]StateEnd"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "[RAMS]SavedLogsStart"

    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[RAMS]SavedLogsEnd"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x45

    .line 49
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x45

    .line 54
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x49

    .line 59
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x49

    .line 64
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static save(CLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 90
    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x56

    .line 69
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x56

    .line 74
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x57

    .line 79
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x57

    .line 84
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
