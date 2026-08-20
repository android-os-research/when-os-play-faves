.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->$r8$lambda$KmLqnfX0vxiGY8gFbWZg6FNz-Hw(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V

    return-void
.end method
