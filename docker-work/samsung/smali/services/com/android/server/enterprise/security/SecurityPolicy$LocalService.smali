.class public Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 2472
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public isDodBannerVisibleAsUser(I)Z
    .registers 2

    .line 2475
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result p0

    return p0
.end method
