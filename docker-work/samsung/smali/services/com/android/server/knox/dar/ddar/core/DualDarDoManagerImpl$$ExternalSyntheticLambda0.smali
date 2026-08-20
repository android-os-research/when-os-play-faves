.class public final synthetic Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarDoManagerImpl;->$r8$lambda$uKOgh8hM1MpOh4h86WEP-IC581Q(Lcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
