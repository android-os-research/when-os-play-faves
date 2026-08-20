.class Lcom/android/ims/SecImsManager$1;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "SecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/SecImsManager;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$returnValue:[Z


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/SecImsManager;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/ims/SecImsManager;

    .line 395
    iput-object p1, p0, Lcom/android/ims/SecImsManager$1;->this$0:Lcom/android/ims/SecImsManager;

    iput-object p2, p0, Lcom/android/ims/SecImsManager$1;->val$returnValue:[Z

    iput-object p3, p0, Lcom/android/ims/SecImsManager$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 2
    .param p1, "config"    # I

    .line 404
    return-void
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 402
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryCapabilityConfiguration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/ims/SecImsManager$1;->val$returnValue:[Z

    const/4 v1, 0x0

    aput-boolean p3, v0, v1

    .line 399
    iget-object v0, p0, Lcom/android/ims/SecImsManager$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 400
    return-void
.end method
