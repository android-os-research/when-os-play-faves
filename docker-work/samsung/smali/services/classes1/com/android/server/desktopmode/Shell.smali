.class public Lcom/android/server/desktopmode/Shell;
.super Landroid/os/ShellCommand;
.source "Shell.java"


# instance fields
.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public mResolver:Landroid/content/ContentResolver;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object p2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 22
    iput-object p3, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 23
    iput-object p4, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    return-void
.end method


# virtual methods
.method public final desktopModeSettingsCommand()I
    .registers 8

    .line 169
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 171
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 174
    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 175
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 178
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 182
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_c2

    :goto_29
    move v0, v1

    goto :goto_63

    :sswitch_2b
    const-string v5, "clear"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_29

    :cond_34
    const/4 v0, 0x4

    goto :goto_63

    :sswitch_36
    const-string/jumbo v5, "list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_29

    :cond_40
    const/4 v0, 0x3

    goto :goto_63

    :sswitch_42
    const-string/jumbo v5, "put"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_29

    :cond_4c
    const/4 v0, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_29

    :cond_57
    const/4 v0, 0x1

    goto :goto_63

    :sswitch_59
    const-string v5, "delete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_29

    :cond_62
    move v0, v6

    :goto_63
    packed-switch v0, :pswitch_data_d8

    .line 221
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    goto :goto_c1

    :pswitch_6a
    if-eqz v3, :cond_70

    .line 202
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 205
    :cond_70
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsOrThrowException(Landroid/content/ContentResolver;)V

    goto :goto_c1

    :pswitch_76
    if-eqz v3, :cond_7c

    .line 209
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 212
    :cond_7c
    iget-object v0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    .line 213
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_c1

    .line 214
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "System user (0) settings:"

    .line 215
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    goto :goto_c1

    .line 191
    :pswitch_9d
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :pswitch_a3
    if-eqz v4, :cond_a9

    .line 185
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 188
    :cond_a9
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "null"

    invoke-static {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c1

    :pswitch_b6
    if-eqz v4, :cond_bc

    .line 195
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 198
    :cond_bc
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return v6

    :sswitch_data_c2
    .sparse-switch
        -0x4f997a55 -> :sswitch_59
        0x18f56 -> :sswitch_4e
        0x1b30f -> :sswitch_42
        0x32b09e -> :sswitch_36
        0x5a5b64d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_a3
        :pswitch_9d
        :pswitch_76
        :pswitch_6a
    .end packed-switch
.end method

.method public final desktopModeSettingsPrintUsage()V
    .registers 2

    .line 240
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USAGE: settings get KEY"

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings put KEY VALUE"

    .line 242
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings delete KEY"

    .line 243
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings clear"

    .line 244
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings list"

    .line 245
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final multiResolutionManagerCommand()I
    .registers 8

    const/4 v0, -0x1

    .line 125
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 127
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCustomDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto/16 :goto_b1

    .line 130
    :cond_1a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2497c4ae

    const/4 v6, 0x1

    if-eq v4, v5, :cond_39

    const v5, 0x1bc62

    if-eq v4, v5, :cond_2e

    goto :goto_44

    :cond_2e
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_39
    const-string/jumbo v4, "supportAll"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v6

    goto :goto_45

    :cond_44
    :goto_44
    move v2, v0

    :goto_45
    if-eqz v2, :cond_8a

    if-eq v2, v6, :cond_4d

    .line 156
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    .line 143
    :cond_4d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0xddf

    if-eq v2, v4, :cond_6a

    const v4, 0x1ad6f

    if-eq v2, v4, :cond_5f

    goto :goto_75

    :cond_5f
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    move v1, v6

    goto :goto_76

    :cond_6a
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    move v1, v3

    goto :goto_76

    :cond_75
    :goto_75
    move v1, v0

    :goto_76
    if-eqz v1, :cond_84

    if-eq v1, v6, :cond_7e

    .line 151
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    .line 148
    :cond_7e
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    goto :goto_b1

    .line 145
    :cond_84
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1, v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    goto :goto_b1

    .line 132
    :cond_8a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 133
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 134
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 135
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ac

    .line 136
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    .line 139
    :cond_ac
    iget-object v6, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v6, v1, v2, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCustomResolutionFromAdbCommand(Ljava/io/PrintWriter;III)V
    :try_end_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_b1} :catch_b2

    :goto_b1
    return v3

    .line 161
    :catch_b2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0
.end method

