.class public Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    monitor-enter v0

    .line 491
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$fgetmLoaded(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)Z

    move-result v1

    .line 492
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    .line 493
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1b

    if-nez v1, :cond_1b

    .line 494
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mloadInternal(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 496
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    return-void

    :catchall_21
    move-exception p0

    .line 492
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method
