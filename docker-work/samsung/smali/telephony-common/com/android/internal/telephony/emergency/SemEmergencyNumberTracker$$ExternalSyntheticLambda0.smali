.class public final synthetic Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->$r8$lambda$2_cpJUngFeIRg1iQ98unD_ArC8s(Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result p0

    return p0
.end method
