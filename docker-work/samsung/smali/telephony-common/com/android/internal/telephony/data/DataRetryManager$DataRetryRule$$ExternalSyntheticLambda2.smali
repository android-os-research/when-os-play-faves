.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda2;
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

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->$r8$lambda$EWLevEJY_I7REuXK6Kw1xbGpZNo(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method
