.class Lcom/android/internal/telephony/euicc/EuiccCardController$14;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    .registers 3

    .line 993
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 3

    :try_start_0
    const-string v0, "getEuiccInfo1 callback onException: "

    .line 1006
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p0

    const-string p1, "getEuiccInfo1 callback failure."

    .line 1009
    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public bridge synthetic blacklist onResult(Ljava/lang/Object;)V
    .registers 2

    .line 993
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->onResult([B)V

    return-void
.end method

.method public blacklist onResult([B)V
    .registers 3

    .line 997
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$14;->val$callback:Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception p0

    const-string p1, "getEuiccInfo1 callback failure."

    .line 999
    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method
