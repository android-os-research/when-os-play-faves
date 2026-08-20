.class Lcom/android/commands/uiautomator/Launcher$1;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uiautomator/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .registers 2

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 12
    .param p1, "args"    # [Ljava/lang/String;

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: uiautomator <subcommand> [options]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Available subcommands:\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/android/commands/uiautomator/Launcher;->-$$Nest$sfgetCOMMANDS()[Lcom/android/commands/uiautomator/Launcher$Command;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_48

    aget-object v4, v0, v3

    .line 105
    .local v4, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v4}, Lcom/android/commands/uiautomator/Launcher$Command;->shortHelp()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "shortHelp":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/commands/uiautomator/Launcher$Command;->detailedOptions()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "detailedOptions":Ljava/lang/String;
    if-nez v5, :cond_25

    .line 108
    const-string v5, ""

    .line 110
    :cond_25
    if-nez v6, :cond_29

    .line 111
    const-string v6, ""

    .line 113
    :cond_29
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const-string v9, "%s: %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    .end local v4    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    .end local v5    # "shortHelp":Ljava/lang/String;
    .end local v6    # "detailedOptions":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 116
    :cond_48
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 125
    const-string v0, "displays help message"

    return-object v0
.end method
