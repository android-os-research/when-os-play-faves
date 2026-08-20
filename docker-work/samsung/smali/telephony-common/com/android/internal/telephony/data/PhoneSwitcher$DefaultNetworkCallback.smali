.class Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field public blacklist mExpectedSubId:I

.field public blacklist mSwitchReason:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, -0x1

    .line 346
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    const/4 p1, 0x0

    .line 347
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    const/4 p1, 0x0

    .line 351
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    .line 352
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 354
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p2

    .line 353
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result p2

    if-ne p1, p2, :cond_2c

    .line 355
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget p2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mlogDataSwitchEvent(Lcom/android/internal/telephony/data/PhoneSwitcher;III)V

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mremoveDefaultNetworkChangeCallback(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    :cond_2c
    return-void
.end method
