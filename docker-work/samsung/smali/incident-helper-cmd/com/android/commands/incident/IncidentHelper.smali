.class public Lcom/android/commands/incident/IncidentHelper;
.super Ljava/lang/Object;
.source "IncidentHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IncidentHelper"

.field private static sLog:Z


# instance fields
.field private final mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArgsIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/commands/incident/IncidentHelper;->sLog:Z

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "args"    # [Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/incident/IncidentHelper;->mArgs:Ljava/util/List;

    .line 42
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    .line 43
    return-void
.end method

.method private static getSection(Ljava/lang/String;)Lcom/android/commands/incident/Section;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 72
    const-string v0, "persisted_logs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 73
    new-instance v0, Lcom/android/commands/incident/sections/PersistLogSection;

    invoke-direct {v0}, Lcom/android/commands/incident/sections/PersistLogSection;-><init>()V

    return-object v0

    .line 75
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-boolean v0, Lcom/android/commands/incident/IncidentHelper;->sLog:Z

    if-eqz v0, :cond_23

    .line 92
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_23
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 102
    const-string v0, "Error: "

    const-string v1, "IncidentHelper"

    array-length v2, p0

    if-nez v2, :cond_10

    .line 103
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v2}, Lcom/android/commands/incident/IncidentHelper;->showUsage(Ljava/io/PrintStream;)V

    .line 104
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 106
    :cond_10
    new-instance v2, Lcom/android/commands/incident/IncidentHelper;

    invoke-direct {v2, p0}, Lcom/android/commands/incident/IncidentHelper;-><init>([Ljava/lang/String;)V

    .line 108
    .local v2, "incidentHelper":Lcom/android/commands/incident/IncidentHelper;
    :try_start_15
    invoke-direct {v2, p0}, Lcom/android/commands/incident/IncidentHelper;->run([Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_18} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 122
    :cond_18
    :goto_18
    goto :goto_43

    .line 116
    :catch_19
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 118
    sget-boolean v4, Lcom/android/commands/incident/IncidentHelper;->sLog:Z

    if-eqz v4, :cond_26

    .line 119
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_43

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v4}, Lcom/android/commands/incident/IncidentHelper;->showUsage(Ljava/io/PrintStream;)V

    .line 111
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 112
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/IllegalArgumentException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 113
    sget-boolean v4, Lcom/android/commands/incident/IncidentHelper;->sLog:Z

    if-eqz v4, :cond_18

    .line 114
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 123
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_43
    return-void
.end method

.method private nextArgRequired()Ljava/lang/String;
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 83
    iget-object v0, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 80
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arg required after \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/incident/IncidentHelper;->mArgs:Ljava/util/List;

    iget-object v3, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    .line 81
    invoke-interface {v3}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private run([Ljava/lang/String;)V
    .registers 9
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/incident/ExecutionException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "section":Lcom/android/commands/incident/Section;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "sectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    iget-object v2, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 55
    iget-object v2, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "-l"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "IncidentHelper"

    if-eqz v3, :cond_46

    .line 57
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/commands/incident/IncidentHelper;->sLog:Z

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Args: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-static {v5, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v2    # "arg":Ljava/lang/String;
    goto :goto_6

    .line 59
    .restart local v2    # "arg":Ljava/lang/String;
    :cond_46
    const-string v3, "run"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 60
    invoke-direct {p0}, Lcom/android/commands/incident/IncidentHelper;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/commands/incident/IncidentHelper;->getSection(Ljava/lang/String;)Lcom/android/commands/incident/Section;

    move-result-object v0

    .line 61
    iget-object v3, p0, Lcom/android/commands/incident/IncidentHelper;->mArgsIterator:Ljava/util/ListIterator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/commands/incident/IncidentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/commands/incident/IncidentHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 62
    goto :goto_7c

    .line 64
    :cond_64
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 68
    .end local v2    # "arg":Ljava/lang/String;
    :cond_7c
    :goto_7c
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0, v2, v3, v1}, Lcom/android/commands/incident/Section;->run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method private static showUsage(Ljava/io/PrintStream;)V
    .registers 2
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 46
    const-string v0, "This command is not designed to be run manually."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    const-string v0, "Usage:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    const-string v0, "  run [sectionName]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    return-void
.end method
