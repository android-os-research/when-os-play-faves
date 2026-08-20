.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->$r8$lambda$MnRbuRvrO3cF_G29W06N-Dw2YrI(Landroid/telephony/SubscriptionInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
