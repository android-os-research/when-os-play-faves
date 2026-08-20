.class public Lcom/android/server/DirEncryptService$2;
.super Landroid/content/BroadcastReceiver;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DirEncryptService received action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DirEncryptService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "DirEncryptService received ACTION_BOOT_COMPLETED"

    .line 216
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    invoke-static {p1}, Lcom/android/server/DirEncryptService;->-$$Nest$mmoveDumpstate(Lcom/android/server/DirEncryptService;)Z

    .line 218
    iget-object p0, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    invoke-static {p0}, Lcom/android/server/DirEncryptService;->-$$Nest$fgetmHelper(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->setBootComplted(Z)V

    :cond_36
    return-void
.end method
