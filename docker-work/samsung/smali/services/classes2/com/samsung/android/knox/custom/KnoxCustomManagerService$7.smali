.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->enableTethering()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    .line 10184
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .registers 6

    .line 10196
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "KnoxCustomManagerService"

    .line 10197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTetheringFailed + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10198
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fputmTetheringResultCode(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V

    .line 10199
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10200
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public onTetheringStarted()V
    .registers 4

    .line 10187
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "KnoxCustomManagerService"

    const-string/jumbo v2, "onTetheringStarted"

    .line 10188
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10189
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fputmTetheringResultCode(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V

    .line 10190
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherLock(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10191
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method
