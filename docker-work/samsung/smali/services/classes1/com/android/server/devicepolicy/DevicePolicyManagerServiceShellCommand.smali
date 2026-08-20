.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "DevicePolicyManagerServiceShellCommand.java"


# static fields
.field public static final CMD_CLEAR_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "clear-freeze-period-record"

.field public static final CMD_FORCE_NETWORK_LOGS:Ljava/lang/String; = "force-network-logs"

.field public static final CMD_FORCE_SECURITY_LOGS:Ljava/lang/String; = "force-security-logs"

.field public static final CMD_IS_SAFE_OPERATION:Ljava/lang/String; = "is-operation-safe"

.field public static final CMD_IS_SAFE_OPERATION_BY_REASON:Ljava/lang/String; = "is-operation-safe-by-reason"

.field public static final CMD_LIST_OWNERS:Ljava/lang/String; = "list-owners"

.field public static final CMD_LIST_POLICY_EXEMPT_APPS:Ljava/lang/String; = "list-policy-exempt-apps"

.field public static final CMD_MARK_PO_ON_ORG_OWNED_DEVICE:Ljava/lang/String; = "mark-profile-owner-on-organization-owned-device"

.field public static final CMD_REMOVE_ACTIVE_ADMIN:Ljava/lang/String; = "remove-active-admin"

.field public static final CMD_SET_ACTIVE_ADMIN:Ljava/lang/String; = "set-active-admin"

.field public static final CMD_SET_DEVICE_OWNER:Ljava/lang/String; = "set-device-owner"

.field public static final CMD_SET_PROFILE_OWNER:Ljava/lang/String; = "set-profile-owner"

.field public static final CMD_SET_SAFE_OPERATION:Ljava/lang/String; = "set-operation-safe"

.field public static final DO_ONLY_OPTION:Ljava/lang/String; = "--device-owner-only"

.field public static final NAME_OPTION:Ljava/lang/String; = "--name"

.field public static final USER_OPTION:Ljava/lang/String; = "--user"


# instance fields
.field public mComponent:Landroid/content/ComponentName;

.field public mName:Ljava/lang/String;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mSetDoOnly:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method

