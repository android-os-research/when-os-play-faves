.class public Lcom/android/server/DirEncryptService$1;
.super Landroid/os/IVoldTaskListener$Stub;
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

    .line 130
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onFinished ::"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DirEncryptService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->-$$Nest$fgetmHandler(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 161
    iget-object v0, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->-$$Nest$fgetmHandler(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/DirEncryptService$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/DirEncryptService$1$1;-><init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    :cond_17
    const-string p0, "DirEncryptService"

    const-string/jumbo p1, "onStatus mHandler == null"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method
