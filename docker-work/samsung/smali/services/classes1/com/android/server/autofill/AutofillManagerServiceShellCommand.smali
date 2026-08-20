.class public final Lcom/android/server/autofill/AutofillManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AutofillManagerServiceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public static synthetic $r8$lambda$Vo4h3CmXZl7af74q97Dbnb279aM(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$requestList$2(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t-q3Ug1Kh2Zkm04Z_oYOiml7d2Y(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$getFieldClassificationScore$0(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykN9c1jtiAmiow2aADmpIDFYJy8(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$requestDestroy$1(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    return-void
.end method

.method public static synthetic lambda$getFieldClassificationScore$0(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "scores"

    .line 254
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    if-nez p2, :cond_12

    const-string/jumbo p2, "no score"

    .line 256
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 258
    :cond_12
    iget-object p2, p2, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v0, 0x0

    aget-object p2, p2, v0

    aget p2, p2, v0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(F)V

    .line 260
    :goto_1c
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$requestDestroy$1(ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 383
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->removeAllSessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$requestList$2(ILcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 404
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->listSessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method


# virtual methods
.method public final getBindInstantService(Ljava/io/PrintWriter;)I
    .registers 2

    .line 297
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getAllowInstantService()Z

    move-result p0

    if-eqz p0, :cond_f

    const-string/jumbo p0, "true"

    .line 298
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_f
    const-string p0, "false"

    .line 300
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public final getDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I
    .registers 3

    .line 335
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 336
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->isDefaultAugmentedServiceEnabled(I)Z

    move-result p0

    .line 337
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getFieldClassificationScore(Ljava/io/PrintWriter;)I
    .registers 10

    .line 241
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--algorithm"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 244
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_15
    const/4 v1, 0x0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 250
    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 252
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 253
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    new-instance v5, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v5, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/autofill/AutofillManagerService;->calculateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 263
    invoke-virtual {p0, p1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result p0

    return p0
.end method

.method public final getFullScreenMode(Ljava/io/PrintWriter;)I
    .registers 2

    .line 267
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getFullScreenMode()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "default"

    .line 269
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 270
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "true"

    .line 271
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_1b
    const-string p0, "false"

    .line 273
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method public final getLogLevel(Ljava/io/PrintWriter;)I
    .registers 5

    .line 185
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getLogLevel()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    const/4 v1, 0x2

    if-eq p0, v1, :cond_31

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2a

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknow ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2a
    const-string/jumbo p0, "verbose"

    .line 188
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_31
    const-string p0, "debug"

    .line 191
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_37
    const-string/jumbo p0, "off"

    .line 194
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final getMaxPartitions(Ljava/io/PrintWriter;)I
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getMaxPartitions()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMaxVisibileDatasets(Ljava/io/PrintWriter;)I
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getMaxVisibleDatasets()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getNextIntArgRequired()I
    .registers 1

    .line 450
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getSavedPasswordCount(Ljava/io/PrintWriter;)I
    .registers 6

    .line 352
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 353
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 354
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 364
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->requestSavedPasswordCount(ILcom/android/internal/os/IResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 365
    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final getUserIdFromArgsOrAllUsers()I
    .registers 3

    .line 443
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 444
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public final isNextArgSessions(Ljava/io/PrintWriter;)Z
    .registers 3

    .line 408
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sessions"

    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "Error: invalid list type"

    .line 410
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 51
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6e

    goto :goto_4d

    :sswitch_14
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_4d

    :cond_1d
    const/4 v1, 0x4

    goto :goto_4d

    :sswitch_1f
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_4d

    :cond_29
    const/4 v1, 0x3

    goto :goto_4d

    :sswitch_2b
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_4d

    :cond_35
    const/4 v1, 0x2

    goto :goto_4d

    :sswitch_37
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_4d

    :cond_41
    const/4 v1, 0x1

    goto :goto_4d

    :sswitch_43
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    packed-switch v1, :pswitch_data_84

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 56
    :pswitch_55
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 58
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestReset()I

    move-result p0

    return p0

    .line 54
    :pswitch_5f
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 62
    :pswitch_64
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 60
    :pswitch_69
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_6e
    .sparse-switch
        0x18f56 -> :sswitch_43
        0x1bc62 -> :sswitch_37
        0x32b09e -> :sswitch_2b
        0x6761d4f -> :sswitch_1f
        0x5cd39ffa -> :sswitch_14
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    const-string v0, ""

    .line 70
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_6
    const-string v1, "AutoFill Service (autofill) commands:"

    .line 71
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 72
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints this help text."

    .line 73
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get log_level "

    .line 75
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the Autofill log level (off | debug | verbose)."

    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get max_partitions"

    .line 78
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the maximum number of partitions per session."

    .line 79
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get max_visible_datasets"

    .line 81
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the maximum number of visible datasets in the UI."

    .line 82
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get full_screen_mode"

    .line 84
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the Fill UI full screen mode"

    .line 85
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get fc_score [--algorithm ALGORITHM] value1 value2"

    .line 87
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the field classification score for 2 fields."

    .line 88
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get bind-instant-service-allowed"

    .line 90
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets whether binding to services provided by instant apps is allowed"

    .line 91
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get saved-password-count"

    .line 93
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the number of saved passwords in the current service."

    .line 94
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set log_level [off | debug | verbose]"

    .line 96
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the Autofill log level."

    .line 97
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set max_partitions number"

    .line 99
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the maximum number of partitions per session."

    .line 100
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set max_visible_datasets number"

    .line 102
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the maximum number of visible datasets in the UI."

    .line 103
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set full_screen_mode [true | false | default]"

    .line 105
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the Fill UI full screen mode"

    .line 106
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set bind-instant-service-allowed [true | false]"

    .line 108
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets whether binding to services provided by instant apps is allowed"

    .line 109
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set temporary-augmented-service USER_ID [COMPONENT_NAME DURATION]"

    .line 111
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Temporarily (for DURATION ms) changes the augmented autofill service implementation."

    .line 112
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 114
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set default-augmented-service-enabled USER_ID [true|false]"

    .line 116
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable / disable the default augmented autofill service for the user."

    .line 117
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get default-augmented-service-enabled USER_ID"

    .line 119
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Checks whether the default augmented autofill service is enabled for the user."

    .line 120
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  list sessions [--user USER_ID]"

    .line 123
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Lists all pending sessions."

    .line 124
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  destroy sessions [--user USER_ID]"

    .line 126
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Destroys all pending sessions."

    .line 127
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reset"

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Resets all pending sessions and cached service connections."

    .line 130
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_6 .. :try_end_107} :catchall_10b

    .line 132
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_10b
    move-exception v0

    if-eqz p0, :cond_116

    .line 70
    :try_start_10e
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_116

    :catchall_112
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_116
    :goto_116
    throw v0
.end method

.method public final requestDestroy(Ljava/io/PrintWriter;)I
    .registers 6

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 375
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 376
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 377
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;

    invoke-direct {v2, p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    .line 383
    new-instance v3, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method

.method public final requestGet(Ljava/io/PrintWriter;)I
    .registers 5

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_ae

    :goto_f
    move v1, v2

    goto/16 :goto_6d

    :sswitch_12
    const-string/jumbo v1, "max_partitions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v1, 0x7

    goto :goto_6d

    :sswitch_1e
    const-string/jumbo v1, "max_visible_datasets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_f

    :cond_28
    const/4 v1, 0x6

    goto :goto_6d

    :sswitch_2a
    const-string v1, "default-augmented-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_f

    :cond_33
    const/4 v1, 0x5

    goto :goto_6d

    :sswitch_35
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_f

    :cond_3e
    const/4 v1, 0x4

    goto :goto_6d

    :sswitch_40
    const-string/jumbo v1, "saved-password-count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_f

    :cond_4a
    const/4 v1, 0x3

    goto :goto_6d

    :sswitch_4c
    const-string v1, "full_screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto :goto_f

    :cond_55
    const/4 v1, 0x2

    goto :goto_6d

    :sswitch_57
    const-string/jumbo v1, "log_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_f

    :cond_61
    const/4 v1, 0x1

    goto :goto_6d

    :sswitch_63
    const-string v1, "fc_score"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    goto :goto_f

    :cond_6c
    const/4 v1, 0x0

    :goto_6d
    packed-switch v1, :pswitch_data_d0

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid set: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 141
    :pswitch_85
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getMaxPartitions(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 143
    :pswitch_8a
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getMaxVisibileDatasets(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 151
    :pswitch_8f
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 149
    :pswitch_94
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getBindInstantService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 153
    :pswitch_99
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getSavedPasswordCount(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 147
    :pswitch_9e
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getFullScreenMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 139
    :pswitch_a3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getLogLevel(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 145
    :pswitch_a8
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getFieldClassificationScore(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x7e9f9370 -> :sswitch_63
        -0x779ee137 -> :sswitch_57
        -0x4d6a481a -> :sswitch_4c
        -0xf41009d -> :sswitch_40
        0x30420514 -> :sswitch_35
        0x32ceaec0 -> :sswitch_2a
        0x53092da3 -> :sswitch_1e
        0x69a17484 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
    .end packed-switch
.end method

.method public final requestList(Ljava/io/PrintWriter;)I
    .registers 6

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 391
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 392
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 393
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 404
    new-instance v3, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method

.method public final requestReset()I
    .registers 1

    .line 438
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method public final requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .registers 4

    .line 418
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result p0

    return p0
.end method

.method public final requestSet(Ljava/io/PrintWriter;)I
    .registers 5

    .line 161
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_9c

    :goto_f
    move v1, v2

    goto :goto_61

    :sswitch_11
    const-string/jumbo v1, "max_partitions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v1, 0x6

    goto :goto_61

    :sswitch_1d
    const-string/jumbo v1, "max_visible_datasets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_f

    :cond_27
    const/4 v1, 0x5

    goto :goto_61

    :sswitch_29
    const-string v1, "default-augmented-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_f

    :cond_32
    const/4 v1, 0x4

    goto :goto_61

    :sswitch_34
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_f

    :cond_3d
    const/4 v1, 0x3

    goto :goto_61

    :sswitch_3f
    const-string/jumbo v1, "temporary-augmented-service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_f

    :cond_49
    const/4 v1, 0x2

    goto :goto_61

    :sswitch_4b
    const-string v1, "full_screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_f

    :cond_54
    const/4 v1, 0x1

    goto :goto_61

    :sswitch_56
    const-string/jumbo v1, "log_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_f

    :cond_60
    const/4 v1, 0x0

    :goto_61
    packed-switch v1, :pswitch_data_ba

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid set: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 167
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setMaxPartitions()I

    move-result p0

    return p0

    .line 169
    :pswitch_7e
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setMaxVisibileDatasets()I

    move-result p0

    return p0

    .line 177
    :pswitch_83
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 173
    :pswitch_88
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setBindInstantService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 175
    :pswitch_8d
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setTemporaryAugmentedService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 171
    :pswitch_92
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setFullScreenMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 165
    :pswitch_97
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setLogLevel(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_9c
    .sparse-switch
        -0x779ee137 -> :sswitch_56
        -0x4d6a481a -> :sswitch_4b
        -0x2211efa4 -> :sswitch_3f
        0x30420514 -> :sswitch_34
        0x32ceaec0 -> :sswitch_29
        0x53092da3 -> :sswitch_1d
        0x69a17484 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_97
        :pswitch_92
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
    .end packed-switch
.end method

.method public final setBindInstantService(Ljava/io/PrintWriter;)I
    .registers 6

    .line 306
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_39

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 312
    :cond_33
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    return v3

    .line 309
    :cond_39
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->setAllowInstantService(Z)V

    return v3
.end method

.method public final setDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I
    .registers 4

    .line 342
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 343
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 344
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setDefaultAugmentedServiceEnabled(IZ)Z

    move-result p0

    if-nez p0, :cond_28

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final setFullScreenMode(Ljava/io/PrintWriter;)I
    .registers 7

    .line 279
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_66

    :goto_14
    move v1, v3

    goto :goto_37

    :sswitch_16
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_21
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_14

    :cond_2a
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2c
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_14

    :cond_36
    move v1, v4

    :goto_37
    packed-switch v1, :pswitch_data_74

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 288
    :pswitch_4f
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    return v4

    .line 285
    :pswitch_56
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    return v4

    .line 282
    :pswitch_5e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    return v4

    :sswitch_data_66
    .sparse-switch
        0x36758e -> :sswitch_2c
        0x5cb1923 -> :sswitch_21
        0x5c13d641 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_56
        :pswitch_4f
    .end packed-switch
.end method

.method public final setLogLevel(Ljava/io/PrintWriter;)I
    .registers 8

    .line 203
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_64

    :goto_15
    move v1, v4

    goto :goto_39

    :sswitch_17
    const-string/jumbo v2, "verbose"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_15

    :cond_21
    move v1, v3

    goto :goto_39

    :sswitch_23
    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2e
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_15

    :cond_38
    move v1, v5

    :goto_39
    packed-switch v1, :pswitch_data_72

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid level: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 206
    :pswitch_51
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    return v5

    .line 209
    :pswitch_58
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    return v5

    .line 212
    :pswitch_5e
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    return v5

    :sswitch_data_64
    .sparse-switch
        0x1ad6f -> :sswitch_2e
        0x5b09653 -> :sswitch_23
        0x14ed7982 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_58
        :pswitch_51
    .end packed-switch
.end method

.method public final setMaxPartitions()I
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitions(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setMaxVisibileDatasets()I
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasets(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setTemporaryAugmentedService(Ljava/io/PrintWriter;)I
    .registers 6

    .line 321
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 324
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->resetTemporaryAugmentedAutofillService(I)V

    return v2

    .line 327
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 328
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/autofill/AutofillManagerService;->setTemporaryAugmentedAutofillService(ILjava/lang/String;I)V

    .line 329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AugmentedAutofillService temporarily set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I
    .registers 6

    const-wide/16 v0, 0x5

    const/4 p0, -0x1

    .line 424
    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_11

    const-string p2, "Timed out after 5 seconds"

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_10} :catch_13

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0

    :catch_13
    const-string p2, "System call interrupted"

    .line 430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return p0
.end method
