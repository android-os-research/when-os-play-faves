.class public final synthetic Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    check-cast p2, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    invoke-static {p1, p2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->lambda$getApplicationPolicies$0(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I

    move-result p1

    return p1
.end method
