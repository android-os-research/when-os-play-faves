.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;->f$0:I

    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;->f$1:Z

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-static {v0, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$XwSTER5peCHpgzspHAwgfWe2eCA(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method
