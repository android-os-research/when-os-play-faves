.class public Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsLabsReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method public static synthetic $r8$lambda$gm4KMsGzB71LULbTm0o2Qdy1IuQ(Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->lambda$onReceive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 2

    .line 801
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(I)V
    .registers 4

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 829
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->-$$Nest$fgetmTipsLabsStepAsUser(Lcom/android/server/wm/WindowManagerServiceExt;)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 830
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    :try_start_0
    const-string/jumbo p1, "tips_extra_result"

    const/4 v0, -0x1

    .line 805
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "userId"

    .line 806
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "WindowManagerServiceExt"

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tips for labs, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    if-nez p1, :cond_32

    move p1, v1

    goto :goto_3c

    :cond_32
    if-ne p1, v0, :cond_36

    const/4 p1, 0x4

    goto :goto_3c

    :cond_36
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3b

    const/4 p1, 0x5

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x3

    .line 818
    :goto_3c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_7d

    :try_start_43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 819
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerServiceExt;->-$$Nest$fgetmTipsLabsStepAsUser(Lcom/android/server/wm/WindowManagerServiceExt;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_77

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-ne p1, v1, :cond_64

    .line 822
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_tips_labs_step"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 827
    :cond_64
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsReceiver;I)V

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->-$$Nest$sfgetTIPS_LABS_RETRY_PERIOD()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_76} :catch_7d

    goto :goto_81

    :catchall_77
    move-exception p0

    .line 820
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception p0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_81
    return-void
.end method
