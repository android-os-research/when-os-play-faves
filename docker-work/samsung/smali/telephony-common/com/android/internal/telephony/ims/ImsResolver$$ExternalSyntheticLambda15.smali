.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->$r8$lambda$mBKmfYBNzaBNqwtmdtmrHlaApLs(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method
