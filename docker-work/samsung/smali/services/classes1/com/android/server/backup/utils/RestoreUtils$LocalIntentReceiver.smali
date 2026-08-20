.class public Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/utils/RestoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalIntentReceiver"
.end annotation


# instance fields
.field public mLocalSender:Landroid/content/IIntentSender$Stub;

.field public final mLock:Ljava/lang/Object;

.field public mResult:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmResult(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    .line 387
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 2

    .line 399
    new-instance v0, Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :catch_3
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-nez v1, :cond_d

    .line 406
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_3
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    goto :goto_3

    .line 412
    :cond_d
    :try_start_d
    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception p0

    .line 413
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_f

    throw p0
.end method
