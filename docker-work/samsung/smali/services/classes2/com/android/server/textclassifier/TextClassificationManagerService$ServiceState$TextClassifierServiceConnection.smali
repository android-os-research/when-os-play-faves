.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextClassifierServiceConnection"
.end annotation


# instance fields
.field public final mUserId:I

.field public final synthetic this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V
    .registers 3

    .line 1111
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->mUserId:I

    return-void
.end method


# virtual methods
.method public cleanupService()V
    .registers 2

    const/4 v0, 0x0

    .line 1146
    invoke-virtual {p0, v0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V
    .registers 5

    .line 1151
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1152
    :try_start_9
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iput-object p1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    const/4 p1, 0x0

    .line 1153
    iput-boolean p1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    .line 1154
    iget p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->mUserId:I

    invoke-static {v1, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mupdateServiceInfoLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILandroid/content/ComponentName;)V

    .line 1155
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->this$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mhandlePendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    .line 1156
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextClassificationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNullBinding called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextClassificationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1117
    invoke-static {p2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;

    move-result-object p2

    const/4 v0, 0x0

    .line 1120
    :try_start_5
    invoke-interface {p2, v0}, Landroid/service/textclassifier/ITextClassifierService;->onConnectedStateChanged(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    const-string v0, "TextClassificationManagerService"

    const-string v1, "error in onConnectedStateChanged"

    .line 1122
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :goto_10
    invoke-virtual {p0, p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextClassificationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    return-void
.end method
