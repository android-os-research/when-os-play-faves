.class public final Lcom/android/server/am/AppProfiler$RecordPssRunnable;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordPssRunnable"
.end annotation


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDumpUri:Landroid/net/Uri;

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 5

    .line 693
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 695
    iput-object p3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 696
    iput-object p4, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "ActivityManager"

    .line 701
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    const-string/jumbo v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_5f

    .line 702
    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_53

    if-eqz v4, :cond_4d

    .line 705
    :try_start_15
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_3f

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting dump heap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 707
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 709
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 711
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object v9, v1

    .line 709
    invoke-interface/range {v4 .. v10}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4d} :catch_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_53

    :catch_4d
    :cond_4d
    if-eqz v1, :cond_70

    .line 716
    :try_start_4f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5f

    goto :goto_70

    :catchall_53
    move-exception v2

    if-eqz v1, :cond_5e

    .line 701
    :try_start_56
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v1

    :try_start_5b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v2
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v1

    const-string v2, "Failed to dump heap"

    .line 717
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    :cond_70
    :goto_70
    return-void
.end method
