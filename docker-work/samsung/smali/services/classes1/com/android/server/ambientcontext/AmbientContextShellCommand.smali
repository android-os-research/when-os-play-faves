.class public final Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.super Landroid/os/ShellCommand;
.source "AmbientContextShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;
    }
.end annotation


# static fields
.field public static final REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 97
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-direct {v0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;-><init>()V

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    return-void
.end method


# virtual methods
.method public final getBoundPackageName()I
    .registers 3

    .line 189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, ""

    goto :goto_1b

    .line 192
    :cond_17
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getLastPackageName()I
    .registers 2

    .line 163
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->getLastStatus()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    move-result-object p0

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-nez p0, :cond_d

    const-string p0, ""

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_11
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getLastStatusCode()I
    .registers 1

    .line 154
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->getLastStatus()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 159
    :cond_a
    invoke-virtual {p0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 103
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8c

    goto :goto_60

    :sswitch_10
    const-string/jumbo v1, "start-detection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_60

    :cond_1a
    const/4 v0, 0x6

    goto :goto_60

    :sswitch_1c
    const-string v1, "get-last-status-code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_60

    :cond_25
    const/4 v0, 0x5

    goto :goto_60

    :sswitch_27
    const-string/jumbo v1, "query-service-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_60

    :cond_31
    const/4 v0, 0x4

    goto :goto_60

    :sswitch_33
    const-string/jumbo v1, "set-temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_60

    :cond_3d
    const/4 v0, 0x3

    goto :goto_60

    :sswitch_3f
    const-string v1, "get-last-package-name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_60

    :cond_48
    const/4 v0, 0x2

    goto :goto_60

    :sswitch_4a
    const-string/jumbo v1, "stop-detection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_60

    :cond_54
    const/4 v0, 0x1

    goto :goto_60

    :sswitch_56
    const-string v1, "get-bound-package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    :goto_60
    packed-switch v0, :pswitch_data_aa

    .line 122
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 108
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runStartDetection()I

    move-result p0

    return p0

    .line 112
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getLastStatusCode()I

    move-result p0

    return p0

    .line 116
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runQueryServiceStatus()I

    move-result p0

    return p0

    .line 120
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->setTemporaryService()I

    move-result p0

    return p0

    .line 114
    :pswitch_7c
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getLastPackageName()I

    move-result p0

    return p0

    .line 110
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runStopDetection()I

    move-result p0

    return p0

    .line 118
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getBoundPackageName()I

    move-result p0

    return p0

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x7c399b40 -> :sswitch_56
        -0x7a19e586 -> :sswitch_4a
        -0x1c5f812e -> :sswitch_3f
        0x41db2e8e -> :sswitch_33
        0x5a9159af -> :sswitch_27
        0x784ce7c8 -> :sswitch_1c
        0x7c42deda -> :sswitch_10
    .end sparse-switch

    :pswitch_data_aa
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

    .line 171
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "AmbientContextEvent commands: "

    .line 172
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 173
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 174
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  start-detection USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection."

    .line 176
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop-detection USER_ID: Stops AmbientContextEvent detection."

    .line 177
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-last-status-code: Prints the latest request status code."

    .line 178
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-last-package-name: Prints the latest request package name."

    .line 179
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  query-event-status USER_ID PACKAGE_NAME: Prints the event status code."

    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    .line 181
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 183
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 184
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    To reset, call with just the USER_ID argument."

    .line 185
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runQueryServiceStatus()I
    .registers 5

    .line 143
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 145
    fill-array-data v2, :array_20

    .line 148
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 149
    invoke-static {v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v3

    .line 148
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    const/4 p0, 0x0

    return p0

    nop

    :array_20
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public final runStartDetection()I
    .registers 8

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 129
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 130
    invoke-static {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteDetectionResultCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v5

    .line 131
    invoke-static {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v6

    .line 129
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStopDetection()I
    .registers 3

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->stopAmbientContextEvent(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setTemporaryService()I
    .registers 6

    .line 197
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 201
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    const-string p0, "AmbientContextDetectionService temporary reset. "

    .line 202
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 206
    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientContextDetectionService temporarily set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method
