.class public final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceDumper"
.end annotation


# instance fields
.field public final args:[Ljava/lang/String;

.field public final dumpAll:Z

.field public final dumpPackage:Ljava/lang/String;

.field public final fd:Ljava/io/FileDescriptor;

.field public final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field public needSep:Z

.field public final nowReal:J

.field public printed:Z

.field public printedAnything:Z

.field public final pw:Ljava/io/PrintWriter;

.field public final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 12

    .line 6213
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 6202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    const/4 v0, 0x0

    .line 6204
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6205
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6206
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6214
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    .line 6215
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 6216
    iput-object p4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    .line 6217
    iput-boolean p6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 6218
    iput-object p7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 6219
    new-instance p2, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {p2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 6220
    invoke-virtual {p2, p4, p5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 6222
    iget-object p2, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p2}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p2

    .line 6223
    array-length p3, p2

    move p4, v0

    :goto_37
    if-ge p4, p3, :cond_7b

    aget p5, p2, p4

    .line 6224
    invoke-static {p1, p5}, Lcom/android/server/am/ActiveServices;->-$$Nest$mgetServiceMapLocked(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p5

    .line 6225
    iget-object p6, p5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result p6

    if-lez p6, :cond_78

    move p6, v0

    .line 6226
    :goto_48
    iget-object v1, p5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p6, v1, :cond_78

    .line 6227
    iget-object v1, p5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 6228
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_75

    :cond_63
    if-eqz p7, :cond_70

    .line 6231
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_75

    .line 6234
    :cond_70
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_75
    add-int/lit8 p6, p6, 0x1

    goto :goto_48

    :cond_78
    add-int/lit8 p4, p4, 0x1

    goto :goto_37

    :cond_7b
    return-void
.end method


# virtual methods
.method public final dumpHeaderLocked()V
    .registers 3

    .line 6241
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6242
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 6243
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  Last ANR service:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6244
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6245
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_22
    return-void
.end method

.method public dumpLocked()V
    .registers 9

    .line 6250
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 6253
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 6254
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_68

    aget v4, v0, v3

    move v5, v2

    .line 6257
    :goto_15
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2c

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_2c

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 6260
    :cond_2c
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6261
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5a

    .line 6262
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6263
    :goto_38
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_53

    .line 6264
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    add-int/lit8 v5, v5, 0x1

    .line 6266
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_4f

    goto :goto_53

    .line 6269
    :cond_4f
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_38

    .line 6271
    :cond_53
    :goto_53
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6274
    :cond_5a
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5d} :catch_60

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catch_60
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    .line 6277
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6280
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    return-void
.end method

.method public final dumpRemainsLocked()V
    .registers 19

    move-object/from16 v0, p0

    .line 6448
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "    "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_71

    .line 6449
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v1, v3

    .line 6450
    :goto_13
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6f

    .line 6451
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 6452
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_6c

    .line 6455
    :cond_32
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_41

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_6c

    .line 6458
    :cond_41
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6459
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_5b

    .line 6460
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_50

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 6461
    :cond_50
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6462
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Pending services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6463
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6465
    :cond_5b
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Pending "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6466
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 6468
    :cond_6f
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6471
    :cond_71
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_dc

    .line 6472
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v1, v3

    .line 6473
    :goto_7e
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_da

    .line 6474
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 6475
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_9d

    goto :goto_d7

    .line 6478
    :cond_9d
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_ac

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    goto :goto_d7

    .line 6481
    :cond_ac
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6482
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_c6

    .line 6483
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_bb

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 6484
    :cond_bb
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6485
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Restarting services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6486
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6488
    :cond_c6
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Restarting "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6489
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 6491
    :cond_da
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6494
    :cond_dc
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_147

    .line 6495
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v1, v3

    .line 6496
    :goto_e9
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_145

    .line 6497
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 6498
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_108

    goto :goto_142

    .line 6501
    :cond_108
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_117

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_117

    goto :goto_142

    .line 6504
    :cond_117
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6505
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_131

    .line 6506
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_126

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 6507
    :cond_126
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6508
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Destroying services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6509
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6511
    :cond_131
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Destroy "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6512
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_142
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    .line 6514
    :cond_145
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6517
    :cond_147
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v1, :cond_1c4

    .line 6518
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    move v1, v3

    .line 6519
    :goto_14e
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_1c4

    .line 6520
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move v6, v3

    .line 6521
    :goto_163
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1c1

    .line 6522
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 6523
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_17e

    goto :goto_1be

    .line 6526
    :cond_17e
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v8, :cond_193

    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_1be

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6527
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_193

    goto :goto_1be

    .line 6530
    :cond_193
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6531
    iget-boolean v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v8, :cond_1ad

    .line 6532
    iget-boolean v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v8, :cond_1a2

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 6533
    :cond_1a2
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6534
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v9, "  Connection bindings to services:"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6535
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6537
    :cond_1ad
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v9, "  * "

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6538
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1be
    :goto_1be
    add-int/lit8 v6, v6, 0x1

    goto :goto_163

    :cond_1c1
    add-int/lit8 v1, v1, 0x1

    goto :goto_14e

    .line 6543
    :cond_1c4
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v1, :cond_30c

    .line 6544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6545
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    .line 6546
    array-length v7, v1

    move v8, v3

    :goto_1da
    if-ge v8, v7, :cond_30c

    aget v9, v1, v8

    .line 6548
    iget-object v10, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v10, v10, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v10, :cond_1ec

    goto/16 :goto_307

    .line 6552
    :cond_1ec
    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v4

    move v12, v3

    :goto_1f4
    const-string v13, ":"

    if-ltz v11, :cond_2d9

    .line 6553
    iget-object v14, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 6554
    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v15, :cond_20e

    iget-object v3, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20e

    goto/16 :goto_2d4

    :cond_20e
    if-nez v12, :cond_22f

    .line 6559
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6560
    iget-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v3, :cond_21b

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 6561
    :cond_21b
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6562
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "Active foreground apps - user "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6563
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 6564
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v12, v4

    .line 6566
    :cond_22f
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, "  #"

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6567
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 6568
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, ": "

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6569
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6570
    iget-object v3, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_25b

    .line 6571
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, "    mLabel="

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6572
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6574
    :cond_25b
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, "    mNumActive="

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6575
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 6576
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, " mAppOnTop="

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6577
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 6578
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, " mShownWhileTop="

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6579
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 6580
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, " mShownWhileScreenOn="

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6581
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Z)V

    .line 6582
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, "    mStartTime="

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v3, v12

    .line 6583
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    sub-long/2addr v12, v5

    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v12, v13, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6584
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, " mStartVisibleTime="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6585
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    sub-long/2addr v12, v5

    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v12, v13, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6586
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 6587
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-eqz v12, :cond_2d3

    .line 6588
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v13, "    mEndTime="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6589
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    sub-long/2addr v12, v5

    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v12, v13, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6590
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    :cond_2d3
    move v12, v3

    :goto_2d4
    add-int/lit8 v11, v11, -0x1

    const/4 v3, 0x0

    goto/16 :goto_1f4

    .line 6593
    :cond_2d9
    invoke-virtual {v10}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v3

    if-eqz v3, :cond_307

    .line 6594
    iget-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v3, :cond_2e8

    .line 6595
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 6597
    :cond_2e8
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6598
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6599
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v11, "  Handler - user "

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6600
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 6601
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6602
    new-instance v3, Landroid/util/PrintWriterPrinter;

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-direct {v3, v9}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v10, v3, v2}, Landroid/os/Handler;->dumpMine(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_307
    :goto_307
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1da

    .line 6607
    :cond_30c
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-nez v1, :cond_317

    .line 6608
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  (nothing)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_317
    return-void
.end method

.method public final dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    .line 6376
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    return-void

    .line 6380
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 6384
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v2, "    Client:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6385
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 6387
    :try_start_18
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_3b

    .line 6389
    :try_start_1d
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    invoke-interface {v0, v2, p1, v3}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const-string p1, "      "

    .line 6390
    invoke-virtual {v1, p1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 6393
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_36

    .line 6395
    :try_start_32
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_5a

    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 6396
    throw p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3b

    .line 6400
    :catch_3b
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v0, "      Got a RemoteException while dumping the service"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a

    :catch_43
    move-exception p1

    .line 6398
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Failure while dumping the service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5a
    const/4 p1, 0x1

    .line 6402
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    return-void
.end method

.method public final dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 9

    .line 6341
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserHeaderLocked(I)V

    .line 6342
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  * "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6343
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6344
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v0, :cond_21

    .line 6345
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    "

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6346
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    goto/16 :goto_c3

    .line 6348
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    app="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6349
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6350
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    created="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6351
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iget-wide v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6352
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " started="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6353
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6354
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " connections="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6355
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 6356
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6357
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_c3

    .line 6358
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    Connections:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 6359
    :goto_70
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_c3

    .line 6360
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v0

    .line 6361
    :goto_7d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c0

    .line 6362
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 6363
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6364
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 6365
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 6364
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6366
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6367
    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 6368
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    if-eqz v4, :cond_b7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_ba

    :cond_b7
    const-string/jumbo v4, "null"

    :goto_ba
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_c3
    :goto_c3
    return-void
.end method

.method public final dumpUserHeaderLocked(I)V
    .registers 6

    .line 6327
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    .line 6328
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v0, :cond_e

    .line 6329
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 6331
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " active services:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6332
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6334
    :cond_2b
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6335
    iget-boolean p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz p1, :cond_36

    .line 6336
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_36
    return-void
.end method

.method public final dumpUserRemainsLocked(I)V
    .registers 11

    .line 6406
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->-$$Nest$mgetServiceMapLocked(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 6407
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6408
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_10
    const-string v4, "  User "

    const/4 v5, 0x1

    if-ge v3, v2, :cond_70

    .line 6409
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 6410
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_28

    goto :goto_6d

    .line 6413
    :cond_28
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v7, :cond_37

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_6d

    .line 6416
    :cond_37
    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v7, :cond_5f

    .line 6417
    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v7, :cond_44

    .line 6418
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 6420
    :cond_44
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " delayed start services:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6421
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6423
    :cond_5f
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6424
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Delayed start "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 6426
    :cond_70
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6427
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_78
    if-ge v1, v2, :cond_d5

    .line 6428
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 6429
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v3, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_8d

    goto :goto_d2

    .line 6432
    :cond_8d
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_9c

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    goto :goto_d2

    .line 6435
    :cond_9c
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_c4

    .line 6436
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v6, :cond_a9

    .line 6437
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 6439
    :cond_a9
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " starting in background:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6440
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6442
    :cond_c4
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 6443
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * Starting bg "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_d5
    return-void
.end method

.method public dumpWithClient()V
    .registers 9

    .line 6284
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6285
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 6286
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 6289
    :try_start_f
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 6290
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_9b

    aget v4, v0, v3

    move v5, v2

    .line 6293
    :goto_21
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_38

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 6296
    :cond_38
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 6297
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 6298
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6299
    :goto_44
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_74

    .line 6300
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    add-int/lit8 v5, v5, 0x1

    .line 6302
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_5b

    goto :goto_74

    .line 6305
    :cond_5b
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v7, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_60} :catch_93

    :try_start_60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6306
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6307
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_6e

    :try_start_67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 6308
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_93

    goto :goto_44

    :catchall_6e
    move-exception v0

    .line 6307
    :try_start_6f
    monitor-exit v7
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 6310
    :cond_74
    :goto_74
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 6313
    :cond_7b
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_80} :catch_93

    :try_start_80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6314
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    .line 6315
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_8d

    :try_start_87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_93

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_93} :catch_93

    :catch_93
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    .line 6318
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6321
    :cond_9b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6322
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 6323
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_ab

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_ab
    move-exception p0

    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_b1
    move-exception p0

    .line 6286
    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
