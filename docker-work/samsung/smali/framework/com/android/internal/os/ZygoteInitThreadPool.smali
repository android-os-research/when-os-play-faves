.class Lcom/android/internal/os/ZygoteInitThreadPool;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static blacklist PARALLEL_THREAD_COUNT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ZygoteInitThreadPool"

.field private static blacklist TIMEOUT:I

.field private static blacklist hasStarted:Z


# instance fields
.field blacklist each_preload_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isSystemServer:Z

.field blacklist preload_class_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist threads:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1146
    nop

    .line 1147
    const-string v0, "persist.zit.threadcount"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ZygoteInitThreadPool;->PARALLEL_THREAD_COUNT:I

    .line 1148
    const-string v0, "persist.zit.timeout"

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ZygoteInitThreadPool;->TIMEOUT:I

    .line 1149
    const-string v0, "persist.zit.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInitThreadPool;->DEBUG:Z

    .line 1150
    sput-boolean v1, Lcom/android/internal/os/ZygoteInitThreadPool;->hasStarted:Z

    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 6
    .param p1, "SystemServer"    # Z

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->preload_class_list:Ljava/util/ArrayList;

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.graphics.Typeface"

    const-string v2, "com.android.internal.telephony.GsmAlphabet"

    const-string v3, "android.icu.text.AnyTransliterator"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->each_preload_list:Ljava/util/ArrayList;

    .line 1145
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set ZygoteInitThreadPool as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/os/ZygoteInitThreadPool;->PARALLEL_THREAD_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->each_preload_list:Ljava/util/ArrayList;

    .line 1155
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    const-string v1, "ZygoteInitThreadPool"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->isSystemServer:Z

    .line 1157
    return-void
.end method

.method private blacklist WaitUntilAllFinishTimeout(I)V
    .registers 18
    .param p1, "timeout"    # I

    .line 1197
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "false"

    const-string v4, "persist.zit.try"

    const-string v5, "Done preloading"

    const-string v6, "ZygoteInitThreadPool"

    const/16 v7, 0x14

    .line 1198
    .local v7, "sleepSlot":I
    move/from16 v0, p1

    move v8, v0

    .line 1201
    .local v8, "curTotalSleep":I
    :goto_11
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInitThreadPool;->checkIfAllFinished()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1202
    sget-boolean v0, Lcom/android/internal/os/ZygoteInitThreadPool;->DEBUG:Z

    if-eqz v0, :cond_46

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sleep for "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " / "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_46
    int-to-long v10, v7

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 1207
    if-gez v8, :cond_c8

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@Time out! kill itself! ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, v1, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Thread;

    .line 1211
    .local v10, "thread":Ljava/lang/Thread;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*******Backtrace of Thread: Preload for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " *******"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    .line 1213
    .local v11, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v12, v11

    const/4 v13, 0x0

    :goto_a4
    if-ge v13, v12, :cond_c6

    aget-object v14, v11, v13

    .line 1214
    .local v14, "log":Ljava/lang/StackTraceElement;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_c2} :catch_ec
    .catch Ljava/util/ConcurrentModificationException; {:try_start_11 .. :try_end_c2} :catch_e2
    .catchall {:try_start_11 .. :try_end_c2} :catchall_e0

    .line 1213
    nop

    .end local v14    # "log":Ljava/lang/StackTraceElement;
    add-int/lit8 v13, v13, 0x1

    goto :goto_a4

    .line 1216
    .end local v10    # "thread":Ljava/lang/Thread;
    .end local v11    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_c6
    goto :goto_72

    .line 1218
    :cond_c7
    goto :goto_cb

    .line 1220
    :cond_c8
    sub-int/2addr v8, v7

    goto/16 :goto_11

    .line 1228
    :cond_cb
    :goto_cb
    if-gez v8, :cond_dc

    .line 1229
    :goto_cd
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1232
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1234
    :cond_dc
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    goto :goto_f6

    .line 1228
    :catchall_e0
    move-exception v0

    goto :goto_f7

    .line 1225
    :catch_e2
    move-exception v0

    .line 1226
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    :try_start_e3
    const-string v9, "Zygote init thread throws Exception"

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    nop

    .end local v0    # "cme":Ljava/util/ConcurrentModificationException;
    if-gez v8, :cond_dc

    .line 1229
    goto :goto_cd

    .line 1223
    :catch_ec
    move-exception v0

    .line 1224
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v9, "Zygote init thread has been Interrupted"

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f2
    .catchall {:try_start_e3 .. :try_end_f2} :catchall_e0

    .line 1228
    nop

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    if-gez v8, :cond_dc

    .line 1229
    goto :goto_cd

    .line 1236
    :goto_f6
    return-void

    .line 1228
    :goto_f7
    if-gez v8, :cond_108

    .line 1229
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1232
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1234
    :cond_108
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    throw v0
.end method

