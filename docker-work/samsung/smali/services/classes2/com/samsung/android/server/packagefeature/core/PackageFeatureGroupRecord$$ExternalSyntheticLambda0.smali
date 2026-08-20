.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$4:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;->f$4:Ljava/util/function/Function;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->$r8$lambda$ouuv21HGfeoqQPLyCa-u5gVQ5Fc(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V

    return-void
.end method
