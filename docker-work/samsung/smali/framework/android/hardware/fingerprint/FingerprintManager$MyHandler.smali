.class Landroid/hardware/fingerprint/FingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 1273
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1274
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1275
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1277
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1279
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1284
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

    const-string v1, "FingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ca

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c9

    .line 1319
    :pswitch_4f
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendUdfpsPointerUp(Landroid/hardware/fingerprint/FingerprintManager;I)V

    .line 1320
    goto/16 :goto_c9

    .line 1316
    :pswitch_58
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendUdfpsPointerDown(Landroid/hardware/fingerprint/FingerprintManager;I)V

    .line 1317
    goto :goto_c9

    .line 1312
    :pswitch_60
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 1313
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1312
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendFingerprintDetected(Landroid/hardware/fingerprint/FingerprintManager;IIZ)V

    .line 1314
    goto :goto_c9

    .line 1308
    :pswitch_72
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1309
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1308
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendChallengeGenerated(Landroid/hardware/fingerprint/FingerprintManager;IIJ)V

    .line 1310
    goto :goto_c9

    .line 1305
    :pswitch_84
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendRemovedResult(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 1306
    goto :goto_c9

    .line 1302
    :pswitch_90
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendErrorResult(Landroid/hardware/fingerprint/FingerprintManager;II)V

    .line 1303
    goto :goto_c9

    .line 1299
    :pswitch_9a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendAuthenticatedFailed(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 1300
    goto :goto_c9

    .line 1295
    :pswitch_a0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v4, 0x0

    :goto_af
    invoke-static {v0, v1, v2, v4}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 1297
    goto :goto_c9

    .line 1291
    :pswitch_b3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendAcquiredResult(Landroid/hardware/fingerprint/FingerprintManager;II)V

    .line 1293
    goto :goto_c9

    .line 1288
    :pswitch_bd
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$msendEnrollResult(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 1289
    nop

    .line 1325
    :goto_c9
    return-void

    :pswitch_data_ca
    .packed-switch 0x64
        :pswitch_bd
        :pswitch_b3
        :pswitch_a0
        :pswitch_9a
        :pswitch_90
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_58
        :pswitch_4f
    .end packed-switch
.end method
