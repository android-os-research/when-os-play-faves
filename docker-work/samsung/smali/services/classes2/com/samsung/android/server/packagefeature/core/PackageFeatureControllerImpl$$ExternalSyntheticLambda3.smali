.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
