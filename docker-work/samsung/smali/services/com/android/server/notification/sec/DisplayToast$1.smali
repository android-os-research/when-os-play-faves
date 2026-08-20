.class public Lcom/android/server/notification/sec/DisplayToast$1;
.super Ljava/lang/Thread;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/sec/DisplayToast;->dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/DisplayToast;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/DisplayToast;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/notification/sec/DisplayToast$1;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/ToastLog.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    :try_start_7
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_4b

    .line 116
    :try_start_14
    iget-object v2, p0, Lcom/android/server/notification/sec/DisplayToast$1;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    invoke-static {v2}, Lcom/android/server/notification/sec/DisplayToast;->-$$Nest$fgetlogList(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_41

    .line 117
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast$1;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    invoke-static {p0}, Lcom/android/server/notification/sec/DisplayToast;->-$$Nest$fgetlogList(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_25

    .line 120
    :cond_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3e

    const/4 p0, 0x1

    .line 121
    :try_start_37
    invoke-virtual {v0, p0, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 122
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_4b

    goto :goto_51

    :catchall_3e
    move-exception p0

    .line 120
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p0

    .line 114
    :try_start_42
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p0

    const-string v0, "ToastLog"

    .line 123
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    return-void
.end method