.method public static safeToString(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    const-string p0, "SAFE"

    goto :goto_7

    :cond_5
    const-string p0, "UNSAFE"

    :goto_7
    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 74
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 75
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_146

    goto/16 :goto_a8

    :sswitch_15
    const-string/jumbo v2, "mark-profile-owner-on-organization-owned-device"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/16 v1, 0xc

    goto/16 :goto_a8

    :sswitch_22
    const-string v2, "force-security-logs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/16 v1, 0xb

    goto/16 :goto_a8

    :sswitch_2e
    const-string/jumbo v2, "set-profile-owner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x7

    goto/16 :goto_a8

    :sswitch_3a
    const-string/jumbo v2, "set-active-admin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x5

    goto :goto_a8

    :sswitch_45
    const-string v2, "clear-freeze-period-record"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/16 v1, 0x9

    goto :goto_a8

    :sswitch_50
    const-string/jumbo v2, "is-operation-safe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x0

    goto :goto_a8

    :sswitch_5b
    const-string/jumbo v2, "remove-active-admin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/16 v1, 0x8

    goto :goto_a8

    :sswitch_67
    const-string/jumbo v2, "is-operation-safe-by-reason"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x1

    goto :goto_a8

    :sswitch_72
    const-string/jumbo v2, "set-operation-safe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x2

    goto :goto_a8

    :sswitch_7d
    const-string/jumbo v2, "list-owners"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x3

    goto :goto_a8

    :sswitch_88
    const-string/jumbo v2, "set-device-owner"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x6

    goto :goto_a8

    :sswitch_93
    const-string/jumbo v2, "list-policy-exempt-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v1, 0x4

    goto :goto_a8

    :sswitch_9e
    const-string v2, "force-network-logs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/16 v1, 0xa

    :cond_a8
    :goto_a8
    packed-switch v1, :pswitch_data_17c

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_133

    .line 101
    :pswitch_b1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_b5
    .catchall {:try_start_c .. :try_end_b5} :catchall_139

    if-eqz v0, :cond_ba

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_ba
    return p0

    .line 99
    :pswitch_bb
    :try_start_bb
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceSecurityLogs(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_139

    if-eqz v0, :cond_c4

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_c4
    return p0

    .line 97
    :pswitch_c5
    :try_start_c5
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runForceNetworkLogs(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_139

    if-eqz v0, :cond_ce

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_ce
    return p0

    .line 95
    :pswitch_cf
    :try_start_cf
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_d3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_139

    if-eqz v0, :cond_d8

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_d8
    return p0

    .line 93
    :pswitch_d9
    :try_start_d9
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runRemoveActiveAdmin(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_139

    if-eqz v0, :cond_e2

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_e2
    return p0

    .line 91
    :pswitch_e3
    :try_start_e3
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_139

    if-eqz v0, :cond_ec

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_ec
    return p0

    .line 89
    :pswitch_ed
    :try_start_ed
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_139

    if-eqz v0, :cond_f6

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_f6
    return p0

    .line 87
    :pswitch_f7
    :try_start_f7
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetActiveAdmin(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_fb
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_139

    if-eqz v0, :cond_100

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_100
    return p0

    .line 85
    :pswitch_101
    :try_start_101
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListPolicyExemptApps(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_139

    if-eqz v0, :cond_10a

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_10a
    return p0

    .line 83
    :pswitch_10b
    :try_start_10b
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_139

    if-eqz v0, :cond_114

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_114
    return p0

    .line 81
    :pswitch_115
    :try_start_115
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetSafeOperation(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_139

    if-eqz v0, :cond_11e

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_11e
    return p0

    .line 79
    :pswitch_11f
    :try_start_11f
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperationByReason(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_139

    if-eqz v0, :cond_128

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_128
    return p0

    .line 77
    :pswitch_129
    :try_start_129
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runIsSafeOperation(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_139

    if-eqz v0, :cond_132

    .line 105
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_132
    return p0

    :goto_133
    if-eqz v0, :cond_138

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_138
    return p0

    :catchall_139
    move-exception p0

    if-eqz v0, :cond_144

    .line 74
    :try_start_13c
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_140

    goto :goto_144

    :catchall_140
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_144
    :goto_144
    throw p0

    nop

    :sswitch_data_146
    .sparse-switch
        -0x7bce5670 -> :sswitch_9e
        -0x6c7042ec -> :sswitch_93
        -0x6ace5bf9 -> :sswitch_88
        -0x3ffc2fd1 -> :sswitch_7d
        -0x35f34b02 -> :sswitch_72
        -0x358ebd5d -> :sswitch_67
        -0x2e4a238f -> :sswitch_5b
        -0x226644ca -> :sswitch_50
        -0x1ffc3f59 -> :sswitch_45
        0x20a8d153 -> :sswitch_3a
        0x2622c764 -> :sswitch_2e
        0x4f01fcba -> :sswitch_22
        0x59fd14e8 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_129
        :pswitch_11f
        :pswitch_115
        :pswitch_10b
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
        :pswitch_e3
        :pswitch_d9
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_b1
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 63
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_4
    const-string v1, "DevicePolicyManager Service (device_policy) commands:\n\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 66
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_13
    move-exception p0

    if-eqz v0, :cond_1e

    .line 63
    :try_start_16
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    throw p0
.end method

.method public final onInvalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .registers 4

    .line 109
    invoke-super {p0, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    :cond_8
    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Usage: \n"

    .line 113
    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final parseArgs(Z)V
    .registers 4

    .line 350
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string v1, "--user"

    .line 351
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 352
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 355
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    goto :goto_0

    :cond_22
    const-string v1, "--device-owner-only"

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    goto :goto_0

    :cond_2e
    if-eqz p1, :cond_3f

    const-string v1, "--name"

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 360
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public final parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4

    .line 369
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 371
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 198
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_13

    new-array p0, v0, [Ljava/lang/Object;

    aput-object p3, p0, v1

    const-string/jumbo p2, "no %ss\n"

    .line 199
    invoke-virtual {p1, p2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    .line 202
    :cond_13
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 203
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    aput-object p3, p2, v0

    const/4 p3, 0x2

    if-ne p0, v0, :cond_28

    const-string v0, ""

    goto :goto_2b

    :cond_28
    const-string/jumbo v0, "s"

    :goto_2b
    aput-object v0, p2, p3

    const-string p3, "%d %s%s:\n"

    invoke-virtual {p1, p3, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runClearFreezePeriodRecord(Ljava/io/PrintWriter;)I
    .registers 4

    .line 310
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Success\n"

    .line 311
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p0
.end method

.method public final runForceNetworkLogs(Ljava/io/PrintWriter;)I
    .registers 7

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "Success\n"

    .line 324
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :cond_15
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 321
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 322
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final runForceSecurityLogs(Ljava/io/PrintWriter;)I
    .registers 7

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "Success\n"

    .line 337
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :cond_15
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 334
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "We have to wait for %d milliseconds...\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 335
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final runIsSafeOperation(Ljava/io/PrintWriter;)I
    .registers 7

    .line 166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUnsafeOperationReason(I)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p0, v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 170
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    .line 171
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "Operation %s is %s. Reason: %s\n"

    .line 169
    invoke-virtual {p1, p0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2
.end method

.method public final runIsSafeOperationByReason(Ljava/io/PrintWriter;)I
    .registers 5

    .line 176
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->safeToString(Z)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "Operations affected by %s are %s\n"

    .line 178
    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2
.end method

.method public final runListOwners(Ljava/io/PrintWriter;)I
    .registers 9

    .line 208
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listAllOwners()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "owner"

    .line 209
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    return v1

    :cond_11
    move v2, v1

    :goto_12
    if-ge v2, p0, :cond_67

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/OwnerShellData;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 214
    iget v5, v3, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, v3, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "User %2d: admin=%s"

    invoke-virtual {p1, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 215
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    if-eqz v4, :cond_3c

    const-string v4, ",DeviceOwner"

    .line 216
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    :cond_3c
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    if-eqz v4, :cond_45

    const-string v4, ",ProfileOwner"

    .line 219
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    :cond_45
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz v4, :cond_58

    new-array v4, v6, [Ljava/lang/Object;

    .line 222
    iget v5, v3, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, ",ManagedProfileOwner(parentUserId=%d)"

    invoke-virtual {p1, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 224
    :cond_58
    iget-boolean v3, v3, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    if-eqz v3, :cond_61

    const-string v3, ",Affiliated"

    .line 225
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    :cond_61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_67
    return v1
.end method

.method public final runListPolicyExemptApps(Ljava/io/PrintWriter;)I
    .registers 8

    .line 234
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "policy exempt app"

    .line 235
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    return v1

    :cond_11
    move v2, v1

    :goto_12
    if-ge v2, p0, :cond_2e

    .line 240
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "  %d: %s\n"

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2e
    return v1
.end method

.method public final runMarkProfileOwnerOnOrganizationOwnedDevice(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 343
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "Success\n"

    .line 344
    invoke-virtual {p1, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0
.end method

.method public final runRemoveActiveAdmin(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 281
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    aput-object p0, v1, v0

    const-string p0, "Success: Admin removed %s\n"

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0
.end method

.method public final runSetActiveAdmin(Ljava/io/PrintWriter;)I
    .registers 7

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    new-array v1, v4, [Ljava/lang/Object;

    .line 250
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Success: Active admin set to component %s\n"

    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0
.end method

.method public final runSetDeviceOwner(Ljava/io/PrintWriter;)I
    .registers 9

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    const/4 v1, 0x0

    .line 259
    :try_start_e
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    if-nez v6, :cond_1c

    move v6, v0

    goto :goto_1d

    :cond_1c
    move v6, v1

    :goto_1d
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_68

    if-eqz v2, :cond_4a

    .line 270
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 273
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Success: Device owner set to package %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v0, [Ljava/lang/Object;

    .line 274
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Active admin set to component %s\n"

    invoke-virtual {p1, p0, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    .line 261
    :cond_4a
    :try_start_4a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as device owner."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_68} :catch_68

    :catch_68
    move-exception p1

    .line 266
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 267
    throw p1
.end method

.method public final runSetProfileOwner(Ljava/io/PrintWriter;)I
    .registers 7

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 290
    :try_start_d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_64

    if-eqz v1, :cond_3d

    .line 301
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 304
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 305
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Success: Active admin and profile owner set to %s for user %d\n"

    .line 304
    invoke-virtual {p1, p0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    .line 291
    :cond_3d
    :try_start_3d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 292
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as profile owner for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_64} :catch_64

    :catch_64
    move-exception p1

    .line 297
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 298
    throw p1
.end method

.method public final runSetSafeOperation(Ljava/io/PrintWriter;)I
    .registers 5

    .line 188
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    .line 193
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "Next call to check operation %s will return %s\n"

    .line 191
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2
.end method

.method public final showHelp(Ljava/io/PrintWriter;)V
    .registers 12

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "  help\n"

    .line 119
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "    Prints this help text.\n\n"

    .line 120
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "is-operation-safe"

    aput-object v2, v1, p0

    const-string v2, "  %s <OPERATION_ID>\n"

    .line 121
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, p0, [Ljava/lang/Object;

    const-string v2, "    Checks if the give operation is safe \n\n"

    .line 122
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "is-operation-safe-by-reason"

    aput-object v2, v1, p0

    const-string v2, "  %s <REASON_ID>\n"

    .line 123
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, p0, [Ljava/lang/Object;

    const-string v2, "    Checks if the operations are safe for the given reason\n\n"

    .line 124
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "set-operation-safe"

    aput-object v2, v1, p0

    const-string v2, "  %s <OPERATION_ID> <REASON_ID>\n"

    .line 125
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, p0, [Ljava/lang/Object;

    const-string v2, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    .line 126
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "list-owners"

    aput-object v2, v1, p0

    const-string v2, "  %s\n"

    .line 128
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, p0, [Ljava/lang/Object;

    const-string v3, "    Lists the device / profile owners per user \n\n"

    .line 129
    invoke-virtual {p1, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "list-policy-exempt-apps"

    aput-object v3, v1, p0

    .line 130
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, p0, [Ljava/lang/Object;

    const-string v3, "    Lists the apps that are exempt from policies\n\n"

    .line 131
    invoke-virtual {p1, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "set-active-admin"

    aput-object v4, v3, p0

    const-string v4, "--user"

    aput-object v4, v3, v0

    const-string v5, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    .line 132
    invoke-virtual {p1, v5, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, p0, [Ljava/lang/Object;

    const-string v6, "    Sets the given component as active admin for an existing user.\n\n"

    .line 134
    invoke-virtual {p1, v6, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "set-device-owner"

    aput-object v6, v3, p0

    aput-object v4, v3, v0

    const-string v6, "--name"

    aput-object v6, v3, v1

    const-string v7, "--device-owner-only"

    const/4 v8, 0x3

    aput-object v7, v3, v8

    const-string v7, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s <NAME> ] [ %s ]<COMPONENT>\n"

    .line 135
    invoke-virtual {p1, v7, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, p0, [Ljava/lang/Object;

    const-string v7, "    Sets the given component as active admin, and its package as device owner.\n\n"

    .line 137
    invoke-virtual {p1, v7, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "set-profile-owner"

    aput-object v7, v3, p0

    aput-object v4, v3, v0

    aput-object v6, v3, v1

    const-string v7, "  %s [ %s <USER_ID> | current ] [ %s <NAME> ] <COMPONENT>\n"

    .line 139
    invoke-virtual {p1, v7, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, p0, [Ljava/lang/Object;

    const-string v9, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    .line 141
    invoke-virtual {p1, v9, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "remove-active-admin"

    aput-object v8, v3, p0

    aput-object v4, v3, v0

    aput-object v6, v3, v1

    .line 143
    invoke-virtual {p1, v7, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, p0, [Ljava/lang/Object;

    const-string v6, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    .line 145
    invoke-virtual {p1, v6, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "clear-freeze-period-record"

    aput-object v6, v3, p0

    .line 148
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, p0, [Ljava/lang/Object;

    const-string v6, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    .line 149
    invoke-virtual {p1, v6, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "force-network-logs"

    aput-object v6, v3, p0

    .line 152
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, p0, [Ljava/lang/Object;

    const-string v6, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    .line 153
    invoke-virtual {p1, v6, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "force-security-logs"

    aput-object v6, v3, p0

    .line 155
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v2, p0, [Ljava/lang/Object;

    const-string v3, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    .line 156
    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "mark-profile-owner-on-organization-owned-device"

    aput-object v2, v1, p0

    aput-object v4, v1, v0

    .line 158
    invoke-virtual {p1, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    .line 160
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method
