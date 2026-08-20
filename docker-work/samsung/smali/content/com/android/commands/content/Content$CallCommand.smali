.class Lcom/android/commands/content/Content$CallCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallCommand"
.end annotation


# instance fields
.field final mArg:Ljava/lang/String;

.field final mExtras:Landroid/os/Bundle;

.field final mMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 592
    iput-object p3, p0, Lcom/android/commands/content/Content$CallCommand;->mMethod:Ljava/lang/String;

    .line 593
    iput-object p4, p0, Lcom/android/commands/content/Content$CallCommand;->mArg:Ljava/lang/String;

    .line 594
    iput-object p5, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    .line 595
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .registers 8
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    new-instance v1, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 600
    invoke-static {}, Lcom/android/commands/content/Content$CallCommand;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/commands/content/Content$CallCommand;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/content/Content$CallCommand;->mArg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    .line 599
    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 601
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_24

    .line 602
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    .line 604
    :cond_24
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    return-void
.end method
