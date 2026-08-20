.class public Lcom/android/server/wm/ActivityTaskManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 1177
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_4c

    .line 1182
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmIdsLock(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    .line 1183
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mgetIdsClearSet(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_49

    .line 1185
    :try_start_1d
    new-instance p2, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/data/system/idsFile.txt"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_40
    .catchall {:try_start_1d .. :try_end_29} :catchall_49

    .line 1186
    :try_start_29
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mgetIdsClearSet(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_36

    .line 1187
    :try_start_32
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_40
    .catchall {:try_start_32 .. :try_end_35} :catchall_49

    goto :goto_47

    :catchall_36
    move-exception p0

    .line 1185
    :try_start_37
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception p2

    :try_start_3c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3f
    throw p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_49

    :catch_40
    :try_start_40
    const-string p0, "ActivityTaskManager"

    const-string p2, "Error writing IDS file during package update broadcast."

    .line 1188
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :goto_47
    monitor-exit p1

    goto :goto_4c

    :catchall_49
    move-exception p0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    :goto_4c
    return-void
.end method
