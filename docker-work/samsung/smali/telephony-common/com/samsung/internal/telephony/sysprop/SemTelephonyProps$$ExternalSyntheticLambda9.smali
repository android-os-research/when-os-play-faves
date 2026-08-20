.class public final synthetic Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->$r8$lambda$cmR5VMb4x2pL6T8NYLufFpI-B2Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
