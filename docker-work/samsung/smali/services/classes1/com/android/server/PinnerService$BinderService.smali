.class public final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .line 1089
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 1092
    iget-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p1}, Lcom/android/server/PinnerService;->-$$Nest$fgetmContext(Lcom/android/server/PinnerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "PinnerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1093
    :cond_f
    iget-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    monitor-enter p1

    const-wide/16 v0, 0x0

    .line 1095
    :try_start_14
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnedFiles(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_45

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    const-string v6, "%s %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1096
    iget-object v7, v2, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v7, v3, v5

    iget v5, v2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v6, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1097
    iget v2, v2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1e

    .line 1099
    :cond_45
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1100
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_56
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1101
    iget-object v6, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v6}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PinnerService$PinnedApp;

    .line 1102
    iget-object v7, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v7, v2}, Lcom/android/server/PinnerService;->-$$Nest$mgetNameForKey(Lcom/android/server/PinnerService;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " uid="

    .line 1103
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " active="

    .line 1104
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v6, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1105
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1106
    iget-object v6, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v6}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedApp;

    iget-object v2, v2, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PinnerService$PinnedFile;

    const-string v7, "  "

    .line 1107
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "%s %s\n"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    aput-object v9, v8, v5

    iget v9, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1108
    iget v6, v6, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    int-to-long v6, v6

    add-long/2addr v0, v6

    goto :goto_ac

    :cond_d5
    const-string p3, "Total size: %s\n"

    new-array v2, v4, [Ljava/lang/Object;

    .line 1111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2, p3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1112
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1113
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPendingRepin(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_126

    const-string p3, "Pending repin: "

    .line 1114
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    iget-object p3, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p3}, Lcom/android/server/PinnerService;->-$$Nest$fgetmPendingRepin(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_104
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1116
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1, v0}, Lcom/android/server/PinnerService;->-$$Nest$mgetNameForKey(Lcom/android/server/PinnerService;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_104

    .line 1118
    :cond_123
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1120
    :cond_126
    monitor-exit p1

    return-void

    :catchall_128
    move-exception p0

    monitor-exit p1
    :try_end_12a
    .catchall {:try_start_14 .. :try_end_12a} :catchall_128

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 9

    .line 1138
    array-length p1, p4

    const/4 p3, -0x1

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ge p1, p5, :cond_f

    const-string p1, "Command is not given."

    .line 1139
    invoke-virtual {p0, p2, p1}, Lcom/android/server/PinnerService$BinderService;->printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p6, p3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_f
    const/4 p1, 0x0

    .line 1144
    aget-object p4, p4, p1

    .line 1145
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "repin"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p4, p5, p1

    const-string p1, "Unknown pinner command: %s. Supported commands: repin"

    .line 1150
    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/PinnerService$BinderService;->printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p6, p3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 1147
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/PinnerService$BinderService;->repin()V

    .line 1156
    invoke-virtual {p6, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 4

    .line 1130
    new-instance p0, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1131
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final repin()V
    .registers 2

    .line 1124
    iget-object v0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-$$Nest$msendUnpinAppsMessage(Lcom/android/server/PinnerService;)V

    .line 1126
    iget-object p0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/PinnerService;->-$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/PinnerService;I)V

    return-void
.end method
