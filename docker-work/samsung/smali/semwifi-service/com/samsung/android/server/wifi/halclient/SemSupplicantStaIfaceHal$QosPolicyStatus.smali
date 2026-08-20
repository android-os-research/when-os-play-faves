.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyStatus;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QosPolicyStatus"
.end annotation


# instance fields
.field public final dscpPolicyStatus:I

.field public final policyId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyStatus;->policyId:I

    .line 744
    iput p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyStatus;->dscpPolicyStatus:I

    return-void
.end method
