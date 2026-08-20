.class public Lcom/android/server/pm/verify/domain/DomainVerificationShell;
.super Ljava/lang/Object;
.source "DomainVerificationShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;
    }
.end annotation


# instance fields
.field public final mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    return-void
.end method


# virtual methods
.method public final getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/BasicShellCommandHandler;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    :goto_5
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 497
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    return-object p0
.end method

.method public final parseEnabled(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 513
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 519
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid boolean"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public printHelp(Ljava/io/PrintWriter;)V
    .registers 7

    const-string p0, "  get-app-links [--user <USER_ID>] [<PACKAGE>]"

    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Prints the domain verification state for the given package, or for all"

    .line 55
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    packages if none is specified. State codes are defined as follows:"

    .line 56
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - none: nothing has been recorded for this domain"

    .line 57
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - verified: the domain has been successfully verified"

    .line 58
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - approved: force approved, usually through shell"

    .line 59
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - denied: force denied, usually through shell"

    .line 60
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - migrated: preserved verification from a legacy response"

    .line 61
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - restored: preserved verification from a user data restore"

    .line 62
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - legacy_failure: rejected by a legacy verifier, unknown reason"

    .line 63
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - system_configured: automatically approved by the device config"

    .line 64
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - >= 1024: Custom error code which is specific to the device verifier"

    .line 65
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --user <USER_ID>: include user selections (includes all domains, not"

    .line 66
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        just autoVerify ones)"

    .line 67
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  reset-app-links [--user <USER_ID>] [<PACKAGE>]"

    .line 68
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Resets domain verification state for the given package, or for all"

    .line 69
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    packages if none is specified."

    .line 70
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --user <USER_ID>: clear user selection state instead; note this means"

    .line 71
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        domain verification state will NOT be cleared"

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      <PACKAGE>: the package to reset, or \"all\" to reset all packages"

    .line 73
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  verify-app-links [--re-verify] [<PACKAGE>]"

    .line 74
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Broadcasts a verification request for the given package, or for all"

    .line 75
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    packages if none is specified. Only sends if the package has previously"

    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    not recorded a response."

    .line 77
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --re-verify: send even if the package has recorded a response"

    .line 78
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  set-app-links [--package <PACKAGE>] <STATE> <DOMAINS>..."

    .line 79
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Manually set the state of a domain for a package. The domain must be"

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    declared by the package as autoVerify for this to work. This command"

    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    will not report a failure for domains that could not be applied."

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --package <PACKAGE>: the package to set, or \"all\" to set all packages"

    .line 83
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      <STATE>: the code to set the domains to, valid values are:"

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        STATE_NO_RESPONSE (0): reset as if no response was ever recorded."

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        STATE_SUCCESS (1): treat domain as successfully verified by domain."

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          verification agent. Note that the domain verification agent can"

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          override this."

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        STATE_APPROVED (2): treat domain as always approved, preventing the"

    .line 89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "           domain verification agent from changing it."

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        STATE_DENIED (3): treat domain as always denied, preveting the domain"

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          verification agent from changing it."

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      <DOMAINS>: space separated list of domains to change, or \"all\" to"

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        change every domain."

    .line 94
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-app-links-user-selection --user <USER_ID> [--package <PACKAGE>]"

    .line 95
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      <ENABLED> <DOMAINS>..."

    .line 96
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Manually set the state of a host user selection for a package. The domain"

    .line 97
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    must be declared by the package for this to work. This command will not"

    .line 98
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    report a failure for domains that could not be applied."

    .line 99
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      --user <USER_ID>: the user to change selections for"

    .line 100
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "      --package <PACKAGE>: the package to set"

    .line 101
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "      <ENABLED>: whether or not to approve the domain"

    .line 102
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-app-links-allowed --user <USER_ID> [--package <PACKAGE>] <ALLOWED>"

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Toggle the auto verified link handling setting for a package."

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        packages will be reset if no one package is specified."

    .line 110
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      <ALLOWED>: true to allow the package to open auto verified links, false"

    .line 111
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        to disable"

    .line 112
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  get-app-link-owners [--user <USER_ID>] [--package <PACKAGE>] [<DOMAINS>]"

    .line 113
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Print the owners for a specific domain for a given user in low to high"

    .line 114
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    priority order."

    .line 115
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --user <USER_ID>: the user to query for"

    .line 116
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --package <PACKAGE>: optionally also print for all web domains declared"

    .line 117
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        by a package, or \"all\" to print all packages"

    .line 118
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      --<DOMAINS>: space separated list of domains to query for"

    .line 119
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_a2

    goto :goto_5d

    :sswitch_c
    const-string/jumbo v0, "verify-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_5d

    :cond_16
    const/4 v1, 0x6

    goto :goto_5d

    :sswitch_18
    const-string v0, "get-app-link-owners"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_5d

    :cond_21
    const/4 v1, 0x5

    goto :goto_5d

    :sswitch_23
    const-string/jumbo v0, "reset-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_5d

    :cond_2d
    const/4 v1, 0x4

    goto :goto_5d

    :sswitch_2f
    const-string/jumbo v0, "set-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    goto :goto_5d

    :cond_39
    const/4 v1, 0x3

    goto :goto_5d

    :sswitch_3b
    const-string/jumbo v0, "set-app-links-allowed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    goto :goto_5d

    :cond_45
    const/4 v1, 0x2

    goto :goto_5d

    :sswitch_47
    const-string/jumbo v0, "set-app-links-user-selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    goto :goto_5d

    :cond_51
    const/4 v1, 0x1

    goto :goto_5d

    :sswitch_53
    const-string v0, "get-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    packed-switch v1, :pswitch_data_c0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runVerifyAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runGetAppLinkOwners(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 133
    :pswitch_74
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runResetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_7d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 141
    :pswitch_86
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinksAllowed(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_8f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinksUserState(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 131
    :pswitch_98
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runGetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x7f8f40aa -> :sswitch_53
        -0x7cbfd22b -> :sswitch_47
        -0x6e528fc3 -> :sswitch_3b
        -0x516af29e -> :sswitch_2f
        -0x313515f1 -> :sswitch_23
        0x45339730 -> :sswitch_18
        0x4f30e8b9 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_98
        :pswitch_8f
        :pswitch_86
        :pswitch_7d
        :pswitch_74
        :pswitch_6b
        :pswitch_62
    .end packed-switch
.end method

.method public final runGetAppLinkOwners(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 11

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 437
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_54

    const-string v5, "--package"

    .line 438
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 450
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unexpected option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 440
    :cond_33
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 443
    :cond_40
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 456
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 458
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package name or domain specified"

    .line 459
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_6e
    if-eqz v2, :cond_7f

    .line 464
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v5, "runSetAppLinksAllowed"

    invoke-virtual {p0, v2, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 467
    :cond_7f
    new-instance v5, Landroid/util/IndentingPrintWriter;

    .line 468
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const/16 v7, 0x78

    const-string v8, "  "

    invoke-direct {v5, v6, v8, v7}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 470
    :try_start_8c
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz v1, :cond_bd

    const-string v6, "all"

    .line 472
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_d0

    if-eqz v6, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object v0, v1

    .line 477
    :goto_9b
    :try_start_9b
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v1, v5, v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_a0} :catch_a1
    .catchall {:try_start_9b .. :try_end_a0} :catchall_d0

    goto :goto_bd

    .line 479
    :catch_a1
    :try_start_a1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: package not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_d0

    .line 489
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    return v4

    .line 484
    :cond_bd
    :goto_bd
    :try_start_bd
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c8

    .line 485
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {p0, v5, v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V

    .line 487
    :cond_c8
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_cb
    .catchall {:try_start_bd .. :try_end_cb} :catchall_d0

    const/4 p0, 0x1

    .line 489
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    return p0

    :catchall_d0
    move-exception p0

    .line 467
    :try_start_d1
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_d9

    :catchall_d5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d9
    throw p0
.end method

.method public final runGetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 9

    const/4 v0, 0x0

    move-object v1, v0

    .line 287
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    const-string v1, "--user"

    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 289
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 291
    :cond_1e
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_37
    if-nez v1, :cond_3a

    goto :goto_49

    .line 296
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "runGetAppLinks"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    :goto_49
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 300
    new-instance v2, Landroid/util/IndentingPrintWriter;

    .line 301
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const/16 v5, 0x78

    const-string v6, "  "

    invoke-direct {v2, v4, v6, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 303
    :try_start_5a
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_8b

    .line 305
    :try_start_5d
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {p0, v2, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_62} :catch_6a
    .catchall {:try_start_5d .. :try_end_62} :catchall_8b

    .line 311
    :try_start_62
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_8b

    const/4 p0, 0x1

    .line 313
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    return p0

    .line 307
    :catch_6a
    :try_start_6a
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unavailable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6a .. :try_end_87} :catchall_8b

    .line 313
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    return v3

    :catchall_8b
    move-exception p0

    .line 300
    :try_start_8c
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw p0
.end method

.method public final runResetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 321
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    const-string v1, "--user"

    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 323
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 325
    :cond_1e
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_37
    if-nez v1, :cond_3b

    move-object v1, v0

    goto :goto_4a

    .line 330
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "runResetAppLinks"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 333
    :goto_4a
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 335
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_5e
    const-string v3, "all"

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_6f

    .line 340
    :cond_67
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_6f
    if-eqz v1, :cond_7b

    .line 344
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->clearUserStates(Ljava/util/List;I)V

    goto :goto_80

    .line 346
    :cond_7b
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->clearDomainVerificationState(Ljava/util/List;)V

    :goto_80
    const/4 p0, 0x1

    return p0
.end method

.method public final runSetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 12

    const/4 v0, 0x0

    move-object v1, v0

    .line 155
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    const-string v1, "--package"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 157
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 159
    :cond_16
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 164
    :cond_2f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 165
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3f
    const-string v2, "all"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    move-object v1, v0

    .line 171
    :cond_48
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_11a

    goto/16 :goto_b3

    :sswitch_5c
    const-string v6, "STATE_DENIED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    goto :goto_b3

    :cond_65
    const/4 v5, 0x7

    goto :goto_b3

    :sswitch_67
    const-string v6, "STATE_NO_RESPONSE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    goto :goto_b3

    :cond_70
    const/4 v5, 0x6

    goto :goto_b3

    :sswitch_72
    const-string v6, "STATE_SUCCESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7b

    goto :goto_b3

    :cond_7b
    const/4 v5, 0x5

    goto :goto_b3

    :sswitch_7d
    const-string v6, "3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    goto :goto_b3

    :cond_86
    const/4 v5, 0x4

    goto :goto_b3

    :sswitch_88
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_91

    goto :goto_b3

    :cond_91
    move v5, v7

    goto :goto_b3

    :sswitch_93
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    goto :goto_b3

    :cond_9c
    move v5, v8

    goto :goto_b3

    :sswitch_9e
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a7

    goto :goto_b3

    :cond_a7
    move v5, v9

    goto :goto_b3

    :sswitch_a9
    const-string v6, "STATE_APPROVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b2

    goto :goto_b3

    :cond_b2
    move v5, v3

    :goto_b3
    packed-switch v5, :pswitch_data_13c

    .line 191
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_cf
    move v7, v9

    goto :goto_d4

    :pswitch_d1
    move v7, v3

    goto :goto_d4

    :pswitch_d3
    move v7, v8

    .line 195
    :goto_d4
    :pswitch_d4
    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 196
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 197
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "No domains specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 201
    :cond_ed
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ne v5, v9, :cond_fa

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    goto :goto_fb

    :cond_fa
    move-object v0, v4

    .line 206
    :goto_fb
    :try_start_fb
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {p0, v1, v7, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    :try_end_100
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fb .. :try_end_100} :catch_101

    return v9

    .line 209
    :catch_101
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :sswitch_data_11a
    .sparse-switch
        -0x6077d53b -> :sswitch_a9
        0x30 -> :sswitch_9e
        0x31 -> :sswitch_93
        0x32 -> :sswitch_88
        0x33 -> :sswitch_7d
        0xf723e15 -> :sswitch_72
        0x1cc39e31 -> :sswitch_67
        0x1fd8ef29 -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d1
        :pswitch_cf
        :pswitch_d3
        :pswitch_d4
        :pswitch_cf
        :pswitch_d1
        :pswitch_d4
    .end packed-switch
.end method

.method public final runSetAppLinksAllowed(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 8

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 381
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_45

    const-string v5, "--package"

    .line 382
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 383
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_17
    const-string v2, "--user"

    .line 384
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 385
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 387
    :cond_2c
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unexpected option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 392
    :cond_45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 393
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_55
    const-string v3, "all"

    .line 395
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v0, v1

    :goto_5f
    if-nez v2, :cond_6b

    .line 400
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: user ID not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 404
    :cond_6b
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 406
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: allowed setting not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 412
    :cond_7f
    :try_start_7f
    invoke-virtual {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->parseEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_83} :catch_b6

    .line 419
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "runSetAppLinksAllowed"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 422
    :try_start_92
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    .line 423
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 422
    invoke-interface {p0, v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    :try_end_9b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_92 .. :try_end_9b} :catch_9d

    const/4 p0, 0x1

    return p0

    .line 425
    :catch_9d
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_b6
    move-exception p0

    .line 414
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: invalid allowed setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runSetAppLinksUserState(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 10

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 221
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_45

    const-string v5, "--package"

    .line 222
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 230
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 224
    :cond_33
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 227
    :cond_40
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 235
    :cond_45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 236
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_55
    if-nez v2, :cond_61

    .line 241
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: User ID not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 245
    :cond_61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "runSetAppLinksUserState"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 249
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: enabled param not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 255
    :cond_84
    :try_start_84
    invoke-virtual {p0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->parseEnabled(Ljava/lang/String;)Z

    move-result v3
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_88} :catch_d5

    .line 262
    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 263
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 264
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "No domains specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 268
    :cond_a1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b1

    const-string v6, "all"

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    goto :goto_b2

    :cond_b1
    move-object v0, v5

    .line 273
    :goto_b2
    :try_start_b2
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2, v1, v3, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b2 .. :try_end_bb} :catch_bc

    return v7

    .line 276
    :catch_bc
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_d5
    move-exception p0

    .line 257
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: invalid enabled param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runVerifyAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 356
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    const-string v2, "--re-verify"

    .line 357
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v0

    goto :goto_3

    .line 360
    :cond_13
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2c
    const/4 v1, 0x0

    .line 366
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 368
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 371
    :cond_3b
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {p0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->verifyPackages(Ljava/util/List;Z)V

    return v0
.end method

.method public final translateUserId(ILjava/lang/String;)I
    .registers 10

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "pm command"

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
