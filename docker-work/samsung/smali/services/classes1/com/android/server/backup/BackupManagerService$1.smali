.class public Lcom/android/server/backup/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public static synthetic $r8$lambda$5TsQuLraGYdfpNsn-6TqQmoPXTk(Lcom/android/server/backup/BackupManagerService$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$1;->lambda$onReceive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(I)V
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$monRemovedNonSystemUser(Lcom/android/server/backup/BackupManagerService;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    .line 153
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_24

    .line 155
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/backup/BackupManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService$1;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method
