.class public Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CompanionDevice_ShellCommand"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 41
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 42
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    return-void
.end method


# virtual methods
.method public final getNextIntArgRequired()I
    .registers 1

    .line 165
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 9

    .line 47
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 50
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_122

    goto :goto_58

    :sswitch_f
    const-string/jumbo v3, "simulate-device-appeared"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v1, 0x4

    goto :goto_58

    :sswitch_1a
    const-string v3, "associate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    move v1, v2

    goto :goto_58

    :sswitch_24
    const-string v3, "disassociate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v1, 0x2

    goto :goto_58

    :sswitch_2e
    const-string/jumbo v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    move v1, v4

    goto :goto_58

    :sswitch_39
    const-string/jumbo v3, "simulate-device-disappeared"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v1, 0x5

    goto :goto_58

    :sswitch_44
    const-string/jumbo v3, "remove-inactive-associations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v1, 0x6

    goto :goto_58

    :sswitch_4f
    const-string v3, "clear-association-memory-cache"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v1, 0x3

    :cond_58
    :goto_58
    packed-switch v1, :pswitch_data_140

    .line 111
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_fd

    .line 105
    :pswitch_61
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 106
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 105
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto/16 :goto_fc

    .line 96
    :pswitch_70
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->simulateDeviceDisappeared(I)V

    goto/16 :goto_fc

    .line 91
    :pswitch_7b
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->simulateDeviceAppeared(I)V

    goto/16 :goto_fc

    .line 85
    :pswitch_86
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistState()V

    .line 86
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->loadAssociationsFromDisk()V

    goto :goto_fc

    .line 73
    :pswitch_91
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 76
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 77
    invoke-virtual {v5, v0, v1, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 79
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    goto :goto_fc

    .line 65
    :pswitch_af
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 68
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v3, v1, v6}, Lcom/android/server/companion/CompanionDeviceManagerService;->legacyCreateAssociation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    .line 52
    :pswitch_c2
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v1

    .line 53
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 54
    invoke-interface {v3, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_6 .. :try_end_fb} :catchall_fe

    goto :goto_d0

    :cond_fc
    :goto_fc
    return v4

    :goto_fd
    return p0

    :catchall_fe
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running a command: $ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CompanionDevice_ShellCommand"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_122
    .sparse-switch
        -0x7d780efe -> :sswitch_4f
        -0x6e9ef255 -> :sswitch_44
        -0xb6faf2c -> :sswitch_39
        0x32b09e -> :sswitch_2e
        0x2ebfca50 -> :sswitch_24
        0x5e900f1e -> :sswitch_1a
        0x774e28e2 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_af
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_70
        :pswitch_61
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 123
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Companion Device Manager (companiondevice) commands:"

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  list USER_ID"

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      List all Associations for a user."

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  associate USER_ID PACKAGE MAC_ADDRESS"

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Create a new Association."

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Remove an existing Association."

    .line 132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  clear-association-memory-cache"

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Clear the in-memory association cache and reload all association "

    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      information from persistent storage. USE FOR DEBUGGING PURPOSES ONLY."

    .line 135
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  simulate-device-appeared ASSOCIATION_ID"

    .line 138
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Make CDM act as if the given companion device has appeared."

    .line 139
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      I.e. bind the associated companion application\'s"

    .line 140
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    .line 141
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      The CDM will consider the devices as present for 60 seconds and then"

    .line 142
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    .line 143
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    .line 144
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  simulate-device-disappeared ASSOCIATION_ID"

    .line 148
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Make CDM act as if the given companion device has disappeared."

    .line 149
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      I.e. unbind the associated companion application\'s"

    .line 150
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    .line 151
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    .line 152
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    .line 153
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      60 seconds ago."

    .line 154
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  remove-inactive-associations"

    .line 157
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      Remove self-managed associations that have not been active "

    .line 158
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      for a long time (90 days or as configured via "

    .line 159
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      \"debug.cdm.cdmservice.cleanup_time_window\" system property). "

    .line 160
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
