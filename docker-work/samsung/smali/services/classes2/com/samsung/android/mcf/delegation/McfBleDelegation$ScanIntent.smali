.class public Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/McfBleDelegation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanIntent"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getAppData()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string v0, "appData"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()I
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v0, "scanError"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRequestId()I
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v0, "requestId"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getScanResult()Landroid/bluetooth/le/ScanResult;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v0, "scanResults"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/le/ScanResult;

    return-object p0
.end method
