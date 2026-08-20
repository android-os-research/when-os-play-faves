.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field public final synthetic blacklist f$1:Lcom/android/ims/internal/IImsCallSession;

.field public final synthetic blacklist f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/internal/IImsCallSession;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->$r8$lambda$nernuwRU7p7dXmfDNrQWvWOd4Zo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    return-void
.end method
