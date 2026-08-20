.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    return-void
.end method


# virtual methods
.method public final blacklist getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;
    .registers 3

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->lambda$new$1$com-android-ims-rcs-uce-presence-publish-DeviceCapabilityListener(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p1

    return-object p1
.end method
