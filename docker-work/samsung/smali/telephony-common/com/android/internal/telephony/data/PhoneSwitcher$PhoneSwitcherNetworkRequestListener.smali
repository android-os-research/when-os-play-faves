.class Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
.super Lcom/android/internal/telephony/NetworkFactory;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneSwitcherNetworkRequestListener"
.end annotation


# instance fields
.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 6

    const-string v0, "PhoneSwitcherNetworkRequstListener"

    .line 1033
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 1034
    iput-object p4, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-void
.end method


# virtual methods
.method protected blacklist needNetworkFor(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 1040
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1041
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1042
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected blacklist releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .registers 3

    .line 1048
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1049
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1050
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
