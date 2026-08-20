.class public final Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/BleScanAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "packageName"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "className"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "type"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/delegation/BleScanAction;
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanAction;

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/delegation/BleScanAction;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppData(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "appData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFlags(I)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
