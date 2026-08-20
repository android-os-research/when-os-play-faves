.class Lcom/android/commands/svc/Svc$1;
.super Lcom/android/commands/svc/Svc$Command;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/svc/Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/android/commands/svc/Svc$1;->shortHelp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 13
    .param p1, "args"    # [Ljava/lang/String;

    .line 67
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_17

    .line 68
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/android/commands/svc/Svc;->-$$Nest$smlookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v0

    .line 69
    .local v0, "c":Lcom/android/commands/svc/Svc$Command;
    if-eqz v0, :cond_17

    .line 70
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/android/commands/svc/Svc$Command;->longHelp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void

    .line 75
    .end local v0    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_17
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Available commands:"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    array-length v0, v0

    .line 77
    .local v0, "N":I
    const/4 v3, 0x0

    .line 78
    .local v3, "maxlen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v0, :cond_37

    .line 79
    sget-object v5, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v5, v5, v4

    .line 80
    .local v5, "c":Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v5}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 81
    .local v6, "len":I
    if-ge v3, v6, :cond_34

    .line 82
    move v3, v6

    .line 78
    .end local v5    # "c":Lcom/android/commands/svc/Svc$Command;
    .end local v6    # "len":I
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 85
    .end local v4    # "i":I
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    %-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s    %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "format":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_51
    if-ge v5, v0, :cond_72

    .line 87
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v6, v6, v5

    .line 88
    .local v6, "c":Lcom/android/commands/svc/Svc$Command;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6}, Lcom/android/commands/svc/Svc$Command;->shortHelp()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    .end local v6    # "c":Lcom/android/commands/svc/Svc$Command;
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 90
    .end local v5    # "i":I
    :cond_72
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "Show information about the subcommands"

    return-object v0
.end method
