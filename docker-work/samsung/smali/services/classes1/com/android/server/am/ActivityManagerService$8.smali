.class public Lcom/android/server/am/ActivityManagerService$8;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V
    .registers 4

    .line 5477
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$8;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$8;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    const-string v0, "backup"

    .line 5482
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5481
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 5483
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$8;->val$userId:I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$8;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/app/backup/IBackupManager;->agentDisconnectedForUser(ILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
