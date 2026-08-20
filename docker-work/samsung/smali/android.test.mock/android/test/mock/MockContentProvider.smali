.class public Landroid/test/mock/MockContentProvider;
.super Landroid/content/ContentProvider;
.source "MockContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/mock/MockContentProvider$InversionIContentProvider;
    }
.end annotation


# instance fields
.field private final mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;


# direct methods
.method protected constructor <init>()V
    .registers 4

    .line 196
    new-instance v0, Landroid/test/mock/MockContext;

    invoke-direct {v0}, Landroid/test/mock/MockContext;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 190
    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    invoke-direct {v0, p0, v2}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$InversionIContentProvider-IA;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 190
    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    invoke-direct {v0, p0, v1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$InversionIContentProvider-IA;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 190
    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$InversionIContentProvider-IA;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    .line 225
    return-void
.end method

.method public static attachInfoForTesting(Landroid/content/ContentProvider;Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 3
    .param p0, "provider"    # Landroid/content/ContentProvider;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "providerInfo"    # Landroid/content/pm/ProviderInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 377
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .line 285
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 311
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda1;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public checkUriPermission(Landroid/net/Uri;II)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIContentProvider()Landroid/content/IContentProvider;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    return-object v0
.end method

.method public getIContentProviderBinder()Landroid/os/IBinder;
    .registers 2

    .line 359
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 242
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda0;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$canonicalizeAsync$1$android-test-mock-MockContentProvider(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method synthetic lambda$getTypeAsync$0$android-test-mock-MockContentProvider(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method synthetic lambda$uncanonicalizeAsync$2$android-test-mock-MockContentProvider(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public onCreate()Z
    .registers 3

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uncanonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 323
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda2;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
