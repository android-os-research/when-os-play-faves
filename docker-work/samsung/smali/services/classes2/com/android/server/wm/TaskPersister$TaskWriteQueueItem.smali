.class public Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskWriteQueueItem"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTask:Lcom/android/server/wm/Task;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTask(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/Task;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    .line 547
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public process()V
    .registers 7

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    .line 579
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 580
    iget-boolean v2, v0, Lcom/android/server/wm/Task;->inRecents:Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_aa

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 584
    :try_start_f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->saveToXml(Lcom/android/server/wm/Task;)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14
    .catchall {:try_start_f .. :try_end_13} :catchall_aa

    goto :goto_15

    :catch_14
    :cond_14
    move-object p0, v3

    .line 588
    :goto_15
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_a9

    .line 594
    :try_start_1b
    iget v1, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v1}, Lcom/android/server/wm/TaskPersister;->-$$Nest$smgetUserTasksDir(I)Ljava/io/File;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_56

    const-string p0, "TaskPersister"

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure creating tasks directory for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Dropping persistence for task "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 600
    :cond_56
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 601
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_task.xml"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_77} :catch_84

    .line 602
    :try_start_77
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 603
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 604
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_81} :catch_82

    goto :goto_a9

    :catch_82
    move-exception p0

    goto :goto_86

    :catch_84
    move-exception p0

    move-object v2, v3

    :goto_86
    if-eqz v3, :cond_8b

    .line 607
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_8b
    const-string v0, "TaskPersister"

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for persisting. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    :goto_a9
    return-void

    :catchall_aa
    move-exception p0

    .line 588
    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final saveToXml(Lcom/android/server/wm/Task;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 552
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 553
    invoke-static {p0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 561
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "task"

    .line 563
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 565
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 568
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 570
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskWriteQueueItem{task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
