.class Lcom/android/internal/telephony/euicc/EuiccController$11;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEidFromEuiccService(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic blacklist val$eidRef:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 1777
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$11;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$11;->val$eidRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$11;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .registers 1

    .line 1786
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$11;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public blacklist onGetEidComplete(Ljava/lang/String;)V
    .registers 3

    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$11;->val$eidRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1781
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$11;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
