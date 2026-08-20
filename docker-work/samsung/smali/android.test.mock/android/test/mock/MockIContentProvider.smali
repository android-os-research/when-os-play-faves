.class public Landroid/test/mock/MockIContentProvider;
.super Ljava/lang/Object;
.source "MockIContentProvider.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
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

    .line 100
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
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

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 158
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockIContentProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/test/mock/MockIContentProvider$$ExternalSyntheticLambda1;-><init>(Landroid/test/mock/MockIContentProvider;Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 71
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockIContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockIContentProvider$$ExternalSyntheticLambda0;-><init>(Landroid/test/mock/MockIContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$canonicalizeAsync$1$android-test-mock-MockIContentProvider(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "bundle":Landroid/os/Bundle;
    nop

    .line 161
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockIContentProvider;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 160
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method synthetic lambda$getTypeAsync$0$android-test-mock-MockIContentProvider(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Landroid/test/mock/MockIContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method synthetic lambda$uncanonicalizeAsync$2$android-test-mock-MockIContentProvider(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "bundle":Landroid/os/Bundle;
    nop

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockIContentProvider;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
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

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryEntities(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/EntityIterator;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 175
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockIContentProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/test/mock/MockIContentProvider$$ExternalSyntheticLambda2;-><init>(Landroid/test/mock/MockIContentProvider;Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
