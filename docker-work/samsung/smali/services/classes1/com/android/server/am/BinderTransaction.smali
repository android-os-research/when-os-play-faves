.class public Lcom/android/server/am/BinderTransaction;
.super Ljava/lang/Object;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    }
.end annotation


# static fields
.field public static final BINDER_PROCS_COLLECTOR_TIMEOUT:J = 0x7530L

.field public static final BINDER_TRANSACTION_GROUP_DIRECTION:I = 0x1

.field public static final BINDER_TRANSACTION_GROUP_TO_PID:I = 0x6

.field public static LOG_ERROR_HEADER:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String; = null

.field public static LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String; = null

.field public static final PID_PROC_NATIVE:I = 0x1

.field public static final PID_PROC_UNKNOWN:I = -0x1

.field public static final PID_PROC_VM:I = 0x0

.field public static final REGEX_BINDER_TRANSACTION:Ljava/lang/String; = "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

.field public static final TAG:Ljava/lang/String; = "BinderTransaction"

.field public static sBinderPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static bridge synthetic -$$Nest$mfindBinderTransactions(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BinderTransaction;->findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeBinderTransactionsErrorLog(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeBinderTransactionsLogFooter(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeBinderTransactionsLogHeader(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mseparatePidsByProcessType(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BinderTransaction;->separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    const-string v0, "ERROR: "

    .line 59
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    const-string v0, "failed to get the binder transaction info of pid "

    .line 60
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    const-string v0, "failed to get the process types, stack traces will not be added"

    .line 62
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    const-string v0, "failed to get whole binder transaction info from pid "

    .line 64
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    const-string v0, "binder proc file not exist. drop pid "

    .line 66
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    const-string v0, "binder proc file is not readable. drop pid "

    .line 68
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    const-string v0, "binder proc file not found. drop pid "

    .line 70
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    const-string v0, "binder proc file io error. drop pid "

    .line 72
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    const-string v0, "could not get the pid of zygote"

    .line 74
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    const-string v0, "could not get the process type. drop pid "

    .line 76
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    .line 190
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 191
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 194
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BinderTransaction;->getBinderProcFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v9, 0x0

    const-string v10, "BinderTransaction"

    if-nez v1, :cond_4a

    const-string v0, "Binder proc file not exist."

    .line 197
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v9

    .line 202
    :cond_4a
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_14e

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_58

    goto/16 :goto_14e

    :cond_58
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 214
    :try_start_5a
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5f} :catch_109
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5f} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_b7
    .catchall {:try_start_5a .. :try_end_5f} :catchall_b2

    .line 215
    :try_start_5f
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_64} :catch_af
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_a7
    .catchall {:try_start_5f .. :try_end_64} :catchall_a3

    .line 216
    :try_start_64
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_69} :catch_a0
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_9b
    .catchall {:try_start_64 .. :try_end_69} :catchall_13d

    .line 219
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_84

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/server/am/BinderTransaction;->matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_69

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 222
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BinderTransaction;->parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_83} :catch_97
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_83} :catch_95
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_83} :catch_92
    .catchall {:try_start_69 .. :try_end_83} :catchall_8f

    goto :goto_69

    .line 241
    :cond_84
    :try_start_84
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_87

    .line 244
    :catch_87
    :try_start_87
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8a

    .line 247
    :catch_8a
    :try_start_8a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_13a

    goto/16 :goto_13a

    :catchall_8f
    move-exception v0

    goto/16 :goto_107

    :catch_92
    move-exception v0

    move-object v1, v14

    goto :goto_ba

    :catch_95
    move-exception v0

    goto :goto_ad

    :catch_97
    move-exception v0

    move-object v1, v14

    goto/16 :goto_10c

    :catch_9b
    move-exception v0

    goto :goto_ba

    :catch_9d
    move-exception v0

    move-object v14, v1

    goto :goto_ad

    :catch_a0
    move-exception v0

    goto/16 :goto_10c

    :catchall_a3
    move-exception v0

    move-object v13, v1

    goto/16 :goto_13e

    :catch_a7
    move-exception v0

    move-object v13, v1

    goto :goto_ba

    :catch_aa
    move-exception v0

    move-object v13, v1

    move-object v14, v13

    :goto_ad
    move-object v1, v12

    goto :goto_d4

    :catch_af
    move-exception v0

    move-object v13, v1

    goto :goto_10c

    :catchall_b2
    move-exception v0

    move-object v12, v1

    move-object v13, v12

    goto/16 :goto_13e

    :catch_b7
    move-exception v0

    move-object v12, v1

    move-object v13, v12

    :goto_ba
    :try_start_ba
    const-string v2, "Unexpected error during binder proc file processing."

    .line 237
    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_13d

    if-eqz v1, :cond_c4

    .line 241
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c4

    :catch_c4
    :cond_c4
    if-eqz v13, :cond_c9

    .line 244
    :try_start_c6
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_c9

    :catch_c9
    :cond_c9
    if-eqz v12, :cond_ce

    .line 247
    :goto_cb
    :try_start_cb
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_ce

    :catch_ce
    :cond_ce
    :goto_ce
    move v9, v11

    goto/16 :goto_13a

    :catch_d1
    move-exception v0

    move-object v13, v1

    move-object v14, v13

    :goto_d4
    :try_start_d4
    const-string v2, "Binder proc file read io error."

    .line 231
    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f5
    .catchall {:try_start_d4 .. :try_end_f5} :catchall_105

    if-eqz v14, :cond_fa

    .line 241
    :try_start_f7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fa

    :catch_fa
    :cond_fa
    if-eqz v13, :cond_ff

    .line 244
    :try_start_fc
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_ff

    :catch_ff
    :cond_ff
    if-eqz v1, :cond_ce

    .line 247
    :try_start_101
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_ce

    goto :goto_ce

    :catchall_105
    move-exception v0

    move-object v12, v1

    :goto_107
    move-object v1, v14

    goto :goto_13e

    :catch_109
    move-exception v0

    move-object v12, v1

    move-object v13, v12

    :goto_10c
    :try_start_10c
    const-string v2, "Binder proc file not found. "

    .line 226
    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12d
    .catchall {:try_start_10c .. :try_end_12d} :catchall_13d

    if-eqz v1, :cond_132

    .line 241
    :try_start_12f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_132

    :catch_132
    :cond_132
    if-eqz v13, :cond_137

    .line 244
    :try_start_134
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_137

    :catch_137
    :cond_137
    if-eqz v12, :cond_ce

    goto :goto_cb

    :catch_13a
    :goto_13a
    xor-int/lit8 v0, v9, 0x1

    return v0

    :catchall_13d
    move-exception v0

    :goto_13e
    if-eqz v1, :cond_143

    .line 241
    :try_start_140
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_143

    :catch_143
    :cond_143
    if-eqz v13, :cond_148

    .line 244
    :try_start_145
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_148

    :catch_148
    :cond_148
    if-eqz v12, :cond_14d

    .line 247
    :try_start_14a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_14d

    .line 249
    :catch_14d
    :cond_14d
    throw v0

    :cond_14e
    :goto_14e
    const-string v0, "Binder proc file is not readable."

    .line 203
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v9
.end method

