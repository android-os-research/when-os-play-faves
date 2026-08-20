.class public Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DynamicCodeLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuditWatchingThread"
.end annotation


# instance fields
.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    .line 175
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 176
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final processAuditEvents()Z
    .registers 10

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [I

    const-string v2, "auditd"

    .line 226
    invoke-static {v2}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_10

    return v0

    .line 233
    :cond_10
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$smgetDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v2

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-static {v1, v4}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 237
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetEXECUTE_NATIVE_AUDIT_PATTERN()Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move v5, v3

    .line 238
    :goto_27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_84

    .line 239
    iget-object v6, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$fgetmAuditWatchingStopRequested(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 240
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 244
    :cond_3f
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/EventLog$Event;

    .line 247
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getUid()I

    move-result v7

    .line 248
    invoke-static {v7}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v8

    if-nez v8, :cond_50

    goto :goto_81

    .line 251
    :cond_50
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v6

    .line 252
    instance-of v8, v6, Ljava/lang/String;

    if-nez v8, :cond_59

    goto :goto_81

    .line 255
    :cond_59
    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "type=1400 "

    .line 256
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_65

    goto :goto_81

    .line 264
    :cond_65
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 265
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_6f

    goto :goto_81

    .line 268
    :cond_6f
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7e

    const/4 v6, 0x2

    .line 272
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$smunhex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    :cond_7e
    invoke-virtual {v2, v7, v6}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordNative(ILjava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_81} :catch_85

    :goto_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_84
    return v0

    :catch_85
    move-exception p0

    .line 279
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuditWatchingJob failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public run()V
    .registers 3

    .line 185
    invoke-virtual {p0}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->processAuditEvents()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object p0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_e
    return-void
.end method
