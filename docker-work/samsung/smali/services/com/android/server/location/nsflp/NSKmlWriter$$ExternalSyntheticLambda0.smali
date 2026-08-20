.class public final synthetic Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSKmlWriter;->$r8$lambda$1KzM0EHs-KvB5_NZenB62ZRs4Lc(Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
