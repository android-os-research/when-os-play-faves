.class public Lcom/android/commands/monkey/MonkeyCommandEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyCommandEvent.java"


# instance fields
.field private mCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 33
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 9
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 38
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 41
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 42
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 43
    .local v1, "status":I
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Shell command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    .line 47
    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "status":I
    goto :goto_61

    .line 44
    :catch_37
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Exception from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    const/4 v0, 0x1

    return v0
.end method
