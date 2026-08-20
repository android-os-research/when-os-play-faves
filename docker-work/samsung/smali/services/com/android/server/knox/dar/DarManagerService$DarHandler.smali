.class public Lcom/android/server/knox/dar/DarManagerService$DarHandler;
.super Landroid/os/Handler;
.source "DarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/DarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DarHandler"
.end annotation


# static fields
.field public static final HANDLER_TAG:Ljava/lang/String; = "DarManagerServiceHandler"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 446
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$DarHandler;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    .line 447
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x76

    const-string v2, "DarManagerServiceHandler"

    if-eq v0, v1, :cond_22

    const/16 v1, 0x96

    if-eq v0, v1, :cond_15

    const-string p0, "DarManagerService"

    const-string/jumbo p1, "msg : ignore unknown message"

    .line 466
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_15
    const-string v0, "MSG_UNLOCK_SECURE_FOLDER_WITH_TOKEN "

    .line 460
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$DarHandler;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/DarManagerService;->-$$Nest$mhandleUnlockSecureFolderWithToken(Lcom/android/server/knox/dar/DarManagerService;I)V

    goto :goto_43

    .line 454
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MSG_SET_RESET_TOKEN_FOR_LEGACY : user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 456
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$DarHandler;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/DarManagerService;->-$$Nest$mhandleSetResetTokenForLegacy(Lcom/android/server/knox/dar/DarManagerService;ILjava/lang/String;)V

    :goto_43
    return-void
.end method
