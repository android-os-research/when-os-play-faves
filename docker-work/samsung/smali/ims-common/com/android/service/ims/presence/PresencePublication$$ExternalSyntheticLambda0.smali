.class public final synthetic Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/service/ims/presence/PresencePublication;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/service/ims/presence/PresencePublication;ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;->f$0:Lcom/android/service/ims/presence/PresencePublication;

    iput p2, p0, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;->f$0:Lcom/android/service/ims/presence/PresencePublication;

    iget v1, p0, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1, v2}, Lcom/android/service/ims/presence/PresencePublication;->lambda$onFeatureCapabilityChanged$0$com-android-service-ims-presence-PresencePublication(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method
