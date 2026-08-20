.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/data/TrafficDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/data/TrafficDescriptor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/data/TrafficDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/data/TrafficDescriptor;

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$ajI9ssvzte9Atd2RItsO7fdL_kI(Landroid/telephony/data/TrafficDescriptor;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method
