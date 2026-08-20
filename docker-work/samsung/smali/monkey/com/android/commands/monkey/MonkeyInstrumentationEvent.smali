.class public Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyInstrumentationEvent.java"


# instance fields
.field mRunnerName:Ljava/lang/String;

.field mTestCaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "testCaseName"    # Ljava/lang/String;
    .param p2, "runnerName"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 15
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 41
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 42
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v10, v1

    .line 46
    .local v10, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    const-string v2, "class"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, v0

    move-object v5, v10

    :try_start_22
    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_28

    .line 52
    nop

    .line 53
    const/4 v1, 0x1

    return v1

    .line 49
    :catch_28
    move-exception v1

    .line 50
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 51
    const/4 v2, -0x1

    return v2

    .line 43
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v10    # "args":Landroid/os/Bundle;
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad component name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
