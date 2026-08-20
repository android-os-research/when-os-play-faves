.class Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;
.super Lcom/android/ims/ImsCallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/ImsCallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsConfigCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 170
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    .line 171
    iget v0, p1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    iget p1, p1, Lcom/android/ims/MmTelFeatureConnection;->mSubId:I

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/ims/ImsCallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;II)V

    .line 172
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist registerCallback(Landroid/os/IInterface;)V
    .registers 2

    .line 169
    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->registerCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method public blacklist registerCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 176
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    .line 177
    .local v0, "binder":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v0, :cond_16

    .line 184
    :try_start_8
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    .line 187
    nop

    .line 188
    return-void

    .line 185
    :catch_d
    move-exception v1

    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ImsService is not available!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeatureConn ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProvisioningCallbackManager - couldn\'t register, binder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImsConfig is not available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic blacklist unregisterCallback(Landroid/os/IInterface;)V
    .registers 2

    .line 169
    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->unregisterCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 7
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 192
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    .line 193
    .local v0, "binder":Landroid/telephony/ims/aidl/IImsConfig;
    const-string v1, "]"

    const-string v2, "MmTelFeatureConn ["

    if-nez v0, :cond_2b

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v3, v3, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProvisioningCallbackManager - couldn\'t unregister, binder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_2b
    :try_start_2b
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 203
    goto :goto_63

    .line 200
    :catch_2f
    move-exception v3

    .line 201
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v4, v4, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProvisioningCallbackManager - couldn\'t unregister, binder is dead. Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_63
    return-void
.end method
