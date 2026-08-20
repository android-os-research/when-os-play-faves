.class public final Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttentionManagerServiceShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
    }
.end annotation


# instance fields
.field public final mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

.field public final mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 917
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 957
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 959
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method public final cmdCallCancelAttention()I
    .registers 3

    .line 1030
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1, p0}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    const-string/jumbo p0, "true"

    .line 1032
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdCallCheckAttention()I
    .registers 5

    .line 1023
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string/jumbo p0, "true"

    goto :goto_16

    :cond_14
    const-string p0, "false"

    .line 1025
    :goto_16
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdCallOnStartProximityUpdates()I
    .registers 3

    .line 1037
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1, p0}, Lcom/android/server/attention/AttentionManagerService;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string/jumbo p0, "true"

    goto :goto_14

    :cond_12
    const-string p0, "false"

    .line 1039
    :goto_14
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdCallOnStopProximityUpdates()I
    .registers 3

    .line 1044
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1, p0}, Lcom/android/server/attention/AttentionManagerService;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    const-string/jumbo p0, "true"

    .line 1046
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdClearTestableAttentionService()I
    .registers 2

    const-string v0, ""

    .line 1015
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->reset()V

    .line 1017
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->reset()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdGetLastTestCallbackCode()I
    .registers 2

    .line 1058
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1059
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->getLastCallbackCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdGetLastTestProximityUpdateCallbackCode()I
    .registers 4

    .line 1064
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1065
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->getLastCallbackCode()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(D)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdResolveAttentionServiceComponent()I
    .registers 2

    .line 1051
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1052
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1053
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_15
    const-string p0, ""

    :goto_17
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdSetTestableAttentionService(Ljava/lang/String;)I
    .registers 5

    .line 1003
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "false"

    if-eqz v1, :cond_10

    .line 1005
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 1007
    :cond_10
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 1009
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_1f

    const-string/jumbo v2, "true"

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 11

    if-nez p1, :cond_7

    .line 965
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 967
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 969
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_fa

    goto :goto_57

    :sswitch_1a
    const-string v2, "clearTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v6

    goto :goto_58

    :sswitch_24
    const-string v2, "getLastTestProximityUpdateCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v4

    goto :goto_58

    :sswitch_2e
    const-string v2, "call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v8

    goto :goto_58

    :sswitch_38
    const-string/jumbo v2, "setTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v7

    goto :goto_58

    :sswitch_43
    const-string v2, "getAttentionServiceComponent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v3

    goto :goto_58

    :sswitch_4d
    const-string v2, "getLastTestCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v5

    goto :goto_58

    :cond_57
    :goto_57
    move v2, v1

    :goto_58
    if-eqz v2, :cond_db

    if-eq v2, v8, :cond_81

    if-eq v2, v7, :cond_78

    if-eq v2, v6, :cond_73

    if-eq v2, v5, :cond_6e

    if-eq v2, v4, :cond_69

    .line 994
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 992
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestProximityUpdateCallbackCode()I

    move-result p0

    return p0

    .line 990
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestCallbackCode()I

    move-result p0

    return p0

    .line 988
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdClearTestableAttentionService()I

    move-result p0

    return p0

    .line 986
    :cond_78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdSetTestableAttentionService(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 973
    :cond_81
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_114

    goto :goto_b6

    :sswitch_8d
    const-string v2, "checkAttention"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    goto :goto_b7

    :sswitch_96
    const-string v2, "cancelCheckAttention"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    move v3, v8

    goto :goto_b7

    :sswitch_a0
    const-string/jumbo v2, "onStopProximityUpdates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    move v3, v6

    goto :goto_b7

    :sswitch_ab
    const-string/jumbo v2, "onStartProximityUpdates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    move v3, v7

    goto :goto_b7

    :cond_b6
    :goto_b6
    move v3, v1

    :goto_b7
    if-eqz v3, :cond_d6

    if-eq v3, v8, :cond_d1

    if-eq v3, v7, :cond_cc

    if-ne v3, v6, :cond_c4

    .line 981
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallOnStopProximityUpdates()I

    move-result p0

    return p0

    .line 983
    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 979
    :cond_cc
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallOnStartProximityUpdates()I

    move-result p0

    return p0

    .line 977
    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCancelAttention()I

    move-result p0

    return p0

    .line 975
    :cond_d6
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCheckAttention()I

    move-result p0

    return p0

    .line 971
    :cond_db
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdResolveAttentionServiceComponent()I

    move-result p0
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_df} :catch_e0

    return p0

    :catch_e0
    move-exception p0

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_fa
    .sparse-switch
        -0x480b7350 -> :sswitch_4d
        -0x3bbfc7b0 -> :sswitch_43
        -0x18bd18bb -> :sswitch_38
        0x2e7a5e -> :sswitch_2e
        0x3e7cfd7c -> :sswitch_24
        0x47229030 -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_114
    .sparse-switch
        -0x5db0dcd2 -> :sswitch_ab
        0x28e0cfec -> :sswitch_a0
        0x2d7ba210 -> :sswitch_96
        0x589284f6 -> :sswitch_8d
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 4

    .line 1078
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Attention commands: "

    .line 1079
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service"

    .line 1080
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ---<service_package>:"

    .line 1082
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       := Package containing the Attention Service implementation to bind to"

    .line 1083
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ---returns:"

    .line 1085
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := true, if was bound successfully"

    .line 1086
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := false, if was not bound successfully"

    .line 1087
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior"

    .line 1088
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  getAttentionServiceComponent: Get the current service component string"

    .line 1090
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := If valid, the component string (in shorten form) for the currently bound service."

    .line 1092
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := else, empty string"

    .line 1094
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  call checkAttention: Calls check attention"

    .line 1095
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)"

    .line 1097
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := false, otherwise"

    .line 1101
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  call cancelCheckAttention: Cancels check attention"

    .line 1102
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  call onStartProximityUpdates: Calls onStartProximityUpdates"

    .line 1103
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "       := true, if the request was successfully dispatched to the service implementation. (to see the result, call getLastTestProximityUpdateCallbackCode)"

    .line 1105
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  call onStopProximityUpdates: Cancels proximity updates"

    .line 1110
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  getLastTestCallbackCode"

    .line 1111
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1"

    .line 1113
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  getLastTestProximityUpdateCallbackCode"

    .line 1116
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       := A double, representing the last proximity value received from the bounded implementation. If none, it will return -1.0"

    .line 1118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final resetStates()V
    .registers 3

    .line 1070
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1071
    :try_start_7
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 1072
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    .line 1073
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    return-void

    :catchall_18
    move-exception p0

    .line 1072
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method
