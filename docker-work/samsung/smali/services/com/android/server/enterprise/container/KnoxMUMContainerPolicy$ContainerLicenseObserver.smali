.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerLicenseObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method public onUpdateContainerLicenseStatus(Ljava/lang/String;)V
    .registers 2

    .line 493
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerLicenseObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyLicenseStatus(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)Z

    return-void
.end method
