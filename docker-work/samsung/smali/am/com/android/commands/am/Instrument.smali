.class public Lcom/android/commands/am/Instrument;
.super Ljava/lang/Object;
.source "Instrument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Instrument$InstrumentationWatcher;,
        Lcom/android/commands/am/Instrument$ProtoStatusReporter;,
        Lcom/android/commands/am/Instrument$TextStatusReporter;,
        Lcom/android/commands/am/Instrument$StatusReporter;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOG_DIR:Ljava/lang/String; = "instrument-logs"

.field private static final STATUS_TEST_FAILED_ASSERTION:I = -0x1

.field private static final STATUS_TEST_FAILED_OTHER:I = -0x2

.field private static final STATUS_TEST_PASSED:I = 0x0

.field private static final STATUS_TEST_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "am"


# instance fields
.field public abi:Ljava/lang/String;

.field public alwaysCheckSignature:Z

.field public args:Landroid/os/Bundle;

.field public componentNameArg:Ljava/lang/String;

.field public disableHiddenApiChecks:Z

.field public disableIsolatedStorage:Z

.field public disableTestApiChecks:Z

.field public instrumentSdkSandbox:Z

.field logPath:Ljava/lang/String;

.field private final mAm:Landroid/app/IActivityManager;

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mWm:Landroid/view/IWindowManager;

.field public noRestart:Z

.field public noWindowAnimation:Z

.field public profileFile:Ljava/lang/String;

.field protoFile:Z

.field protoStd:Z

.field public rawMode:Z

.field public userId:I

