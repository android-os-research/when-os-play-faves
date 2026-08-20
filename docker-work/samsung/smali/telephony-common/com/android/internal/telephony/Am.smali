.class public Lcom/android/internal/telephony/Am;
.super Landroid/os/ShellCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Am$IntentReceiver;,
        Lcom/android/internal/telephony/Am$MyShellCallback;
    }
.end annotation


# static fields
.field public static final blacklist NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field private blacklist mAm:Landroid/app/IActivityManager;

.field private blacklist mAutoStop:Z

.field private blacklist mProfileFile:Ljava/lang/String;

.field private blacklist mRawArgs:[Ljava/lang/String;

.field private blacklist mReceiverPermission:Ljava/lang/String;

.field private blacklist mRepeat:I

.field private blacklist mSamplingInterval:I

.field private blacklist mStackId:I

.field private blacklist mStartFlags:I

.field private blacklist mStopOption:Z

.field private blacklist mUserId:I

.field private blacklist mWaitOption:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoStop(Lcom/android/internal/telephony/Am;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProfileFile(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceiverPermission(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeat(Lcom/android/internal/telephony/Am;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSamplingInterval(Lcom/android/internal/telephony/Am;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStopOption(Lcom/android/internal/telephony/Am;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserId(Lcom/android/internal/telephony/Am;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitOption(Lcom/android/internal/telephony/Am;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    return-void
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .registers 2

    .line 74
    new-instance v0, Lcom/android/internal/telephony/Am;

    invoke-direct {v0}, Lcom/android/internal/telephony/Am;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Am;->run([Ljava/lang/String;)V

    return-void
.end method

.method private blacklist makeIntent(I)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    .line 224
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    .line 226
    iput v0, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    .line 228
    iput v0, p0, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    .line 229
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    .line 230
    iput p1, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 p1, -0x1

    .line 231
    iput p1, p0, Lcom/android/internal/telephony/Am;->mStackId:I

    .line 233
    new-instance p1, Lcom/android/internal/telephony/Am$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/Am$2;-><init>(Lcom/android/internal/telephony/Am;)V

    invoke-static {p0, p1}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private blacklist run([Ljava/lang/String;)V
    .registers 9

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mRawArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    .line 82
    :try_start_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/Am;->onRun()V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_40

    :catch_10
    move-exception p0

    .line 88
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 p0, 0x1

    .line 89
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_40

    :catch_1b
    move-exception p1

    .line 84
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Am;->onShowUsage(Ljava/io/PrintStream;)V

    .line 85
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 86
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method private blacklist runStartService(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x2

    .line 332
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 333
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget v8, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v2, 0x0

    const-string v6, "com.android.shell"

    const/4 v7, 0x0

    move v5, p1

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_36

    .line 338
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Error: Not found; no service started."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_83

    .line 339
    :cond_36
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 340
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Requires permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_83

    .line 341
    :cond_5d
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "!!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 342
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method private blacklist runStopService()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x2

    .line 347
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 348
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2, p0}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_32

    .line 351
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Service not stopped: was not running."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_47

    :cond_32
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3d

    .line 353
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Service stopped"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_47

    :cond_3d
    const/4 v0, -0x1

    if-ne p0, v0, :cond_47

    .line 355
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Error stopping service"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return-void
.end method

.method private blacklist sendBroadcast()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x2

    .line 294
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 295
    new-instance v5, Lcom/android/internal/telephony/Am$IntentReceiver;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver-IA;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v1, :cond_10

    goto :goto_16

    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_16
    move-object v9, v0

    .line 298
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    return-void
.end method

.method private blacklist sendBroadcastNoneOrdered()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x2

    .line 304
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 305
    new-instance v5, Lcom/android/internal/telephony/Am$IntentReceiver;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver-IA;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v1, :cond_10

    goto :goto_16

    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_16
    move-object v9, v0

    .line 308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v3, :cond_30

    return-void

    .line 313
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    return-void
.end method

.method private blacklist sendStickyBroadcastNoneOrdered()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x2

    .line 318
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 319
    new-instance v5, Lcom/android/internal/telephony/Am$IntentReceiver;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver-IA;)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v1, :cond_10

    goto :goto_16

    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_16
    move-object v9, v0

    .line 322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v3, :cond_30

    return-void

    .line 327
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget v14, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    return-void
.end method


# virtual methods
.method public blacklist onCommand(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist onHelp()V
    .registers 1

    return-void
.end method

.method public blacklist onRun()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    if-eqz v0, :cond_14c

    .line 108
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcast()V

    goto/16 :goto_14b

    :cond_19
    const-string v1, "broadcastno"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcastNoneOrdered()V

    goto/16 :goto_14b

    :cond_26
    const-string v1, "stickybroadcastno"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendStickyBroadcastNoneOrdered()V

    goto/16 :goto_14b

    :cond_33
    const-string v1, "startservice"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->runStartService(Z)V

    goto/16 :goto_14b

    :cond_41
    const-string v1, "startfgservice"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4f

    .line 119
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Am;->runStartService(Z)V

    goto/16 :goto_14b

    :cond_4f
    const-string v1, "stopservice"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStopService()V

    goto/16 :goto_14b

    :cond_5c
    const-string v1, "airplanemode"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 123
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14b

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_14b

    .line 127
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto/16 :goto_14b

    :cond_8d
    const-string v1, "mobiledata"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 131
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_14b

    :cond_b1
    const-string v1, "qossessions"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 135
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    .line 138
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qossessions "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_127

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f8

    goto :goto_127

    .line 143
    :cond_f8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p0

    if-nez p0, :cond_112

    .line 146
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Dctracker null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_112
    const v2, 0x4207f    # 3.79E-40f

    .line 149
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 151
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14b

    .line 140
    :cond_127
    :goto_127
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid CID/PhoneID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_146
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mRawArgs:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Am;->runAmCmd([Ljava/lang/String;)V

    :cond_14b
    :goto_14b
    return-void

    .line 104
    :cond_14c
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Error type 2"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    new-instance p0, Landroid/util/AndroidException;

    const-string v0, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist onShowUsage(Ljava/io/PrintStream;)V
    .registers 2

    :try_start_0
    const-string p1, "help"

    .line 95
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Am;->runAmCmd([Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception p0

    .line 97
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Landroid/util/AndroidException;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_10
    return-void
.end method

.method blacklist parseUserArg(Ljava/lang/String;)I
    .registers 2

    const-string p0, "all"

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, -0x1

    goto :goto_21

    :cond_a
    const-string p0, "current"

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "cur"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_20

    .line 164
    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p0, -0x2

    :goto_21
    return p0
.end method

.method blacklist runAmCmd([Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .line 210
    new-instance v7, Lcom/android/internal/telephony/Am$MyShellCallback;

    invoke-direct {v7}, Lcom/android/internal/telephony/Am$MyShellCallback;-><init>()V

    const/4 v8, 0x0

    .line 212
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v6, Lcom/android/internal/telephony/Am$1;

    const/4 v4, 0x0

    invoke-direct {v6, p0, v4}, Lcom/android/internal/telephony/Am$1;-><init>(Lcom/android/internal/telephony/Am;Landroid/os/Handler;)V

    move-object v4, p1

    move-object v5, v7

    invoke-interface/range {v0 .. v6}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_22
    .catchall {:try_start_6 .. :try_end_1d} :catchall_20

    .line 218
    iput-boolean v8, v7, Lcom/android/internal/telephony/Am$MyShellCallback;->mActive:Z

    return-void

    :catchall_20
    move-exception p0

    goto :goto_31

    .line 215
    :catch_22
    :try_start_22
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Error type 2"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    new-instance p0, Landroid/util/AndroidException;

    const-string p1, "Can\'t call activity manager; is the system running?"

    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_20

    .line 218
    :goto_31
    iput-boolean v8, v7, Lcom/android/internal/telephony/Am$MyShellCallback;->mActive:Z

    .line 219
    throw p0
.end method
