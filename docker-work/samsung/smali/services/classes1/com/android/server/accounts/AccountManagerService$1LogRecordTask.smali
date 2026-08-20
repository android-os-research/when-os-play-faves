.class public Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogRecordTask"
.end annotation


# instance fields
.field public final accountId:J

.field public final action:Ljava/lang/String;

.field public final callingUid:I

.field public final tableName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final userDebugDbInsertionPoint:J


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V
    .registers 10

    .line 5562
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5563
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 5564
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 5565
    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    .line 5566
    iput-object p6, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5567
    iput p7, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    .line 5568
    iput-wide p8, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 5573
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v0, v0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5574
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->getStatementForLogging()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    if-nez v1, :cond_13

    .line 5576
    monitor-exit v0

    return-void

    :cond_13
    const/4 v2, 0x1

    .line 5578
    iget-wide v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    .line 5579
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 5580
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmDateFormat(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x4

    .line 5581
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x5

    .line 5582
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x6

    .line 5583
    iget-wide v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_8a

    .line 5585
    :try_start_45
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_48} :catch_4e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_45 .. :try_end_48} :catch_4e
    .catchall {:try_start_45 .. :try_end_48} :catchall_4c

    .line 5592
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_8a

    goto :goto_84

    :catchall_4c
    move-exception p0

    goto :goto_86

    :catch_4e
    move-exception v2

    :try_start_4f
    const-string v3, "AccountManagerService"

    .line 5589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert a log record. accountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " tableName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Error: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_4f .. :try_end_83} :catchall_4c

    goto :goto_48

    .line 5594
    :goto_84
    :try_start_84
    monitor-exit v0

    return-void

    .line 5592
    :goto_86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 5593
    throw p0

    :catchall_8a
    move-exception p0

    .line 5594
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_8a

    throw p0
.end method