.method public getBinderProcFileName(I)Ljava/lang/String;
    .registers 3

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/dev/binderfs/binder_logs/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p0

    .line 350
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .registers 8

    const-string v0, "BinderTransaction"

    .line 109
    new-instance v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v1}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    .line 111
    new-instance v2, Lcom/android/server/am/BinderTransaction$1;

    const-string v3, "BinderProcsCollector"

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/android/server/am/BinderTransaction$1;-><init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0x7530

    const/4 v5, 0x0

    .line 151
    :try_start_14
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "ERROR! binderProc thread timed out! failed to get binder info."

    .line 154
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_22} :catch_28
    .catchall {:try_start_14 .. :try_end_22} :catchall_26

    goto :goto_2d

    :cond_23
    const/4 v0, 0x1

    move v5, v0

    goto :goto_2d

    :catchall_26
    move-exception p0

    goto :goto_66

    :catch_28
    :try_start_28
    const-string v2, "ERROR! binderProc thread has interrupted!"

    .line 160
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_26

    :goto_2d
    if-eqz v5, :cond_30

    goto :goto_65

    .line 173
    :cond_30
    new-instance v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v1}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    .line 176
    iget-object v0, v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_65
    return-object v1

    .line 162
    :goto_66
    throw p0
.end method

.method public getParentPid(I)I
    .registers 2

    .line 358
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result p0

    return p0
.end method

.method public getPidsForCommands([Ljava/lang/String;)[I
    .registers 2

    .line 354
    invoke-static {p1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProcessTypeOfPid(I[I)I
    .registers 6

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->getParentPid(I)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_16

    .line 311
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p1, :cond_14

    aget v2, p2, v1

    if-ne p0, v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    return p1
.end method

.method public final makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeBinderTransactionsLogFooter(I)Ljava/lang/String;
    .registers 3

    .line 330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----- end binder transactions "

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -----"

    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeBinderTransactionsLogHeader(I)Ljava/lang/String;
    .registers 3

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----- binder transactions from pid "

    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -----"

    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 2

    .line 255
    sget-object p0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public final parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x1

    .line 262
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 264
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 267
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_33

    const-string/jumbo p2, "outgoing"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 271
    invoke-virtual {p4, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 272
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method public final separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/BinderTransaction$BinderProcsInfo;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "zygote"

    const-string/jumbo v1, "zygote64"

    .line 281
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "BinderTransaction"

    if-eqz v0, :cond_77

    .line 283
    array-length v2, v0

    if-gtz v2, :cond_16

    goto :goto_77

    .line 292
    :cond_16
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 293
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/BinderTransaction;->getProcessTypeOfPid(I[I)I

    move-result v4

    if-nez v4, :cond_37

    .line 295
    iget-object v3, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_37
    if-ne v4, v3, :cond_3f

    .line 297
    iget-object v3, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->nativePids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 300
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get the process type. drop pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_76
    return v3

    :cond_77
    :goto_77
    const-string p1, "Could not get the pid of zygote."

    .line 284
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method
