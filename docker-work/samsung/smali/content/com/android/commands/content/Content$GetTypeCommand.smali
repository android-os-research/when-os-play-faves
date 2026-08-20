.class Lcom/android/commands/content/Content$GetTypeCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetTypeCommand"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 611
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

    .line 615
    iget-object v0, p0, Lcom/android/commands/content/Content$GetTypeCommand;->mUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 617
    return-void
.end method
