.class Lcom/android/internal/telephony/ims/ImsResolver$5;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$5;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSlotIndex(I)I
    .registers 2

    .line 387
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public blacklist getSubId(I)I
    .registers 2

    .line 377
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p1, 0x0

    .line 380
    aget p0, p0, p1

    return p0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method
