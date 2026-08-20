.class public final Lcom/android/server/pm/UserManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Shell"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 6452
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_7

    .line 6477
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 6481
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x32b09e

    const/4 v3, 0x1

    if-eq v1, v2, :cond_23

    const v2, 0x40afebbe

    if-eq v1, v2, :cond_18

    goto :goto_2e

    :cond_18
    const-string/jumbo v1, "report-system-user-package-whitelist-problems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_23
    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v0

    :goto_2f
    if-eqz v1, :cond_3d

    if-eq v1, v3, :cond_38

    .line 6487
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6485
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->runReportPackageAllowlistProblems()I

    move-result p0

    return p0

    .line 6483
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->runList()I

    move-result p0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception p1

    .line 6490
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onHelp()V
    .registers 2

    .line 6456
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "User manager (user) commands:"

    .line 6457
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 6458
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints this help text."

    .line 6459
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6460
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  list [-v | --verbose] [--all]"

    .line 6461
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints all users on the system."

    .line 6462
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6463
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    .line 6464
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reports all issues on user-type package allowlist XML files. Options:"

    .line 6466
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -v | --verbose: shows extra info, like number of issues"

    .line 6467
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --critical-only: show only critical issues, excluding warnings"

    .line 6468
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --mode MODE: shows what errors would be if device used mode MODE"

    .line 6469
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      (where MODE is the allowlist mode integer as defined by config_userTypePackageWhitelistMode)"

    .line 6470
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runList()I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 6496
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 6500
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_56

    .line 6501
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_194

    :goto_18
    move v6, v9

    goto :goto_3a

    :sswitch_1a
    const-string v8, "--verbose"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_18

    :cond_23
    const/4 v6, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v6, "--all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_18

    :cond_2e
    move v6, v7

    goto :goto_3a

    :sswitch_30
    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_18

    :cond_39
    move v6, v2

    :goto_3a
    packed-switch v6, :pswitch_data_1a2

    .line 6510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :pswitch_52
    move v3, v7

    goto :goto_9

    :pswitch_54
    move v4, v7

    goto :goto_9

    .line 6514
    :cond_56
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    .line 6515
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    xor-int/lit8 v9, v3, 0x1

    xor-int/2addr v3, v7

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6b

    const-string v0, "Error: couldn\'t get users"

    .line 6518
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 6521
    :cond_6b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, -0x2710

    if-eqz v4, :cond_87

    new-array v10, v7, [Ljava/lang/Object;

    .line 6524
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "%d users:\n\n"

    invoke-virtual {v1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 6525
    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    goto :goto_8d

    :cond_87
    const-string v10, "Users:"

    .line 6530
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v9

    :goto_8d
    move v11, v2

    :goto_8e
    if-ge v11, v8, :cond_192

    .line 6533
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 6534
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v13, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v13

    .line 6535
    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v14, v10, :cond_a2

    move v15, v7

    goto :goto_a3

    :cond_a2
    move v15, v2

    .line 6536
    :goto_a3
    iget v6, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v6, v14, :cond_ab

    if-eq v6, v9, :cond_ab

    move v6, v7

    goto :goto_ac

    :cond_ab
    move v6, v2

    :goto_ac
    const-string v14, ""

    if-eqz v4, :cond_172

    .line 6539
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v9}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetDevicePolicyManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v9

    if-eqz v9, :cond_db

    .line 6543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 6546
    :try_start_bc
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v7

    iget v2, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v2, :cond_c7

    const-string v7, " (device-owner)"

    goto :goto_c8

    :cond_c7
    move-object v7, v14

    .line 6549
    :goto_c8
    invoke-virtual {v9, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_d1

    const-string v2, " (profile-owner)"
    :try_end_d0
    .catchall {:try_start_bc .. :try_end_d0} :catchall_d6

    goto :goto_d2

    :cond_d1
    move-object v2, v14

    .line 6553
    :goto_d2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_dd

    :catchall_d6
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6554
    throw v0

    :cond_db
    move-object v2, v14

    move-object v7, v2

    :goto_dd
    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/Object;

    .line 6557
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v9, v18

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    .line 6558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v17, 0x1

    aput-object v0, v9, v17

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v0, v9, v16

    iget-object v0, v12, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    move-object/from16 v18, v3

    const-string v3, "android.os.usertype."

    .line 6560
    invoke-virtual {v0, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v9, v3

    const/4 v0, 0x4

    iget v3, v12, Landroid/content/pm/UserInfo;->flags:I

    .line 6561
    invoke-static {v3}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v0

    const/4 v0, 0x5

    if-eqz v6, :cond_12b

    .line 6562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (parentId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12c

    :cond_12b
    move-object v3, v14

    :goto_12c
    aput-object v3, v9, v0

    const/4 v0, 0x6

    if-eqz v13, :cond_134

    const-string v3, " (running)"

    goto :goto_135

    :cond_134
    move-object v3, v14

    :goto_135
    aput-object v3, v9, v0

    const/4 v0, 0x7

    .line 6564
    iget-boolean v3, v12, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_13f

    const-string v3, " (partial)"

    goto :goto_140

    :cond_13f
    move-object v3, v14

    :goto_140
    aput-object v3, v9, v0

    const/16 v0, 0x8

    .line 6565
    iget-boolean v3, v12, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_14b

    const-string v3, " (pre-created)"

    goto :goto_14c

    :cond_14b
    move-object v3, v14

    :goto_14c
    aput-object v3, v9, v0

    const/16 v0, 0x9

    .line 6566
    iget-boolean v3, v12, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_157

    const-string v3, " (converted)"

    goto :goto_158

    :cond_157
    move-object v3, v14

    :goto_158
    aput-object v3, v9, v0

    const/16 v0, 0xa

    aput-object v7, v9, v0

    const/16 v0, 0xb

    aput-object v2, v9, v0

    const/16 v0, 0xc

    if-eqz v15, :cond_168

    const-string v14, " (current)"

    :cond_168
    aput-object v14, v9, v0

    const-string v0, "%d: id=%d, name=%s, type=%s, flags=%s%s%s%s%s%s%s%s%s\n"

    .line 6556
    invoke-virtual {v1, v0, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x2

    const/4 v3, 0x1

    goto :goto_186

    :cond_172
    move-object/from16 v18, v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    if-eqz v13, :cond_17e

    const-string v14, " running"

    :cond_17e
    const/4 v3, 0x1

    aput-object v14, v2, v3

    const-string v6, "\t%s%s\n"

    .line 6573
    invoke-virtual {v1, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_186
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move v7, v3

    move-object/from16 v3, v18

    const/4 v2, 0x0

    const/16 v9, -0x2710

    goto/16 :goto_8e

    :cond_192
    return v2

    nop

    :sswitch_data_194
    .sparse-switch
        0x5e9 -> :sswitch_30
        0x2901001 -> :sswitch_25
        0x6789dfe2 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_54
        :pswitch_52
        :pswitch_54
    .end packed-switch
.end method

.method public final runReportPackageAllowlistProblems()I
    .registers 10

    .line 6581
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    move v3, v1

    move v4, v3

    .line 6586
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6a

    .line 6587
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_b4

    :goto_18
    move v6, v7

    goto :goto_45

    :sswitch_1a
    const-string v6, "--verbose"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_18

    :cond_23
    const/4 v6, 0x3

    goto :goto_45

    :sswitch_25
    const-string v6, "--mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_18

    :cond_2e
    const/4 v6, 0x2

    goto :goto_45

    :sswitch_30
    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_18

    :cond_39
    move v6, v8

    goto :goto_45

    :sswitch_3b
    const-string v6, "--critical-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    goto :goto_18

    :cond_44
    move v6, v1

    :goto_45
    packed-switch v6, :pswitch_data_c6

    .line 6599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 6596
    :pswitch_5d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    :pswitch_66
    move v3, v8

    goto :goto_9

    :pswitch_68
    move v4, v8

    goto :goto_9

    .line 6604
    :cond_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runReportPackageAllowlistProblems(): verbose="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", criticalOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6606
    invoke-static {v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserManagerService"

    .line 6604
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6608
    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, v0, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6609
    :try_start_9c
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmSystemPackageInstaller(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserSystemPackageInstaller;

    move-result-object p0

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_a9

    .line 6611
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    return v1

    :catchall_a9
    move-exception p0

    .line 6608
    :try_start_aa
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b2
    throw p0

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x513a2c86 -> :sswitch_3b
        0x5e9 -> :sswitch_30
        0x4f776f43 -> :sswitch_25
        0x6789dfe2 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_68
        :pswitch_66
        :pswitch_5d
        :pswitch_66
    .end packed-switch
.end method
