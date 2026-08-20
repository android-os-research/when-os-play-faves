.class public Lcom/android/commands/svc/Svc;
.super Ljava/lang/Object;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/svc/Svc$Command;
    }
.end annotation


# static fields
.field public static final COMMANDS:[Lcom/android/commands/svc/Svc$Command;

.field public static final COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;


# direct methods
.method static bridge synthetic -$$Nest$smlookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    .registers 1

    invoke-static {p0}, Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lcom/android/commands/svc/Svc$1;

    const-string v1, "help"

    invoke-direct {v0, v1}, Lcom/android/commands/svc/Svc$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    .line 93
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/commands/svc/Svc$Command;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/svc/PowerCommand;

    invoke-direct {v0}, Lcom/android/commands/svc/PowerCommand;-><init>()V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/svc/UsbCommand;

    invoke-direct {v0}, Lcom/android/commands/svc/UsbCommand;-><init>()V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/svc/NfcCommand;

    invoke-direct {v0}, Lcom/android/commands/svc/NfcCommand;-><init>()V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/commands/svc/SystemServerCommand;

    invoke-direct {v0}, Lcom/android/commands/svc/SystemServerCommand;-><init>()V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    array-length v0, v0

    .line 50
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 51
    sget-object v2, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v2, v2, v1

    .line 52
    .local v2, "c":Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v2}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 53
    return-object v2

    .line 50
    .end local v2    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 38
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    .line 39
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v0

    .line 40
    .local v0, "c":Lcom/android/commands/svc/Svc$Command;
    if-eqz v0, :cond_11

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/commands/svc/Svc$Command;->run([Ljava/lang/String;)V

    .line 42
    return-void

    .line 45
    .end local v0    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_11
    sget-object v0, Lcom/android/commands/svc/Svc;->COMMAND_HELP:Lcom/android/commands/svc/Svc$Command;

    invoke-virtual {v0, p0}, Lcom/android/commands/svc/Svc$Command;->run([Ljava/lang/String;)V

    .line 46
    return-void
.end method
