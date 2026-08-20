.class Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;
.super Landroid/os/Handler;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 1315
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 1316
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1317
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1319
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 1320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1321
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V
    .registers 3
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "progress"    # I

    .line 1349
    return-void
.end method

.method private blacklist sendRemovedResult(JII)V
    .registers 5
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I

    .line 1346
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1325
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

    const-string v1, "SemBioFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    .line 1340
    const-string v0, "handleMessage : Unknown msg"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1337
    :pswitch_3b
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$msendErrorResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    .line 1338
    goto :goto_63

    .line 1334
    :pswitch_47
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 1335
    goto :goto_63

    .line 1331
    :pswitch_4d
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 1332
    goto :goto_63

    .line 1328
    :pswitch_57
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    .line 1329
    nop

    .line 1343
    :goto_63
    return-void

    :pswitch_data_64
    .packed-switch 0x65
        :pswitch_57
        :pswitch_4d
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method
