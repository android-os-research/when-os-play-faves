.class public Lcom/android/server/Watchdog$2;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->makeHeapDump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;)V
    .registers 3

    .line 1136
    iput-object p1, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "Watchdog"

    :try_start_2
    const-string v1, "/data/log/core"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 1141
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, " create folder /data/log/core"

    .line 1142
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v2, [Ljava/lang/String;

    .line 1143
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/attribute/FileAttribute;

    const-string/jumbo v5, "rwxrwxrwx"

    .line 1145
    invoke-static {v5}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 1144
    invoke-static {v5}, Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1143
    invoke-static {v3, v4}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    :cond_31
    const-string v2, "Start dumping for java heapdump"

    .line 1147
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system_server.hprof"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    iget-object p0, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    const/16 v2, 0x3e8

    invoke-static {p0, v2}, Lcom/android/server/Watchdog;->-$$Nest$msoftdogKick(Lcom/android/server/Watchdog;I)V

    .line 1150
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_51} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_51} :catch_52

    goto :goto_60

    :catch_52
    move-exception p0

    .line 1155
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_60

    :catch_57
    move-exception p0

    .line 1152
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "Cannot dump for java heapdump"

    .line 1153
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-void
.end method
