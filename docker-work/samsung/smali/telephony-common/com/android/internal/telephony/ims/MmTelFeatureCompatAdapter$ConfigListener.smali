.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigListener"
.end annotation


# instance fields
.field private final blacklist mCapability:I

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mTech:I


# direct methods
.method public constructor blacklist <init>(IILjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 127
    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    .line 128
    iput p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mCapability:I

    .line 129
    iput p2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mTech:I

    .line 130
    iput-object p3, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public blacklist getFeatureValueReceived(I)V
    .registers 2

    return-void
.end method

.method public blacklist onGetFeatureResponse(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mCapability:I

    if-ne p1, p4, :cond_11

    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mTech:I

    if-ne p2, p4, :cond_11

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->getFeatureValueReceived(I)V

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2f

    .line 140
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onGetFeatureResponse: response different than requested: feature="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and network="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MmTelFeatureCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public blacklist onGetVideoQuality(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSetFeatureResponse(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mCapability:I

    if-ne p1, p4, :cond_11

    iget p4, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mTech:I

    if-ne p2, p4, :cond_11

    .line 149
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->setFeatureValueReceived(I)V

    .line 150
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2f

    .line 152
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSetFeatureResponse: response different than requested: feature="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and network="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MmTelFeatureCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public blacklist onSetVideoQuality(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setFeatureValueReceived(I)V
    .registers 2

    return-void
.end method
