.class public Lcom/android/server/backup/UserBackupManagerService$1;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 1186
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1189
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1191
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1192
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x1

    .line 1193
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1202
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmFullBackupQueue(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1203
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_40

    .line 1206
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmFullBackupQueue(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1207
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1208
    iget-wide v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1210
    :cond_40
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1212
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmFullBackupScheduleFile(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1213
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1214
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1215
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5c} :catch_5f
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5d

    goto :goto_71

    :catchall_5d
    move-exception p0

    goto :goto_73

    :catch_5f
    move-exception v1

    :try_start_60
    const-string v2, "BackupManagerService"

    .line 1217
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$1;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result p0

    const-string v3, "Unable to write backup schedule!"

    .line 1219
    invoke-static {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1217
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    :goto_71
    monitor-exit v0

    return-void

    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_5d

    throw p0
.end method
