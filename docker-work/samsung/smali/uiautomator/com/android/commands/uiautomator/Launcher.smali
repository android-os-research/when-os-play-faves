.class public Lcom/android/commands/uiautomator/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uiautomator/Launcher$Command;
    }
.end annotation


# static fields
.field private static COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

.field private static HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOMMANDS()[Lcom/android/commands/uiautomator/Launcher$Command;
    .registers 1

    sget-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 99
    new-instance v0, Lcom/android/commands/uiautomator/Launcher$1;

    const-string v1, "help"

    invoke-direct {v0, v1}, Lcom/android/commands/uiautomator/Launcher$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    .line 129
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/commands/uiautomator/Launcher$Command;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/uiautomator/RunTestCommand;

    invoke-direct {v0}, Lcom/android/commands/uiautomator/RunTestCommand;-><init>()V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/uiautomator/DumpCommand;

    invoke-direct {v0}, Lcom/android/commands/uiautomator/DumpCommand;-><init>()V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/uiautomator/EventsCommand;

    invoke-direct {v0}, Lcom/android/commands/uiautomator/EventsCommand;-><init>()V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCommand(Ljava/lang/String;)Lcom/android/commands/uiautomator/Launcher$Command;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/commands/uiautomator/Launcher;->COMMANDS:[Lcom/android/commands/uiautomator/Launcher$Command;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 92
    .local v3, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v3}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 93
    return-object v3

    .line 91
    .end local v3    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 96
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 74
    const-string v0, "uiautomator"

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 75
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    .line 76
    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/commands/uiautomator/Launcher;->findCommand(Ljava/lang/String;)Lcom/android/commands/uiautomator/Launcher$Command;

    move-result-object v2

    .line 77
    .local v2, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    if-eqz v2, :cond_23

    .line 78
    new-array v0, v0, [Ljava/lang/String;

    .line 79
    .local v0, "args2":[Ljava/lang/String;
    array-length v3, p0

    if-le v3, v1, :cond_1f

    .line 81
    array-length v3, p0

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 83
    :cond_1f
    invoke-virtual {v2, v0}, Lcom/android/commands/uiautomator/Launcher$Command;->run([Ljava/lang/String;)V

    .line 84
    return-void

    .line 87
    .end local v0    # "args2":[Ljava/lang/String;
    .end local v2    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    :cond_23
    sget-object v0, Lcom/android/commands/uiautomator/Launcher;->HELP_COMMAND:Lcom/android/commands/uiautomator/Launcher$Command;

    invoke-virtual {v0, p0}, Lcom/android/commands/uiautomator/Launcher$Command;->run([Ljava/lang/String;)V

    .line 88
    return-void
.end method
