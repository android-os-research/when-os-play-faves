.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    invoke-static {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->$r8$lambda$ArhKDwiA3pnapiVdVydhXpI4CTk(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method
