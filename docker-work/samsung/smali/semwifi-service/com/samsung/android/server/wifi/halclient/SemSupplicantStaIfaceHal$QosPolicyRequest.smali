.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QosPolicyRequest"
.end annotation


# instance fields
.field public final classifierParams:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;

.field public final dscp:B

.field public final policyId:B

.field public final requestType:I


# direct methods
.method public constructor <init>(BIBLcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;)V
    .registers 5
    .param p4    # Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->policyId:B

    .line 667
    iput-byte p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->dscp:B

    .line 668
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->requestType:I

    .line 669
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->classifierParams:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;

    return-void
.end method


# virtual methods
.method public isAddRequest()Z
    .registers 1

    .line 673
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->requestType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isRemoveRequest()Z
    .registers 2

    .line 677
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->requestType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policyId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->policyId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAddRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->isAddRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRemoveRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->isRemoveRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dscp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->dscp:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", classifierParams: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyRequest;->classifierParams:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
