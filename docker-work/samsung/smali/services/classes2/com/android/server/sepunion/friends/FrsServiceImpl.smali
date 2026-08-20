.class public Lcom/android/server/sepunion/friends/FrsServiceImpl;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "FrsServiceImpl.java"


# static fields
.field public static final HISTORY_COUNT:I = 0x28

.field public static final TAG:Ljava/lang/String; = "FrsImpl"


# instance fields
.field public mBootPhase:I

.field public final mContext:Landroid/content/Context;

.field public final mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

.field public final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/sepunion/friends/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field public final mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

.field public final mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public static synthetic $r8$lambda$EZNu9R2KSkxk4ix6DgWZ-m4pVPE(Lcom/android/server/sepunion/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lPS8_IY66qPHOT9sSVPV-GqVW-A([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->lambda$hasMappedAccessory$0([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    .line 53
    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Lcom/android/server/sepunion/friends/common/LoggerImpl;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/android/server/sepunion/friends/common/LoggerImpl;-><init>(I)V

    .line 56
    new-instance v2, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    invoke-direct {v2, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v3, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;

    invoke-direct {v3, p1, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/common/Logger;)V

    iput-object v3, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 59
    new-instance v4, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;

    invoke-direct {v4}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;-><init>()V

    .line 60
    new-instance v5, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;

    new-instance v6, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/friends/FrsServiceImpl;)V

    invoke-direct {v5, v1, v3, v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;-><init>(Lcom/android/server/sepunion/friends/common/Logger;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V

    .line 62
    new-instance v6, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;

    invoke-direct {v6}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;-><init>()V

    .line 63
    new-instance v7, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;

    invoke-direct {v7, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v8, Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-direct {v8, v2, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;-><init>(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;Lcom/android/server/sepunion/friends/common/Logger;)V

    const/4 v9, 0x5

    new-array v9, v9, [I

    fill-array-data v9, :array_d2

    .line 66
    invoke-virtual {v8, v5, v9}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const v11, 0x120002

    aput v11, v10, v0

    .line 72
    invoke-virtual {v8, v6, v10}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v8

    const/4 v10, 0x4

    new-array v11, v10, [I

    fill-array-data v11, :array_e0

    .line 73
    invoke-virtual {v8, v4, v11}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v4

    move-object v8, v3

    check-cast v8, Lcom/android/server/sepunion/friends/action/ActionExecutable;

    new-array v11, v9, [I

    const v12, 0x120005

    aput v12, v11, v0

    .line 78
    invoke-virtual {v4, v8, v11}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v4

    new-array v8, v10, [I

    fill-array-data v8, :array_ec

    .line 79
    invoke-virtual {v4, v2, v8}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v2

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_f8

    .line 84
    invoke-virtual {v2, v7, v4}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v2

    new-instance v4, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;

    invoke-direct {v4, v3}, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V

    new-array v7, v9, [I

    const v8, 0x210002

    aput v8, v7, v0

    .line 91
    invoke-virtual {v2, v4, v7}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v2

    new-instance v4, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;

    invoke-direct {v4, v3}, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V

    .line 92
    invoke-virtual {v2, v4}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setDefault(Lcom/android/server/sepunion/friends/action/ActionExecutable;)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    .line 94
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 95
    new-instance v3, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-direct {v3, p1, v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    new-array v3, v9, [I

    const v4, 0x12000a

    aput v4, v3, v0

    .line 96
    invoke-virtual {v2, v5, v3}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    move-result-object v2

    new-instance v3, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;

    invoke-direct {v3, p1}, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;-><init>(Landroid/content/Context;)V

    new-array p1, v9, [I

    const v4, 0x210003

    aput v4, p1, v0

    .line 98
    invoke-virtual {v2, v3, p1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    goto :goto_c0

    :cond_bd
    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    .line 105
    :goto_c0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    .line 106
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_d2
    .array-data 4
        0x110001
        0x140001
        0x140002
        0x120012
        0x120001
    .end array-data

    :array_e0
    .array-data 4
        0x120003
        0x120004
        0x120010
        0x120011
    .end array-data

    :array_ec
    .array-data 4
        0x120006
        0x120007
        0x120008
        0x120009
    .end array-data

    :array_f8
    .array-data 4
        0x12000b
        0x12000c
        0x12000d
        0x12000e
        0x12000f
        0x120013
    .end array-data
.end method

.method public static synthetic lambda$hasMappedAccessory$0([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 4

    .line 251
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mappedAccessory([B[BZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const/4 p1, 0x0

    new-array p3, p1, [Ljava/lang/Object;

    const-string v0, "FrsImpl"

    const-string v1, "dump"

    .line 137
    invoke-static {v0, v1, p3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    iget-object p3, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p3, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_33

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string/jumbo p1, "permission denied - pid[%d] uid[%d]"

    invoke-static {v0, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 145
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->getDump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p0

    .line 148
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_42
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FrsImpl"

    const-string v2, "executeAction 0x%x"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final executeBootPhaseActions()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 154
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    .line 157
    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {p0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    return-void
.end method

.method public final getDump()Ljava/lang/String;
    .registers 6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "************************************************************************\n"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "productDev: %s / logLevel: %d  / safeString: %s\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 124
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->logLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->useSafeString()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 123
    invoke-static {v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_39
    iget-object v1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/common/Dump;

    .line 128
    invoke-interface {v2, v0}, Lcom/android/server/sepunion/friends/common/Dump;->getDump(Ljava/lang/StringBuilder;)V

    goto :goto_3f

    .line 130
    :cond_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_5a

    const-string p0, "\n************************************************************************"

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_5a
    move-exception v0

    .line 130
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public final hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "attached"

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "data"

    .line 245
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "extraData"

    .line 246
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v1, :cond_36

    .line 250
    new-instance v2, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;-><init>([B[BZ)V

    .line 251
    invoke-virtual {v2, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return-object p0
.end method

.method public final isShellEnabled()Z
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onBootPhase(I)V
    .registers 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    iput p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_35

    const/16 v0, 0x258

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2a

    goto :goto_4b

    :cond_2a
    const/4 p1, -0x1

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    goto :goto_4b

    .line 174
    :cond_2f
    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {p0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    goto :goto_4b

    .line 167
    :cond_35
    iget-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 168
    iget-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    invoke-virtual {p1, v1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    .line 170
    :cond_46
    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    :goto_4b
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ed

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_48

    iget-object v1, v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_48

    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 234
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v10, "FrsImpl"

    const-string/jumbo v2, "onShellCommand [start] pid[%d] uid[%d]"

    invoke-static {v10, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    iget-object v1, v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    new-array v0, v9, [Ljava/lang/Object;

    const-string/jumbo v1, "onShellCommand [end]"

    .line 236
    invoke-static {v10, v1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 227
    :cond_48
    :goto_48
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_50

    move-object v2, p3

    goto :goto_51

    :cond_50
    move-object v2, p2

    :goto_51
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_57
    const-string v0, "No shell command implemented."

    .line 228
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_66

    .line 229
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    move-object/from16 v1, p6

    .line 230
    invoke-virtual {v1, v9, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :catchall_66
    move-exception v0

    move-object v2, v0

    .line 227
    :try_start_68
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_71

    :catchall_6c
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_71
    throw v2
.end method

.method public onStartUser(I)V
    .registers 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 192
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onStopUser(I)V
    .registers 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ec

    .line 213
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwitchUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FrsImpl"

    invoke-static {v3, v0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_28

    .line 205
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    if-nez p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    :cond_28
    const/16 v0, 0x3eb

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FrsImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public final sendSysEvent(II)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mShellCmd:Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_17

    .line 187
    :cond_b
    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl;->mDispatcher:Lcom/android/server/sepunion/friends/action/ActionDispatcher;

    const v0, 0x210003

    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->createBundle(II)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    :cond_17
    :goto_17
    return-void
.end method
