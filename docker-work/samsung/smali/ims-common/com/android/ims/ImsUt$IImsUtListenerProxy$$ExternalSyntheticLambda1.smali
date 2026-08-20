.class public final synthetic Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsUt$IImsUtListenerProxy;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[Landroid/telephony/ims/ImsCallForwardInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsUt$IImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    iput p2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$2:[Landroid/telephony/ims/ImsCallForwardInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    iget v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy$$ExternalSyntheticLambda1;->f$2:[Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->lambda$utConfigurationCallForwardQueried$5$com-android-ims-ImsUt$IImsUtListenerProxy(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    return-void
.end method
