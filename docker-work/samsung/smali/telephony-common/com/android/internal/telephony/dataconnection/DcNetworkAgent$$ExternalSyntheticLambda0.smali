.class public final synthetic Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/net/QosFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;ILandroid/net/QosFilter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;->f$2:Landroid/net/QosFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent$$ExternalSyntheticLambda0;->f$2:Landroid/net/QosFilter;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->$r8$lambda$Vlk2QaGhvCMIdm3jNEM1VACGtMY(Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;ILandroid/net/QosFilter;)V

    return-void
.end method
