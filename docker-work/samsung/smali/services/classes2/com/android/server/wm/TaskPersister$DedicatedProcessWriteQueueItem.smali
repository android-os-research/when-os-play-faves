.class public Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;
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
    name = "DedicatedProcessWriteQueueItem"
.end annotation


# instance fields
.field public final mProcToPkgList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wm/ActivityTaskManagerService;",
            "I)V"
        }
    .end annotation

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mProcToPkgList:Ljava/util/HashMap;

    .line 662
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 663
    iput p3, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mUserId:I

    return-void
.end method


# virtual methods
.method public process()V
    .registers 7

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mProcToPkgList:Ljava/util/HashMap;

    .line 697
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->saveToXml(Ljava/util/HashMap;)[B

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_13
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p0

    goto/16 :goto_8f

    :catch_13
    move-object v0, v2

    .line 702
    :goto_14
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_8e

    .line 709
    :try_start_1a
    iget v1, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mUserId:I

    invoke-static {v1}, Lcom/android/server/wm/TaskPersister;->-$$Nest$smgetDedicatedTasksDir(I)Ljava/io/File;

    move-result-object v1

    .line 710
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v0, "TaskPersister"

    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure creating tasks directory for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;->mUserId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 715
    :cond_4d
    new-instance p0, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "dedicated_process_task.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_59} :catch_69

    .line 717
    :try_start_59
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 718
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 719
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_63} :catch_64

    goto :goto_8e

    :catch_64
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_6b

    :catch_69
    move-exception p0

    move-object v0, v2

    :goto_6b
    if-eqz v2, :cond_70

    .line 722
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_70
    const-string v1, "TaskPersister"

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for persisting. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    return-void

    .line 702
    :goto_8f
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final saveToXml(Ljava/util/HashMap;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 669
    invoke-static {p0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 672
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "dedicated_process"

    .line 674
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "task"

    .line 677
    invoke-interface {v0, v2, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "process_name"

    .line 678
    invoke-interface {v0, v2, v6, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "package_name"

    invoke-interface {v0, v2, v6, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    invoke-interface {v0, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1c

    .line 683
    :cond_44
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 686
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 688
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
