.class public Lcom/android/server/am/mars/database/MARsComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsComponentTracker$CTHandler;,
        Lcom/android/server/am/mars/database/MARsComponentTracker$MARsCTThread;,
        Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;,
        Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;
    }
.end annotation


# static fields
.field public static final MARS_CTH_UPDATE_CT_INFO_MSG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MARsComponentTracker"


# instance fields
.field public isEnabledCT:Z

.field public mCTHandler:Lcom/android/server/am/mars/database/MARsComponentTracker$CTHandler;

.field public mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mEnabledEventLog:Z


# direct methods
.method public static bridge synthetic -$$Nest$fputmCTHandler(Lcom/android/server/am/mars/database/MARsComponentTracker;Lcom/android/server/am/mars/database/MARsComponentTracker$CTHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mCTHandler:Lcom/android/server/am/mars/database/MARsComponentTracker$CTHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mEnabledEventLog:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsComponentTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsComponentTracker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;
    .registers 1

    .line 45
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dumpMARsCTHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 10

    const-string p1, ""

    .line 218
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "ACTIVITY MANAGER MARs CT HISTORY"

    .line 219
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->callerPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->callerUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->calleePkgName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->calleeUserId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->hostingType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->action:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->count:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 232
    :cond_cb
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEnabled()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    return p0
.end method

.method public getEnabledEventLog()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mEnabledEventLog:Z

    return p0
.end method

.method public getListSize()I
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsComponentTracker;->setContext(Landroid/content/Context;)V

    .line 50
    new-instance p1, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsCTThread;

    const-string v0, "MARsCTThread"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsCTThread;-><init>(Lcom/android/server/am/mars/database/MARsComponentTracker;Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public listClear()V
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public sendCTInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .line 176
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_b

    return-void

    .line 180
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "currentLevel"

    .line 182
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "calleeUserId"

    .line 183
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "callerUserId"

    .line 184
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "calleePkgName"

    .line 185
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callerPkgName"

    .line 186
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "hostingType"

    .line 187
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "action"

    .line 188
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "time"

    .line 189
    invoke-virtual {v0, p1, p8, p9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mCTHandler:Lcom/android/server/am/mars/database/MARsComponentTracker$CTHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mCTHandler:Lcom/android/server/am/mars/database/MARsComponentTracker$CTHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    if-nez p1, :cond_7

    .line 68
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 69
    :cond_7
    iput-boolean p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    return-void
.end method

.method public setEnabledEventLog(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mEnabledEventLog:Z

    return-void
.end method

.method public trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 15

    const-string p0, "activity"

    .line 238
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x1

    if-ne p5, p0, :cond_f

    if-eqz p7, :cond_f

    return-void

    .line 245
    :cond_f
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p0

    if-eqz p0, :cond_21

    goto/16 :goto_8b

    .line 249
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    if-eqz p1, :cond_35

    if-nez p5, :cond_8b

    .line 254
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    move-object v1, p4

    move-object v2, p3

    move v3, p1

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_8b

    :cond_35
    const-string p0, " at "

    const-string p2, " start process "

    const-string v6, "MARsComponentTracker"

    if-nez p5, :cond_5f

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "markAppStartUpResult: auto run off case : "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 260
    :cond_5f
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    move-object v1, p4

    move-object v2, p3

    move v3, p1

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "markAppStartUpResult: auto run on case : "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    return-void
.end method

.method public updateComponentTrackerInfo(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 29

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 200
    iget-object v0, v11, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;

    const-string v9, ", action : "

    const-string v8, ", type : "

    const-string v7, ", caller: "

    const-string v6, "MARsComponentTracker"

    if-eqz v0, :cond_79

    move/from16 v4, p1

    .line 202
    iput v4, v0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->currentLevel:I

    .line 203
    iget v1, v0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->count:I

    move-wide/from16 v2, p8

    .line 204
    iput-wide v2, v0, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;->time:J

    .line 205
    iget-boolean v0, v11, Lcom/android/server/am/mars/database/MARsComponentTracker;->mEnabledEventLog:Z

    if-eqz v0, :cond_d6

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateComponentTrackerInfo--update....Callee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    :cond_79
    move/from16 v4, p1

    move-wide/from16 v2, p8

    .line 209
    new-instance v5, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v15, v5

    move/from16 v5, p2

    move-object/from16 v16, v6

    move/from16 v6, p3

    move-object v14, v7

    move-object/from16 v7, p4

    move-object/from16 v17, v8

    move-object/from16 v8, p5

    move-object/from16 v18, v9

    move-object/from16 v9, p6

    move-object v13, v10

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/mars/database/MARsComponentTracker$ComponentTracker;-><init>(Lcom/android/server/am/mars/database/MARsComponentTracker;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, v11, Lcom/android/server/am/mars/database/MARsComponentTracker;->mComponentTrackerList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-boolean v0, v11, Lcom/android/server/am/mars/database/MARsComponentTracker;->mEnabledEventLog:Z

    if-eqz v0, :cond_d6

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateComponentTrackerInfo--Callee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    :goto_d6
    return-void
.end method