.method private blacklist checkIfAllFinished()Z
    .registers 4

    .line 1239
    sget-boolean v0, Lcom/android/internal/os/ZygoteInitThreadPool;->hasStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1240
    const-string v0, "ZygoteInitThreadPool"

    const-string v2, "Any ZIT threads haven\'t been started!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return v1

    .line 1243
    :cond_d
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private blacklist preloadInternal(II)V
    .registers 21
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1280
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ~ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1282
    .local v4, "threadName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1283
    .local v5, "startTime":J
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/os/ZygoteInitThreadPool;->hasStarted:Z

    .line 1284
    move/from16 v0, p1

    move v8, v0

    .local v8, "i":I
    :goto_2c
    const-string v9, "ZygoteInitThreadPool"

    if-ge v8, v2, :cond_150

    .line 1285
    iget-object v0, v1, Lcom/android/internal/os/ZygoteInitThreadPool;->preload_class_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1286
    .local v10, "line":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1287
    const-wide/16 v11, 0x4000

    invoke-static {v11, v12, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1289
    :try_start_62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1290
    .local v13, "beginTime":J
    sget-boolean v0, Lcom/android/internal/os/ZygoteInitThreadPool;->DEBUG:Z
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_62 .. :try_end_68} :catch_12e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_62 .. :try_end_68} :catch_10a
    .catchall {:try_start_62 .. :try_end_68} :catchall_d5

    if-eqz v0, :cond_95

    .line 1291
    :try_start_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Preloading "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "..."

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_86} :catch_90
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6a .. :try_end_86} :catch_8b
    .catchall {:try_start_6a .. :try_end_86} :catchall_87

    goto :goto_95

    .line 1302
    .end local v13    # "beginTime":J
    :catchall_87
    move-exception v0

    move/from16 v17, v8

    goto :goto_d8

    .line 1300
    :catch_8b
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_10d

    .line 1298
    :catch_90
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_131

    .line 1293
    .restart local v13    # "beginTime":J
    :cond_95
    :goto_95
    const/4 v0, 0x0

    :try_start_96
    invoke-static {v10, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 1294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15
    :try_end_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_96 .. :try_end_9d} :catch_12e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_96 .. :try_end_9d} :catch_10a
    .catchall {:try_start_96 .. :try_end_9d} :catchall_d5

    move/from16 v17, v8

    .end local v8    # "i":I
    .local v17, "i":I
    sub-long v7, v15, v13

    .line 1295
    .local v7, "timeToLoad":J
    const-wide/16 v15, 0x32

    cmp-long v0, v7, v15

    if-ltz v0, :cond_147

    .line 1296
    :try_start_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " was preloaded took to much time: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "ms"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a7 .. :try_end_cd} :catch_d3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a7 .. :try_end_cd} :catch_d1
    .catchall {:try_start_a7 .. :try_end_cd} :catchall_cf

    goto/16 :goto_147

    .line 1302
    .end local v7    # "timeToLoad":J
    .end local v13    # "beginTime":J
    :catchall_cf
    move-exception v0

    goto :goto_d8

    .line 1300
    :catch_d1
    move-exception v0

    goto :goto_10d

    .line 1298
    :catch_d3
    move-exception v0

    goto :goto_131

    .line 1302
    .end local v17    # "i":I
    .restart local v8    # "i":I
    :catchall_d5
    move-exception v0

    move/from16 v17, v8

    .line 1303
    .end local v8    # "i":I
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v17    # "i":I
    :goto_d8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    instance-of v7, v0, Ljava/lang/Error;

    if-nez v7, :cond_106

    .line 1307
    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_100

    .line 1308
    move-object v7, v0

    check-cast v7, Ljava/lang/RuntimeException;

    throw v7

    .line 1310
    :cond_100
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1305
    :cond_106
    move-object v7, v0

    check-cast v7, Ljava/lang/Error;

    throw v7

    .line 1300
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v17    # "i":I
    .restart local v8    # "i":I
    :catch_10a
    move-exception v0

    move/from16 v17, v8

    .line 1301
    .end local v8    # "i":I
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v17    # "i":I
    :goto_10d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_147

    .line 1298
    .end local v17    # "i":I
    .restart local v8    # "i":I
    :catch_12e
    move-exception v0

    move/from16 v17, v8

    .line 1299
    .end local v8    # "i":I
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v17    # "i":I
    :goto_131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class not found for preloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_147
    :goto_147
    nop

    .line 1312
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1284
    .end local v10    # "line":Ljava/lang/String;
    add-int/lit8 v8, v17, 0x1

    const/4 v7, 0x1

    .end local v17    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_2c

    :cond_150
    move/from16 v17, v8

    .line 1314
    .end local v8    # "i":I
    iget-boolean v0, v1, Lcom/android/internal/os/ZygoteInitThreadPool;->isSystemServer:Z

    if-eqz v0, :cond_181

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Completed : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " took "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "ms "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_181
    iget-object v0, v1, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1319
    return-void
