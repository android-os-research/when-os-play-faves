.class Landroid/test/mock/MockContentProvider$InversionIContentProvider;
.super Ljava/lang/Object;
.source "MockContentProvider.java"

# interfaces
.implements Landroid/content/IContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/mock/MockContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InversionIContentProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/mock/MockContentProvider;


# direct methods
.method private constructor <init>(Landroid/test/mock/MockContentProvider;)V
    .registers 2

    .line 62
    iput-object p1, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$InversionIContentProvider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;)V

    return-void
.end method


# virtual methods
.method public applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 67
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0}, Landroid/test/mock/MockContentProvider;->getIContentProviderBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "request"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/test/mock/MockContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 163
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->canonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 164
    return-void
.end method

.method public checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 187
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/test/mock/MockContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p1}, Landroid/test/mock/MockContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/test/mock/MockContentProvider;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 90
    return-void
.end method

.method public insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/test/mock/MockContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 175
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->uncanonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 176
    return-void
.end method

.method public update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
