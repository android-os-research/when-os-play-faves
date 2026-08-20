.class public final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 63
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 65
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 67
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_bc

    goto :goto_5f

    :sswitch_16
    const-string v2, "fabricate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x6

    goto :goto_60

    :sswitch_20
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x2

    goto :goto_60

    :sswitch_2a
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    move v2, v3

    goto :goto_60

    :sswitch_35
    const-string v2, "enable-exclusive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x3

    goto :goto_60

    :sswitch_3f
    const-string/jumbo v2, "lookup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x5

    goto :goto_60

    :sswitch_4a
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    move v2, v4

    goto :goto_60

    :sswitch_54
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x4

    goto :goto_60

    :cond_5f
    :goto_5f
    move v2, v1

    :goto_60
    packed-switch v2, :pswitch_data_da

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_8a

    .line 81
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runFabricate()I

    move-result p0

    return p0

    .line 79
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runLookup()I

    move-result p0

    return p0

    .line 77
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result p0

    return p0

    .line 75
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result p0

    return p0

    .line 73
    :pswitch_7c
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p0

    return p0

    .line 71
    :pswitch_81
    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p0

    return p0

    .line 69
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result p0
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_8a} :catch_a1
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_8a} :catch_8b

    :goto_8a
    return p0

    :catch_8b
    move-exception p0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ba

    :catch_a1
    move-exception p0

    .line 86
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

    :goto_ba
    return v1

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x5120f151 -> :sswitch_54
        -0x4d6ada7d -> :sswitch_4a
        -0x41645686 -> :sswitch_3f
        -0x2f5d012c -> :sswitch_35
        0x32b09e -> :sswitch_2a
        0x639e22e8 -> :sswitch_20
        0x78377fcd -> :sswitch_16
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Overlay manager (overlay) commands:"

    .line 96
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 97
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE[:NAME]]"

    .line 99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print debugging information about the overlay manager."

    .line 100
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    With optional parameters PACKAGE and NAME, limit output to the specified"

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    overlay or target. With optional parameter FIELD, limit output to"

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    the corresponding SettingsItem field. Field names are all lower case"

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    and omit the m prefix, i.e. \'userid\' for SettingsItem.mUserId."

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  list [--user USER_ID] [PACKAGE[:NAME]]"

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print information about target and overlay packages."

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Overlay packages are printed in priority order. With optional"

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    parameters PACKAGE and NAME, limit output to the specified overlay or"

    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    target."

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable [--user USER_ID] PACKAGE[:NAME]"

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable overlay within or owned by PACKAGE with optional unique NAME."

    .line 111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable [--user USER_ID] PACKAGE[:NAME]"

    .line 112
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Disable overlay within or owned by PACKAGE with optional unique NAME."

    .line 113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    .line 114
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable overlay within or owned by PACKAGE and disable all other overlays"

    .line 115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    for its target package. If the --category option is given, only disables"

    .line 116
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    other overlays in the same category."

    .line 117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Change the priority of the overlay to be just higher than"

    .line 119
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    the priority of PARENT If PARENT is the special keyword"

    .line 120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If PARENT is the special keyword \'highest\', change priority of"

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    PACKAGE to the highest priority."

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  lookup [--user USER_ID] [--verbose] PACKAGE-TO-LOAD PACKAGE:TYPE/NAME"

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Load a package and print the value of a given resource"

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    applying the current configuration and enabled overlays."

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    For a more fine-grained alternative, use \'idmap2 lookup\'."

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  fabricate [--user USER_ID] [--target-name OVERLAYABLE] --target PACKAGE"

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            --name NAME PACKAGE:TYPE/NAME ENCODED-TYPE-ID ENCODED-VALUE"

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Create an overlay from a single resource. Caller must be root. Example:"

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      fabricate --target android --name LighterGray \\"

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                android:color/lighter_gray 0x1c 0xffeeeeee"

    .line 132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .registers 5

    .line 195
    iget p0, p2, Landroid/content/om/OverlayInfo;->state:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    const-string p0, "---"

    goto :goto_13

    :cond_e
    const-string p0, "[x]"

    goto :goto_13

    :cond_11
    const-string p0, "[ ]"

    :goto_13
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 207
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "%s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runEnableDisable(Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 215
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    const-string v2, "--user"

    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    .line 226
    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    .line 227
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    new-instance v3, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 228
    invoke-virtual {v3, v0, p1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    .line 227
    invoke-interface {p0, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    return v1
.end method

.method public final runEnableExclusive()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 316
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3d

    const-string v5, "--category"

    .line 317
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 319
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_3b
    move v1, v4

    goto :goto_6

    .line 329
    :cond_3d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4b

    .line 331
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 333
    :cond_4b
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v4, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0
.end method

.method public final runFabricate()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const-string p0, "Error: must be root to fabricate overlays through the shell"

    .line 236
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_11
    const-string v1, ""

    move-object v3, v1

    move-object v4, v3

    .line 245
    :goto_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_80

    const/4 v8, -0x1

    .line 246
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_102

    :goto_25
    move v6, v8

    goto :goto_51

    :sswitch_27
    const-string v6, "--target"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    goto :goto_25

    :cond_30
    const/4 v6, 0x3

    goto :goto_51

    :sswitch_32
    const-string v6, "--user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_25

    :cond_3b
    move v6, v7

    goto :goto_51

    :sswitch_3d
    const-string v6, "--name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_25

    :cond_46
    move v6, v2

    goto :goto_51

    :sswitch_48
    const-string v7, "--target-name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    goto :goto_25

    :cond_51
    :goto_51
    packed-switch v6, :pswitch_data_114

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 251
    :pswitch_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    .line 248
    :pswitch_6e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    goto :goto_15

    .line 257
    :pswitch_76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 254
    :pswitch_7b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    .line 265
    :cond_80
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8c

    const-string p0, "Error: Missing required arg \'--name\'"

    .line 266
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 270
    :cond_8c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_98

    const-string p0, "Error: Missing required arg \'--target\'"

    .line 271
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 275
    :cond_98
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0x"

    .line 278
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_b3

    .line 279
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_b7

    .line 281
    :cond_b3
    invoke-static {v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v8

    .line 283
    :goto_b7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 285
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 286
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_ce

    .line 288
    :cond_ca
    invoke-static {v10}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7

    .line 291
    :goto_ce
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-nez v9, :cond_dc

    const-string p0, "Error: failed to get package manager"

    .line 293
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 298
    :cond_dc
    new-instance v0, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v2, "com.android.shell"

    invoke-direct {v0, v2, v1, v3}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v4}, Landroid/content/om/FabricatedOverlay$Builder;->setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v5, v8, v7}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v0

    .line 304
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 305
    invoke-virtual {v1, v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v0

    .line 304
    invoke-interface {p0, v0}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    return v6

    :sswitch_data_102
    .sparse-switch
        -0x37c14c59 -> :sswitch_48
        0x4f77b02b -> :sswitch_3d
        0x4f7b216b -> :sswitch_32
        0x5a8bbf31 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_76
        :pswitch_6e
        :pswitch_69
    .end packed-switch
.end method

.method public final runList()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 141
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    const-string v3, "--user"

    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 144
    :cond_2e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_a

    .line 152
    :cond_37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 154
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 158
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 159
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    :cond_54
    return v2

    .line 166
    :cond_55
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_5d
    if-ge v3, v1, :cond_6b

    .line 171
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_6b
    return v2

    .line 178
    :cond_6c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v3}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 183
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_94
    if-ge v6, v5, :cond_a2

    .line 185
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    invoke-virtual {p0, v0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    .line 187
    :cond_a2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_7a

    :cond_a6
    return v2
.end method

.method public final runLookup()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 372
    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_42

    const-string v7, "--user"

    .line 373
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_37
    move v4, v6

    goto :goto_b

    .line 375
    :cond_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_b

    .line 386
    :cond_42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    const-string v8, "(.*?):(.*?)/(.*?)"

    .line 389
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 390
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 391
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_60

    const-string p0, "Error: bad resource name, doesn\'t match package:type/name"

    .line 392
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_60
    const/4 v9, 0x2

    .line 398
    :try_start_61
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {p0, v10, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 401
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_73} :catch_11e

    .line 407
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 409
    :try_start_77
    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_119

    .line 413
    :try_start_7a
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 414
    invoke-virtual {p0, v7, v5, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 415
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    .line 416
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v11

    .line 418
    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 419
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v4, :cond_96

    .line 422
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    :cond_96
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 426
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b7

    .line 428
    :cond_a0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7a .. :try_end_b7} :catch_bb
    .catchall {:try_start_7a .. :try_end_b7} :catchall_119

    .line 462
    :goto_b7
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v2

    .line 438
    :catch_bb
    :try_start_bb
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 440
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 441
    invoke-virtual {p0, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_fb

    .line 445
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz v4, :cond_db

    .line 447
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    :cond_db
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move v5, v2

    .line 450
    :goto_e1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_f4

    .line 451
    invoke-virtual {p0, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 452
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 454
    :cond_f4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_f7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_bb .. :try_end_f7} :catch_101
    .catchall {:try_start_bb .. :try_end_f7} :catchall_119

    .line 462
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v2

    .line 443
    :cond_fb
    :try_start_fb
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_101
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_fb .. :try_end_101} :catch_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_119

    .line 458
    :catch_101
    :try_start_101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: failed to get the resource "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_101 .. :try_end_115} :catchall_119

    .line 462
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v6

    :catchall_119
    move-exception p0

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 463
    throw p0

    :catch_11e
    new-array p0, v9, [Ljava/lang/Object;

    aput-object v5, p0, v2

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v6

    const-string v0, "Error: failed to get resources for package %s for user %d"

    .line 403
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6
.end method

.method public final runSetPriority()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_32

    const-string v1, "--user"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 345
    :cond_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 353
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "highest"

    .line 356
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 357
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_4b
    const-string/jumbo v4, "lowest"

    .line 358
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 359
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 361
    :cond_5c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v2, v1}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method
