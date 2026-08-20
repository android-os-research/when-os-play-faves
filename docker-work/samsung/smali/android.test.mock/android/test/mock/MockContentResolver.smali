.class public Landroid/test/mock/MockContentResolver;
.super Landroid/content/ContentResolver;
.source "MockContentResolver.java"


# instance fields
.field mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/test/mock/MockContentResolver;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    .line 73
    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    .line 105
    .local v0, "provider":Landroid/content/ContentProvider;
    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 108
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ContentProvider;

    .line 87
    iget-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 142
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I

    .line 168
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    return-void
.end method

.method public notifyChange(Ljava/util/Collection;Landroid/database/ContentObserver;I)V
    .registers 4
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/database/ContentObserver;",
            "I)V"
        }
    .end annotation

    .line 178
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "provider"    # Landroid/content/IContentProvider;

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 127
    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .registers 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .line 133
    return-void
.end method