.field public wait:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAm(Lcom/android/commands/am/Instrument;)Landroid/app/IActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/am/Instrument;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadLogcat(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/commands/am/Instrument;->readLogcat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsorted(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    invoke-static {p0}, Lcom/android/commands/am/Instrument;->sorted(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/IActivityManager;Landroid/content/pm/IPackageManager;)V
    .registers 6
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/am/Instrument;->profileFile:Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->wait:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->rawMode:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->protoStd:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 89
    iput-object v0, p0, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->noWindowAnimation:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->disableHiddenApiChecks:Z

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/commands/am/Instrument;->disableTestApiChecks:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->disableIsolatedStorage:Z

    .line 94
    iput-object v0, p0, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->noRestart:Z

    .line 96
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/commands/am/Instrument;->userId:I

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/commands/am/Instrument;->args:Landroid/os/Bundle;

    .line 100
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->alwaysCheckSignature:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/commands/am/Instrument;->instrumentSdkSandbox:Z

    .line 107
    iput-object p1, p0, Lcom/android/commands/am/Instrument;->mAm:Landroid/app/IActivityManager;

    .line 108
    iput-object p2, p0, Lcom/android/commands/am/Instrument;->mPm:Landroid/content/pm/IPackageManager;

    .line 109
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    .line 110
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 11
    .param p1, "cnArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 424
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 425
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_f

    .line 426
    return-object v0

    .line 425
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_28
    iget-object v0, p0, Lcom/android/commands/am/Instrument;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 430
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    if-nez v0, :cond_38

    move v1, v2

    goto :goto_3c

    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 431
    .local v1, "numInfos":I
    :goto_3c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v3, "cns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    if-ge v4, v1, :cond_61

    .line 433
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    .line 435
    .local v5, "info":Landroid/content/pm/InstrumentationInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v6, "c":Landroid/content/ComponentName;
    iget-object v7, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 437
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v5    # "info":Landroid/content/pm/InstrumentationInfo;
    .end local v6    # "c":Landroid/content/ComponentName;
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 441
    .end local v4    # "i":I
    :cond_61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_bc

    .line 443
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_75

    .line 444
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    return-object v2

    .line 446
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v2, "cnsStr":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 448
    .local v4, "numCns":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7f
    if-ge v5, v4, :cond_96

    .line 449
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 454
    .end local v5    # "i":I
    :cond_96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 456
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found multiple instrumentations: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 442
    .end local v2    # "cnsStr":Ljava/lang/StringBuilder;
    .end local v4    # "numCns":I
    :cond_bc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instrumentation found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static readLogcat(J)Ljava/lang/String;
    .registers 11
    .param p0, "startTimeMs"    # J

    .line 565
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "timestamp":Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "logcat"

    aput-object v5, v4, v3

    const/4 v5, 0x1

    const-string v6, "-d"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "-v"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "threadtime,uid"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "-T"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    .line 570
    invoke-virtual {v2, v4}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 574
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v4, "str":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 579
    .local v5, "reader":Ljava/io/InputStreamReader;
    const/16 v6, 0x1000

    new-array v6, v6, [C

    .line 581
    .local v6, "buffer":[C
    :cond_57
    :goto_57
    array-length v7, v6

    invoke-virtual {v5, v6, v3, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v7

    move v8, v7

    .local v8, "amt":I
    if-ltz v7, :cond_65

    .line 582
    if-lez v8, :cond_57

    .line 583
    invoke-virtual {v4, v6, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_6f

    goto :goto_57

    .line 588
    :cond_65
    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6f

    .line 591
    goto :goto_6a

    .line 589
    :catch_69
    move-exception v3

    .line 593
    :goto_6a
    :try_start_6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_6f

    return-object v3

    .line 595
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    .end local v1    # "timestamp":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "str":Ljava/lang/StringBuilder;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .end local v6    # "buffer":[C
    .end local v8    # "amt":I
    :catch_6f
    move-exception v0

    .line 596
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading logcat command:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sorted(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 144
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 466
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 467
    .local v2, "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    const/4 v3, 0x0

    .line 471
    .local v3, "oldAnims":[F
    const/4 v4, 0x1

    :try_start_5
    iget-boolean v0, v1, Lcom/android/commands/am/Instrument;->protoFile:Z

    if-nez v0, :cond_1b

    iget-boolean v0, v1, Lcom/android/commands/am/Instrument;->protoStd:Z

    if-eqz v0, :cond_e

    goto :goto_1b

    .line 473
    :cond_e
    iget-boolean v0, v1, Lcom/android/commands/am/Instrument;->wait:Z

    if-eqz v0, :cond_21

    .line 474
    new-instance v0, Lcom/android/commands/am/Instrument$TextStatusReporter;

    iget-boolean v5, v1, Lcom/android/commands/am/Instrument;->rawMode:Z

    invoke-direct {v0, v1, v5}, Lcom/android/commands/am/Instrument$TextStatusReporter;-><init>(Lcom/android/commands/am/Instrument;Z)V

    move-object v2, v0

    goto :goto_21

    .line 472
    :cond_1b
    :goto_1b
    new-instance v0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;

    invoke-direct {v0, v1}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;-><init>(Lcom/android/commands/am/Instrument;)V

    move-object v2, v0

    .line 478
    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 479
    .local v0, "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    const/4 v5, 0x0

    .line 480
    .local v5, "connection":Landroid/app/UiAutomationConnection;
    if-eqz v2, :cond_31

    .line 481
    new-instance v6, Lcom/android/commands/am/Instrument$InstrumentationWatcher;

    invoke-direct {v6, v1, v2}, Lcom/android/commands/am/Instrument$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Instrument;Lcom/android/commands/am/Instrument$StatusReporter;)V

    move-object v0, v6

    .line 482
    new-instance v6, Landroid/app/UiAutomationConnection;

    invoke-direct {v6}, Landroid/app/UiAutomationConnection;-><init>()V

    move-object v5, v6

    .line 486
    :cond_31
    iget-boolean v6, v1, Lcom/android/commands/am/Instrument;->noWindowAnimation:Z

    const/4 v15, 0x0

    if-eqz v6, :cond_4e

    .line 487
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v6}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v6

    move-object v3, v6

    .line 488
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    const/4 v7, 0x0

    invoke-interface {v6, v15, v7}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 489
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v6, v4, v7}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 490
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    const/4 v8, 0x2

    invoke-interface {v6, v8, v7}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 494
    :cond_4e
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->componentNameArg:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/android/commands/am/Instrument;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 497
    .local v7, "cn":Landroid/content/ComponentName;
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    if-eqz v6, :cond_8c

    .line 498
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 499
    .local v6, "supportedAbis":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 500
    .local v8, "matched":Z
    array-length v9, v6

    move v10, v15

    :goto_5d
    if-ge v10, v9, :cond_6e

    aget-object v11, v6, v10

    .line 501
    .local v11, "supportedAbi":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6b

    .line 502
    const/4 v8, 0x1

    .line 503
    goto :goto_6e

    .line 500
    .end local v11    # "supportedAbi":Ljava/lang/String;
    :cond_6b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    .line 506
    :cond_6e
    :goto_6e
    if-eqz v8, :cond_71

    goto :goto_8c

    .line 507
    :cond_71
    new-instance v9, Landroid/util/AndroidException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INSTRUMENTATION_FAILED: Unsupported instruction set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .end local v3    # "oldAnims":[F
    .end local p0    # "this":Lcom/android/commands/am/Instrument;
    throw v9

    .line 513
    .end local v6    # "supportedAbis":[Ljava/lang/String;
    .end local v8    # "matched":Z
    .restart local v2    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .restart local v3    # "oldAnims":[F
    .restart local p0    # "this":Lcom/android/commands/am/Instrument;
    :cond_8c
    :goto_8c
    const/4 v6, 0x0

    .line 514
    .local v6, "flags":I
    iget-boolean v8, v1, Lcom/android/commands/am/Instrument;->disableHiddenApiChecks:Z

    if-eqz v8, :cond_93

    .line 515
    or-int/lit8 v6, v6, 0x1

    .line 517
    :cond_93
    iget-boolean v8, v1, Lcom/android/commands/am/Instrument;->disableTestApiChecks:Z

    if-eqz v8, :cond_99

    .line 518
    or-int/lit8 v6, v6, 0x4

    .line 520
    :cond_99
    iget-boolean v8, v1, Lcom/android/commands/am/Instrument;->disableIsolatedStorage:Z

    if-eqz v8, :cond_9f

    .line 521
    or-int/lit8 v6, v6, 0x2

    .line 523
    :cond_9f
    iget-boolean v8, v1, Lcom/android/commands/am/Instrument;->noRestart:Z

    if-eqz v8, :cond_a5

    .line 524
    or-int/lit8 v6, v6, 0x8

    .line 526
    :cond_a5
    iget-boolean v8, v1, Lcom/android/commands/am/Instrument;->alwaysCheckSignature:Z

    if-eqz v8, :cond_ab

    .line 527
    or-int/lit8 v6, v6, 0x10

    .line 529
    :cond_ab
    iget-boolean v8, v1, Lcom/android/commands/am/Instrument;->instrumentSdkSandbox:Z

    if-eqz v8, :cond_b4

    .line 530
    or-int/lit8 v6, v6, 0x20

    move/from16 v16, v6

    goto :goto_b6

    .line 529
    :cond_b4
    move/from16 v16, v6

    .line 532
    .end local v6    # "flags":I
    .local v16, "flags":I
    :goto_b6
    iget-object v6, v1, Lcom/android/commands/am/Instrument;->mAm:Landroid/app/IActivityManager;

    iget-object v8, v1, Lcom/android/commands/am/Instrument;->profileFile:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/commands/am/Instrument;->args:Landroid/os/Bundle;

    iget v13, v1, Lcom/android/commands/am/Instrument;->userId:I

    iget-object v14, v1, Lcom/android/commands/am/Instrument;->abi:Ljava/lang/String;

    move/from16 v9, v16

    move-object v11, v0

    move-object v12, v5

    invoke-interface/range {v6 .. v14}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 538
    if-eqz v0, :cond_df

    .line 539
    invoke-virtual {v0}, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->waitForFinish()Z

    move-result v6

    if-nez v6, :cond_df

    .line 540
    const-string v6, "INSTRUMENTATION_ABORTED: System has crashed."

    invoke-interface {v2, v6, v15}, Lcom/android/commands/am/Instrument$StatusReporter;->onError(Ljava/lang/String;Z)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d7} :catch_109
    .catchall {:try_start_5 .. :try_end_d7} :catchall_107

    .line 554
    if-eqz v3, :cond_de

    .line 555
    iget-object v4, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 541
    :cond_de
    return-void

    .line 554
    .end local v0    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .end local v5    # "connection":Landroid/app/UiAutomationConnection;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    :cond_df
    if-eqz v3, :cond_e6

    .line 555
    iget-object v0, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v0, v3}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 559
    :cond_e6
    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    .line 560
    return-void

    .line 534
    .restart local v0    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .restart local v5    # "connection":Landroid/app/UiAutomationConnection;
    .restart local v7    # "cn":Landroid/content/ComponentName;
    .restart local v16    # "flags":I
    :cond_ea
    :try_start_ea
    new-instance v6, Landroid/util/AndroidException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .end local v3    # "oldAnims":[F
    .end local p0    # "this":Lcom/android/commands/am/Instrument;
    throw v6
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_107} :catch_109
    .catchall {:try_start_ea .. :try_end_107} :catchall_107

    .line 554
    .end local v0    # "watcher":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    .end local v5    # "connection":Landroid/app/UiAutomationConnection;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .restart local v2    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .restart local v3    # "oldAnims":[F
    .restart local p0    # "this":Lcom/android/commands/am/Instrument;
    :catchall_107
    move-exception v0

    goto :goto_115

    .line 544
    :catch_109
    move-exception v0

    .line 546
    .local v0, "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_113

    .line 547
    :try_start_10c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lcom/android/commands/am/Instrument$StatusReporter;->onError(Ljava/lang/String;Z)V

    .line 551
    :cond_113
    nop

    .end local v2    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .end local v3    # "oldAnims":[F
    .end local p0    # "this":Lcom/android/commands/am/Instrument;
    throw v0
    :try_end_115
    .catchall {:try_start_10c .. :try_end_115} :catchall_107

    .line 554
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "reporter":Lcom/android/commands/am/Instrument$StatusReporter;
    .restart local v3    # "oldAnims":[F
    .restart local p0    # "this":Lcom/android/commands/am/Instrument;
    :goto_115
    if-eqz v3, :cond_11c

    .line 555
    iget-object v4, v1, Lcom/android/commands/am/Instrument;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 557
    :cond_11c
    throw v0
.end method
