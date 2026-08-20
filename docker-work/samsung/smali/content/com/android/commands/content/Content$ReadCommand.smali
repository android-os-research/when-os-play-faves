.class Lcom/android/commands/content/Content$ReadCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadCommand"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 623
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

    .line 627
    new-instance v0, Landroid/content/AttributionSource;

    .line 628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 629
    invoke-static {}, Lcom/android/commands/content/Content$ReadCommand;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/commands/content/Content$ReadCommand;->mUri:Landroid/net/Uri;

    .line 627
    const-string v2, "r"

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/content/IContentProvider;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 630
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_16
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-static {v1, v2}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_25

    .line 631
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 632
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_24
    return-void

    .line 627
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_30

    :try_start_28
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v1
.end method
