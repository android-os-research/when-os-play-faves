.class public Lcom/android/server/Watchdog$3;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/Watchdog;

.field public final synthetic val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

.field public final synthetic val$dropboxTag:Ljava/lang/String;

.field public final synthetic val$errorId:Ljava/util/UUID;

.field public final synthetic val$report:Ljava/lang/StringBuilder;

.field public final synthetic val$stack:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V
    .registers 8

    .line 1445
    iput-object p1, p0, Lcom/android/server/Watchdog$3;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$3;->val$dropboxTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/Watchdog$3;->val$report:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/Watchdog$3;->val$stack:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/Watchdog$3;->val$errorId:Ljava/util/UUID;

    iput-object p7, p0, Lcom/android/server/Watchdog$3;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 1449
    iget-object v1, v0, Lcom/android/server/Watchdog$3;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v1}, Lcom/android/server/Watchdog;->-$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1450
    iget-object v1, v0, Lcom/android/server/Watchdog$3;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v1}, Lcom/android/server/Watchdog;->-$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/Watchdog$3;->val$dropboxTag:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/android/server/Watchdog$3;->val$report:Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/Watchdog$3;->val$stack:Ljava/io/File;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/server/Watchdog$3;->val$errorId:Ljava/util/UUID;

    iget-object v0, v0, Lcom/android/server/Watchdog$3;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    const-string/jumbo v5, "system_server"

    move-object/from16 v16, v0

    .line 1450
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V

    :cond_2e
    return-void
.end method
