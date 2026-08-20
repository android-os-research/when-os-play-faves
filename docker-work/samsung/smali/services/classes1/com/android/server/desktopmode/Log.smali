.class public Lcom/android/server/desktopmode/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
    }
.end annotation


# static fields
.field public static final CAPACITY_LOG:I

.field public static final CAPACITY_STATE:I = 0x64

.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/desktopmode/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/desktopmode/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEPARATOR:Ljava/lang/String; = "=========================================================================="


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 18
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x12c

    goto :goto_9

    :cond_7
    const/16 v0, 0xc8

    :goto_9
    sput v0, Lcom/android/server/desktopmode/Log;->CAPACITY_LOG:I

    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 20
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 21
    new-instance v1, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v1, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 23
    new-instance v0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

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

    .line 109
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 110
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

    .line 108
    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x44

    .line 41
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x44

    .line 46
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 4

    const/16 v0, 0x56

    const-string v1, "[DMS]StateStart"

    const-string v2, "=========================================================================="

    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[DMS]StateEnd"

    .line 34
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "[DMS]SavedLogsStart"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[DMS]SavedLogsEnd"

    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x45

    .line 51
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x45

    .line 56
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x49

    .line 61
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x49

    .line 66
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static save(CLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 103
    sget-object v0, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    .registers 5

    .line 98
    sget-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(enter) State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", blocked by "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x57

    const-string v1, "[DMS]State"

    invoke-static {p1, v1, p0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static saveState(Lcom/android/server/desktopmode/State;ZZ)V
    .registers 6

    .line 91
    sget-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_11

    const-string p1, "enter"

    goto :goto_13

    :cond_11
    const-string p1, "exit"

    .line 92
    :goto_13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string p1, ", successful)"

    goto :goto_1d

    :cond_1b
    const-string p1, ")"

    .line 93
    :goto_1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " State="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x44

    const-string p2, "[DMS]State"

    .line 91
    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x56

    .line 71
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x56

    .line 76
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x57

    .line 81
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x57

    .line 86
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
