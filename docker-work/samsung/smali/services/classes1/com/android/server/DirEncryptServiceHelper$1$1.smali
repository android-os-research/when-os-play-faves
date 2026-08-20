.class public Lcom/android/server/DirEncryptServiceHelper$1$1;
.super Ljava/lang/Thread;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DirEncryptServiceHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/DirEncryptServiceHelper$1;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirEncryptServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v0, "Unmount policy noti pressed"

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {p0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmHandler(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_79

    :cond_3c
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 129
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmBootCompleted(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result v0

    if-nez v0, :cond_4f

    return-void

    :cond_4f
    const-string v0, "Switch User"

    .line 130
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 133
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    .line 134
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {p0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_79
    :goto_79
    return-void
.end method
