.class Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 341
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    .line 342
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 345
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    .line 346
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 347
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    .line 367
    const-string v0, "handleMessage : Unknown msg"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 364
    :pswitch_3b
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$msendErrorResult(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V

    .line 365
    goto :goto_66

    .line 361
    :pswitch_47
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V

    .line 362
    goto :goto_66

    .line 357
    :pswitch_4d
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V

    .line 359
    goto :goto_66

    .line 354
    :pswitch_5a
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->-$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V

    .line 355
    nop

    .line 370
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x64
        :pswitch_5a
        :pswitch_4d
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method
