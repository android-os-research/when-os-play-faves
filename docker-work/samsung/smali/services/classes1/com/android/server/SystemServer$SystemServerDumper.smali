.class public final Lcom/android/server/SystemServer$SystemServerDumper;
.super Landroid/os/Binder;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemServerDumper"
.end annotation


# instance fields
.field public final mDumpables:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDumpables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public static bridge synthetic -$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;->addDumpable(Landroid/util/Dumpable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 3

    .line 1042
    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1044
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;)V

    return-void
.end method


# virtual methods
.method public final addDumpable(Landroid/util/Dumpable;)V
    .registers 4

    .line 1095
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1096
    :try_start_3
    iget-object p0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 1049
    array-length v1, p3

    if-lez v1, :cond_9

    move v1, p1

    goto :goto_a

    :cond_9
    move v1, v0

    .line 1051
    :goto_a
    iget-object v2, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v2

    if-eqz v1, :cond_34

    :try_start_f
    const-string v3, "--list"

    .line 1052
    aget-object v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1053
    iget-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_1f
    if-ge v0, p1, :cond_2f

    .line 1055
    iget-object p3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1057
    :cond_2f
    monitor-exit v2

    return-void

    :catchall_31
    move-exception p0

    goto/16 :goto_c5

    :cond_34
    if-eqz v1, :cond_82

    const-string v1, "--name"

    .line 1060
    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1061
    array-length v1, p3

    const/4 v3, 0x2

    if-ge v1, v3, :cond_4b

    const-string p0, "Must pass at least one argument to --name"

    .line 1062
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    monitor-exit v2

    return-void

    .line 1065
    :cond_4b
    aget-object v1, p3, p1

    .line 1066
    iget-object p0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Dumpable;

    if-nez p0, :cond_62

    const-string p0, "No dummpable named %s\n"

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 1068
    invoke-virtual {p2, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1069
    monitor-exit v2

    return-void

    .line 1072
    :cond_62
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_f .. :try_end_69} :catchall_31

    .line 1074
    :try_start_69
    array-length p2, p3

    invoke-static {p3, v3, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1075
    invoke-interface {p0, p1, p2}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_78

    .line 1076
    :try_start_73
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V

    .line 1077
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_31

    return-void

    :catchall_78
    move-exception p0

    .line 1072
    :try_start_79
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception p1

    :try_start_7e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_81
    throw p0

    .line 1080
    :cond_82
    iget-object v1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1081
    new-instance v3, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_31

    move p2, v0

    :goto_90
    if-ge p2, v1, :cond_c0

    .line 1083
    :try_start_92
    iget-object v4, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Dumpable;

    const-string v5, "%s:\n"

    new-array v6, p1, [Ljava/lang/Object;

    .line 1084
    invoke-interface {v4}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1085
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1086
    invoke-interface {v4, v3, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1088
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_b3
    .catchall {:try_start_92 .. :try_end_b3} :catchall_b6

    add-int/lit8 p2, p2, 0x1

    goto :goto_90

    :catchall_b6
    move-exception p0

    .line 1081
    :try_start_b7
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    goto :goto_bf

    :catchall_bb
    move-exception p1

    :try_start_bc
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_bf
    throw p0

    .line 1090
    :cond_c0
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V

    .line 1091
    monitor-exit v2

    return-void

    :goto_c5
    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_31

    throw p0
.end method
