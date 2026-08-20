.class public final Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShellCommandImpl"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public static synthetic $r8$lambda$tl3dxNQ-q-Zmk1ZImnfhLesfQMs(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->lambda$onCommand$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 6845
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6846
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method

.method private synthetic lambda$onCommand$0(Ljava/lang/String;)V
    .registers 3

    .line 6863
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        allOf = {
            "android.permission.DUMP",
            "android.permission.INTERACT_ACROSS_USERS_FULL",
            "android.permission.WRITE_SECURE_SETTINGS"
        }
    .end annotation

    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 6859
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)V

    .line 6863
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 6865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6867
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_22

    .line 6869
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6870
    throw p0
.end method

.method public final onCommandWithSystemIdentity(Ljava/lang/String;)I
    .registers 9

    .line 6876
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const-string/jumbo v3, "tracing"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_110

    :goto_15
    move v0, v6

    goto :goto_36

    :sswitch_17
    const-string/jumbo v1, "ime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_15

    :cond_21
    move v0, v2

    goto :goto_36

    :sswitch_23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_15

    :cond_2a
    move v0, v4

    goto :goto_36

    :sswitch_2c
    const-string v1, "get-last-switch-user-id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_15

    :cond_35
    move v0, v5

    :goto_36
    packed-switch v0, :pswitch_data_11e

    .line 6906
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6882
    :pswitch_3e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6883
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_128

    :goto_50
    move v2, v6

    goto/16 :goto_b6

    :sswitch_53
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_50

    :cond_5c
    const/16 v2, 0x8

    goto :goto_b6

    :sswitch_5f
    const-string/jumbo v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_50

    :cond_69
    const/4 v2, 0x7

    goto :goto_b6

    :sswitch_6b
    const-string/jumbo v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_50

    :cond_75
    const/4 v2, 0x6

    goto :goto_b6

    :sswitch_77
    const-string/jumbo v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto :goto_50

    :cond_81
    const/4 v2, 0x5

    goto :goto_b6

    :sswitch_83
    const-string/jumbo v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_50

    :cond_8d
    const/4 v2, 0x4

    goto :goto_b6

    :sswitch_8f
    const-string v0, "-h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_50

    :cond_98
    const/4 v2, 0x3

    goto :goto_b6

    :sswitch_9a
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_50

    :sswitch_a3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto :goto_50

    :cond_aa
    move v2, v4

    goto :goto_b6

    :sswitch_ac
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_50

    :cond_b5
    move v2, v5

    :cond_b6
    :goto_b6
    packed-switch v2, :pswitch_data_14e

    .line 6901
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    .line 6893
    :pswitch_d2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0

    .line 6897
    :pswitch_d9
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6889
    :pswitch_e0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6895
    :pswitch_e7
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6887
    :pswitch_ee
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()I

    move-result p0

    return p0

    .line 6899
    :pswitch_f3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6891
    :pswitch_fa
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0

    .line 6880
    :pswitch_101
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    .line 6878
    :pswitch_108
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetLastSwitchUserId(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    nop

    :sswitch_data_110
    .sparse-switch
        -0x465b941c -> :sswitch_2c
        -0x3f9f2f3e -> :sswitch_23
        0x197c1 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_108
        :pswitch_101
        :pswitch_3e
    .end packed-switch

    :sswitch_data_128
    .sparse-switch
        -0x4d6ada7d -> :sswitch_ac
        -0x3f9f2f3e -> :sswitch_a3
        0x0 -> :sswitch_9a
        0x5db -> :sswitch_8f
        0x1bc62 -> :sswitch_83
        0x30cf41 -> :sswitch_77
        0x32b09e -> :sswitch_6b
        0x6761d4f -> :sswitch_5f
        0x639e22e8 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_f3
        :pswitch_ee
        :pswitch_ee
        :pswitch_e7
        :pswitch_ee
        :pswitch_e0
        :pswitch_d9
        :pswitch_d2
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 6913
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_4
    const-string v0, "InputMethodManagerService commands:"

    .line 6914
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 6915
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints this help text."

    .line 6916
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump [options]"

    .line 6917
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Synonym of dumpsys."

    .line 6918
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ime <command> [options]"

    .line 6919
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Manipulate IMEs.  Run \"ime help\" for details."

    .line 6920
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  tracing <command>"

    .line 6921
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    start: Start tracing."

    .line 6922
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    stop : Stop tracing."

    .line 6923
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    help : Show help."

    .line 6924
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3f

    .line 6925
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_3f
    move-exception v0

    if-eqz p0, :cond_4a

    .line 6913
    :try_start_42
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    throw v0
.end method

.method public final onImeCommandHelp()I
    .registers 6

    const-string v0, "--user <USER_ID>: Specify which user to enable."

    const-string v1, " Assumes the current user if not specified."

    .line 6931
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 6932
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v3, "  "

    const/16 v4, 0x64

    invoke-direct {v2, p0, v3, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    :try_start_11
    const-string/jumbo p0, "ime <command>:"

    .line 6933
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6934
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "list [-a] [-s]"

    .line 6936
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6937
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "prints all enabled input methods."

    .line 6938
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6939
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "-a: see all input methods"

    .line 6940
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "-s: only a single summary line of each"

    .line 6941
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6942
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6943
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "enable [--user <USER_ID>] <ID>"

    .line 6945
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6946
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "allows the given input method ID to be used."

    .line 6947
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6948
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6949
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6950
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6951
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6952
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "disable [--user <USER_ID>] <ID>"

    .line 6954
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6955
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "disallows the given input method ID to be used."

    .line 6956
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6957
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "--user <USER_ID>: Specify which user to disable."

    .line 6958
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6959
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6960
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6961
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "set [--user <USER_ID>] <ID>"

    .line 6963
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6964
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "switches to the given input method ID."

    .line 6965
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6966
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6967
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6968
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6969
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6970
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "reset [--user <USER_ID>]"

    .line 6972
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6973
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    .line 6974
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6976
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "--user <USER_ID>: Specify which user to reset."

    .line 6977
    invoke-virtual {v2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6978
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6979
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6981
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6983
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_b7
    .catchall {:try_start_11 .. :try_end_b7} :catchall_bc

    .line 6984
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    const/4 p0, 0x0

    return p0

    :catchall_bc
    move-exception p0

    .line 6931
    :try_start_bd
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_c5

    :catchall_c1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c5
    throw p0
.end method
