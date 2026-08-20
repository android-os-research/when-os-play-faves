.class public Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CapabilityCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 190
    return-void
.end method


# virtual methods
.method public whitelist onChangeCapabilityConfigurationError(III)V
    .registers 7
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 210
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    if-nez v0, :cond_5

    .line 211
    return-void

    .line 214
    :cond_5
    :try_start_5
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onChangeCapabilityConfigurationError(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 217
    goto :goto_12

    .line 215
    :catch_9
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsFeature"

    const-string/jumbo v2, "onChangeCapabilityConfigurationError called on dead binder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
