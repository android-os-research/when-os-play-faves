.class public Lcom/android/server/StorageManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 6520
    iput-object p1, p0, Lcom/android/server/StorageManagerService$17;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 6523
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManagerService"

    const-string/jumbo v0, "mRestartSdcardBadremoveReceiver :: get Intent RESTART_OF_SDCARDBADREMOVED_HASAPK"

    .line 6524
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.RESTART_OF_SDCARDBADREMOVED_HASAPK"

    .line 6525
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 6526
    iget-object p0, p0, Lcom/android/server/StorageManagerService$17;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string p1, "RESTART_OF_SDCARDBADREMOVED_HASAPK"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_27
    return-void
.end method
