.class public Lcom/android/server/enterprise/certificate/CertificatePolicy$1;
.super Ljava/lang/ThreadLocal;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Boolean;
    .registers 1

    .line 257
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 1

    .line 255
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;->initialValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
