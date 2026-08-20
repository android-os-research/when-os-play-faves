.class Lcom/android/commands/content/Content$UpdateCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCommand"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/content/ContentValues;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 720
    iput-object p3, p0, Lcom/android/commands/content/Content$UpdateCommand;->mValues:Landroid/content/ContentValues;

    .line 721
    iput-object p4, p0, Lcom/android/commands/content/Content$UpdateCommand;->mExtras:Landroid/os/Bundle;

    .line 722
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

    .line 726
    new-instance v0, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 727
    invoke-static {}, Lcom/android/commands/content/Content$UpdateCommand;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/commands/content/Content$UpdateCommand;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/commands/content/Content$UpdateCommand;->mValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/commands/content/Content$UpdateCommand;->mExtras:Landroid/os/Bundle;

    .line 726
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/content/IContentProvider;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 728
    return-void
.end method
