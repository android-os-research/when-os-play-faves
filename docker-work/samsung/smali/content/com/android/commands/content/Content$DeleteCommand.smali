.class Lcom/android/commands/content/Content$DeleteCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteCommand"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 576
    iput-object p3, p0, Lcom/android/commands/content/Content$DeleteCommand;->mExtras:Landroid/os/Bundle;

    .line 577
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .registers 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    new-instance v0, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 582
    invoke-static {}, Lcom/android/commands/content/Content$DeleteCommand;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/commands/content/Content$DeleteCommand;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/commands/content/Content$DeleteCommand;->mExtras:Landroid/os/Bundle;

    .line 581
    invoke-interface {p1, v0, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 583
    return-void
.end method
