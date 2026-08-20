.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;
.super Ljava/lang/Object;
.source "DomainVerificationProxyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public final callingUid:I

.field public final failedDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final verificationCode:I

.field public final verificationId:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->callingUid:I

    .line 317
    iput p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationId:I

    .line 318
    iput p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationCode:I

    if-nez p4, :cond_f

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_f
    iput-object p4, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->failedDomains:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/List;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;-><init>(IIILjava/util/List;)V

    return-void
.end method