.end method

.method private blacklist preloadInternal(Ljava/lang/String;)V
    .registers 11
    .param p1, "line"    # Ljava/lang/String;

    .line 1247
    const-string v0, "ZygoteInitThreadPool"

    const/16 v1, -0x10

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1248
    move-object v1, p1

    .line 1249
    .local v1, "threadName":Ljava/lang/String;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/os/ZygoteInitThreadPool;->hasStarted:Z

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1251
    .local v3, "startTime":J
    const-wide/16 v5, 0x4000

    invoke-static {v5, v6, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1253
    :try_start_14
    sget-boolean v7, Lcom/android/internal/os/ZygoteInitThreadPool;->DEBUG:Z

    if-eqz v7, :cond_34

    .line 1254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_34
    const/4 v7, 0x0

    invoke-static {p1, v2, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_38} :catch_8e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_38} :catch_6c
    .catchall {:try_start_14 .. :try_end_38} :catchall_39

    goto :goto_a5

    .line 1261
    :catchall_39
    move-exception v2

    .line 1262
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    instance-of v0, v2, Ljava/lang/Error;

    if-nez v0, :cond_68

    .line 1266
    instance-of v0, v2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_62

    .line 1267
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1269
    :cond_62
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1264
    :cond_68
    move-object v0, v2

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1259
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_6c
    move-exception v2

    .line 1260
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_a5

    .line 1257
    :catch_8e
    move-exception v2

    .line 1258
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class not found for preloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_a5
    nop

    .line 1271
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1272
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->isSystemServer:Z

    if-eqz v2, :cond_d8

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " took "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1273
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_d8
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1277
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$parallelPreloadTimeout$0$com-android-internal-os-ZygoteInitThreadPool(I)V
    .registers 3
    .param p1, "s"    # I

    .line 1180
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->each_preload_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/os/ZygoteInitThreadPool;->preloadInternal(Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$parallelPreloadTimeout$1$com-android-internal-os-ZygoteInitThreadPool(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1188
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteInitThreadPool;->preloadInternal(II)V

    return-void
.end method

.method blacklist parallelPreloadTimeout()Z
    .registers 9

    .line 1178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->each_preload_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1179
    move v1, v0

    .line 1180
    .local v1, "s":I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/os/ZygoteInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/os/ZygoteInitThreadPool$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/ZygoteInitThreadPool;I)V

    iget-object v4, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->each_preload_list:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1181
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1178
    .end local v1    # "s":I
    .end local v2    # "thread":Ljava/lang/Thread;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1184
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->preload_class_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/internal/os/ZygoteInitThreadPool;->PARALLEL_THREAD_COUNT:I

    div-int/2addr v0, v1

    .line 1185
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    sget v2, Lcom/android/internal/os/ZygoteInitThreadPool;->PARALLEL_THREAD_COUNT:I

    if-ge v1, v2, :cond_70

    .line 1186
    mul-int v3, v1, v0

    .line 1187
    .local v3, "start":I
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_42

    iget-object v2, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->preload_class_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_44

    :cond_42
    add-int v2, v3, v0

    .line 1188
    .local v2, "end":I
    :goto_44
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/os/ZygoteInitThreadPool$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/internal/os/ZygoteInitThreadPool$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/ZygoteInitThreadPool;II)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1189
    .local v4, "thread":Ljava/lang/Thread;
    iget-object v5, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1190
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1185
    .end local v2    # "end":I
    .end local v3    # "start":I
    .end local v4    # "thread":Ljava/lang/Thread;
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1192
    .end local v1    # "i":I
    :cond_70
    sget v1, Lcom/android/internal/os/ZygoteInitThreadPool;->TIMEOUT:I

    invoke-direct {p0, v1}, Lcom/android/internal/os/ZygoteInitThreadPool;->WaitUntilAllFinishTimeout(I)V

    .line 1193
    const/4 v1, 0x0

    return v1
.end method

.method blacklist preparePreloadClassList(Ljava/io/BufferedReader;)I
    .registers 7
    .param p1, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, "count":I
    :cond_6
    :goto_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 1165
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1166
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1167
    goto :goto_6

    .line 1169
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 1170
    iget-object v2, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->preload_class_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1172
    .end local v1    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->each_preload_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1173
    .local v3, "each_preload_entry":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->preload_class_list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    .end local v3    # "each_preload_entry":Ljava/lang/String;
    goto :goto_30

    .line 1175
    :cond_42
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1323
    const-string v0, "!@*******UNFINISHED PRELOAD CLASSES : {  "

    .line 1324
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 1326
    if-eqz v2, :cond_17

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1327
    :cond_17
    iget-object v3, p0, Lcom/android/internal/os/ZygoteInitThreadPool;->threads:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1325
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1329
    .end local v2    # "i":I
    :cond_29
    const-string v2, "  }*******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
