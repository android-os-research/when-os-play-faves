.class public final Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForegroundAppWatcher"
.end annotation


# instance fields
.field public mCheckPkg:Z

.field private mEnabled:Z

.field private mForegroundPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

.field private final usageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private final usageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmForegroundPkg(Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mForegroundPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmForegroundPkg(Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mForegroundPkg:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/gesture/AutoRotationHandler;
    .param p2, "context"    # Landroid/content/Context;

    .line 288
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mForegroundPkg:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mEnabled:Z

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mCheckPkg:Z

    .line 291
    const-string v0, "usagestats"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->usageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 293
    new-instance v0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher$1;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;Lcom/samsung/android/gesture/AutoRotationHandler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->usageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 314
    return-void
.end method


# virtual methods
.method init()V
    .registers 3

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mEnabled:Z

    if-nez v0, :cond_e

    .line 317
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->usageStatsManager:Landroid/app/usage/UsageStatsManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->usageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mEnabled:Z

    .line 321
    :cond_e
    return-void
.end method

.method start()V
    .registers 3

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mCheckPkg:Z

    .line 325
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mForegroundPkg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 326
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mForegroundPkg:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 329
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method stop()V
    .registers 2

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->mCheckPkg:Z

    .line 335
    return-void
.end method
