.class public Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamFeederThread"
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field public mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field public mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

.field public final mEphemeralOpToken:I

.field public mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    const-string v0, "StreamFeederThread"

    .line 902
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 915
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 916
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 917
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x1

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 7

    .line 1079
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;

    move-result-object p1

    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-interface {p1, v0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    const-string p1, "StreamFeederThread"

    const-string v0, "Full-data restore target timed out; shutting down"

    .line 1081
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/16 v2, 0x2d

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 1087
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {p1}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->handleTimeout()V

    .line 1089
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1090
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v4, p1, v0

    const/4 v0, 0x0

    .line 1091
    aget-object p1, p1, v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1092
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v4, p0, v0

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 17

    move-object/from16 v12, p0

    const-string v13, "Transport threw from abortFullRestore: "

    const-string v14, "StreamFeederThread"

    .line 923
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 926
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0xb1c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 929
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;

    move-result-object v3

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v9, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    iput-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 932
    new-instance v1, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 934
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 935
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v2, v3

    .line 936
    aget-object v2, v2, v1

    const v5, 0x8000

    new-array v6, v5, [B

    .line 940
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 941
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 944
    new-instance v4, Ljava/lang/Thread;

    iget-object v8, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    const-string/jumbo v9, "unified-restore-engine"

    invoke-direct {v4, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const-string v4, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    const/16 v8, 0xb0f

    .line 948
    :try_start_81
    iget-object v10, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v10
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8b} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8b} :catch_175
    .catchall {:try_start_81 .. :try_end_8b} :catchall_170

    move v11, v3

    :goto_8c
    if-nez v11, :cond_d8

    .line 952
    :try_start_8e
    invoke-virtual {v10, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v15

    if-lez v15, :cond_a4

    if-le v15, v5, :cond_99

    .line 961
    new-array v6, v15, [B

    move v5, v15

    :cond_99
    :goto_99
    if-lez v15, :cond_d3

    .line 965
    invoke-virtual {v0, v6, v3, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 966
    invoke-virtual {v7, v6, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V

    sub-int/2addr v15, v9

    goto :goto_99

    :cond_a4
    const/4 v9, -0x1

    if-ne v15, v9, :cond_a9

    move v11, v3

    goto :goto_d8

    .line 983
    :cond_a9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " streaming restore for "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [Ljava/lang/Object;

    .line 985
    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_d2} :catch_1ff
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_d2} :catch_d5
    .catchall {:try_start_8e .. :try_end_d2} :catchall_28d

    move v11, v15

    :cond_d3
    const/4 v1, 0x1

    goto :goto_8c

    :catch_d5
    move-exception v0

    goto/16 :goto_177

    .line 1011
    :cond_d8
    :goto_d8
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_106

    const/4 v1, 0x1

    goto :goto_107

    :cond_106
    move v1, v3

    :goto_107
    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    if-nez v11, :cond_125

    .line 1029
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1033
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1036
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    goto :goto_166

    .line 1041
    :cond_125
    :try_start_125
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_132} :catch_133

    goto :goto_14c

    :catch_133
    move-exception v0

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, -0x3e8

    .line 1053
    :goto_14c
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    if-ne v11, v1, :cond_164

    .line 1058
    :goto_161
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_166

    .line 1060
    :cond_164
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1063
    :goto_166
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1064
    invoke-virtual {v12, v3}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    goto/16 :goto_28c

    :catchall_170
    move-exception v0

    move-object v1, v0

    move v11, v3

    goto/16 :goto_28f

    :catch_175
    move-exception v0

    move v11, v3

    .line 1004
    :goto_177
    :try_start_177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport failed during restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Ljava/lang/Object;

    .line 1005
    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_194
    .catchall {:try_start_177 .. :try_end_194} :catchall_28d

    .line 1011
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_1c2

    const/4 v1, 0x1

    goto :goto_1c3

    :cond_1c2
    move v1, v3

    :goto_1c3
    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1041
    :try_start_1c6
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1d3} :catch_1d4

    goto :goto_1eb

    :catch_1d4
    move-exception v0

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_1eb
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    goto/16 :goto_161

    :catch_1fe
    move v11, v3

    :catch_1ff
    :try_start_1ff
    const-string v0, "Unable to route data for restore"

    .line 996
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 997
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "I/O error on pipes"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_21b
    .catchall {:try_start_1ff .. :try_end_21b} :catchall_28d

    const/16 v0, -0x3eb

    .line 1011
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v5

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v5

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x1

    goto :goto_24b

    :cond_24a
    move v2, v3

    :goto_24b
    invoke-static {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1041
    :try_start_24e
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 1043
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_25b} :catch_25c

    goto :goto_275

    :catch_25c
    move-exception v0

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    .line 1053
    :goto_275
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_164

    goto/16 :goto_161

    :goto_28c
    return-void

    :catchall_28d
    move-exception v0

    move-object v1, v0

    .line 1011
    :goto_28f
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v5

    if-eqz v5, :cond_2bc

    goto :goto_2bd

    :cond_2bc
    move v2, v3

    :goto_2bd
    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    if-eqz v11, :cond_304

    .line 1041
    :try_start_2c2
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2cf} :catch_2d0

    goto :goto_2e9

    :catch_2d0
    move-exception v0

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, -0x3e8

    .line 1053
    :goto_2e9
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    if-ne v11, v2, :cond_301

    .line 1058
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_31c

    .line 1060
    :cond_301
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_31c

    .line 1029
    :cond_304
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1033
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1036
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    .line 1063
    :goto_31c
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1064
    invoke-virtual {v12, v3}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 1065
    throw v1
.end method
