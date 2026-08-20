.class public final synthetic Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioResponse;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/NetworkScanRequest;

.field public final synthetic blacklist f$3:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/RadioResponse;

    iput p2, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/NetworkScanRequest;

    iput-object p4, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$3:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/RadioResponse;

    iget v1, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/NetworkScanRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;->f$3:Landroid/os/Message;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/RadioResponse;->$r8$lambda$qKjrQpzwds42mwoK7mPEf2m9YzE(Lcom/android/internal/telephony/RadioResponse;ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method