.method public final multiResolutionManagerPrintUsage()V
    .registers 2

    .line 250
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USAGE: resolution"

    .line 251
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       resolution set WIDTH HEIGHT DENSITY"

    .line 252
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       resolution supportAll [on|off]"

    .line 253
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 31
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, -0x1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_82

    goto :goto_5c

    :sswitch_15
    const-string/jumbo v3, "settings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_5c

    :cond_1f
    const/4 v2, 0x5

    goto :goto_5c

    :sswitch_21
    const-string/jumbo v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_5c

    :cond_2b
    const/4 v2, 0x4

    goto :goto_5c

    :sswitch_2d
    const-string/jumbo v3, "ui"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_5c

    :cond_37
    const/4 v2, 0x3

    goto :goto_5c

    :sswitch_39
    const-string/jumbo v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_5c

    :cond_43
    const/4 v2, 0x2

    goto :goto_5c

    :sswitch_45
    const-string/jumbo v3, "toggle"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_5c

    :cond_4f
    const/4 v2, 0x1

    goto :goto_5c

    :sswitch_51
    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    packed-switch v2, :pswitch_data_9c

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_7d

    .line 40
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsCommand()I

    move-result p0

    goto :goto_7d

    .line 46
    :pswitch_69
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerCommand()I

    move-result p0

    goto :goto_7d

    .line 37
    :pswitch_6e
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p0

    goto :goto_7d

    .line 43
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerCommand()I

    move-result p0

    .line 52
    :goto_7d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    nop

    :sswitch_data_82
    .sparse-switch
        -0x5f5e8754 -> :sswitch_51
        -0x33c144ac -> :sswitch_45
        0xddf -> :sswitch_39
        0xe94 -> :sswitch_2d
        0x1ad6f -> :sswitch_21
        0x5582bc23 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_79
        :pswitch_6e
        :pswitch_6e
        :pswitch_69
        :pswitch_6e
        :pswitch_64
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 258
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "DesktopModeService commands:"

    .line 259
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 260
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 261
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 262
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  on"

    .line 263
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable desktop mode."

    .line 264
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  off"

    .line 266
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Disable desktop mode."

    .line 267
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  toggle"

    .line 269
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Toggle desktop mode."

    .line 270
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  settings"

    .line 272
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode settings."

    .line 273
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  resolution"

    .line 275
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode resolution."

    .line 276
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ui"

    .line 278
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Manage desktop mode UI elements."

    .line 279
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final uiManagerCommand()I
    .registers 7

    const/4 v0, -0x1

    .line 58
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 60
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 63
    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 66
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 69
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_100

    goto :goto_7b

    :sswitch_26
    const-string/jumbo v4, "showDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    move v1, v5

    goto :goto_7c

    :sswitch_31
    const-string v4, "dismissDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x1

    goto :goto_7c

    :sswitch_3b
    const-string/jumbo v4, "showOverlay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x3

    goto :goto_7c

    :sswitch_46
    const-string/jumbo v4, "showNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x2

    goto :goto_7c

    :sswitch_51
    const-string v4, "finishActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x7

    goto :goto_7c

    :sswitch_5b
    const-string/jumbo v4, "removeNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x6

    goto :goto_7c

    :sswitch_66
    const-string/jumbo v4, "startActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x4

    goto :goto_7c

    :sswitch_71
    const-string v4, "dismissOverlay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x5

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v1, v0

    :goto_7c
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_122

    .line 112
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    goto/16 :goto_fa

    :pswitch_85
    if-eqz v3, :cond_8b

    .line 106
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 109
    :cond_8b
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    goto :goto_fa

    :pswitch_95
    if-eqz v3, :cond_9b

    .line 99
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 102
    :cond_9b
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    goto :goto_fa

    .line 94
    :pswitch_a5
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    goto :goto_fa

    .line 90
    :pswitch_b3
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 90
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_fa

    .line 86
    :pswitch_c1
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    goto :goto_fa

    :pswitch_cf
    if-eqz v3, :cond_d5

    .line 80
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 83
    :cond_d5
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_fa

    .line 75
    :pswitch_df
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    goto :goto_fa

    .line 71
    :pswitch_ed
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 71
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    :try_end_fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_fa} :catch_fb

    :goto_fa
    return v5

    .line 116
    :catch_fb
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    nop

    :sswitch_data_100
    .sparse-switch
        -0x7e40e59a -> :sswitch_71
        -0x5b20666f -> :sswitch_66
        -0x3f93d071 -> :sswitch_5b
        -0x33d05f3e -> :sswitch_51
        -0x2efddb78 -> :sswitch_46
        -0x29e8e56d -> :sswitch_3b
        -0xf4ef38e -> :sswitch_31
        0x1471d2a5 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_df
        :pswitch_cf
        :pswitch_c1
        :pswitch_b3
        :pswitch_a5
        :pswitch_95
        :pswitch_85
    .end packed-switch
.end method

.method public final uiManagerPrintUsage()V
    .registers 2

    .line 228
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USAGE: ui showDialog DISPLAYID TYPE"

    .line 229
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui showNotification TYPE"

    .line 230
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui showOverlay WHERE TYPE"

    .line 231
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui startActivity DISPLAYID TYPE"

    .line 232
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui dismissDialog TYPE"

    .line 233
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui dismissOverlay WHERE TYPE"

    .line 234
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui removeNotification TYPE"

    .line 235
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui finishActivity TYPE"

    .line 236
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
