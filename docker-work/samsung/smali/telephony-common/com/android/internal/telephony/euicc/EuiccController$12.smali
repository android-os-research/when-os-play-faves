.class Lcom/android/internal/telephony/euicc/EuiccController$12;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetOtaStatusFromEuiccService(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$statusRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 1796
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$statusRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .registers 1

    .line 1805
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public blacklist onGetOtaStatusComplete(I)V
    .registers 3

    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$statusRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1800
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
