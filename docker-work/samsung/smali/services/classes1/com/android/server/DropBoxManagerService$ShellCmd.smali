.class public Lcom/android/server/DropBoxManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellCmd"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$ShellCmd-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;-><init>(Lcom/android/server/DropBoxManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9

    if-nez p1, :cond_7

    .line 204
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 206
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 208
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_7c

    goto :goto_42

    :sswitch_18
    const-string/jumbo v3, "set-rate-limit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v1, v2

    goto :goto_42

    :sswitch_23
    const-string/jumbo v3, "remove-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v1, v5

    goto :goto_42

    :sswitch_2e
    const-string v3, "add-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v1, v6

    goto :goto_42

    :sswitch_38
    const-string/jumbo v3, "restore-defaults"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v1, v4

    :cond_42
    :goto_42
    if-eqz v1, :cond_69

    if-eq v1, v6, :cond_5f

    if-eq v1, v5, :cond_55

    if-eq v1, v4, :cond_4f

    .line 225
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 222
    :cond_4f
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$mrestoreDefaults(Lcom/android/server/DropBoxManagerService;)V

    goto :goto_7b

    .line 218
    :cond_55
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p0, p1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$mremoveLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    goto :goto_7b

    .line 214
    :cond_5f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p0, p1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$maddLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    goto :goto_7b

    .line 210
    :cond_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 211
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p0, v3, v4}, Lcom/android/server/DropBoxManagerService;->-$$Nest$msetLowPriorityRateLimit(Lcom/android/server/DropBoxManagerService;J)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p0

    .line 228
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_7b
    return v2

    :sswitch_data_7c
    .sparse-switch
        -0x54335d4f -> :sswitch_38
        -0x1f8bae57 -> :sswitch_2e
        -0x1a85055a -> :sswitch_23
        0x737302d9 -> :sswitch_18
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 235
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Dropbox manager service commands:"

    .line 236
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 237
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 238
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-rate-limit PERIOD"

    .line 239
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets low priority broadcast rate limit period to PERIOD ms"

    .line 240
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  add-low-priority TAG"

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add TAG to dropbox low priority list"

    .line 242
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove-low-priority TAG"

    .line 243
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Remove TAG from dropbox low priority list"

    .line 244
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  restore-defaults"

    .line 245
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    restore dropbox settings to defaults"

    .line 246
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
