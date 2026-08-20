.class public Lcom/samsung/android/allshare/extension/impl/MediaGetterManager;
.super Ljava/lang/Object;
.source "MediaGetterManager.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static blacklist createMediaGetter(Lcom/samsung/android/allshare/media/Provider;)Lcom/samsung/android/allshare/extension/impl/IMediaGetter;
    .registers 3
    .param p0, "provider"    # Lcom/samsung/android/allshare/media/Provider;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/allshare/media/Provider;->isSearchable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 27
    invoke-static {p0}, Lcom/samsung/android/allshare/extension/impl/MediaGetterManager;->isWM7Provider(Lcom/samsung/android/allshare/media/Provider;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 28
    new-instance v0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {v0}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;-><init>()V

    return-object v0

    .line 30
    :cond_17
    new-instance v0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    invoke-direct {v0}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;-><init>()V

    return-object v0

    .line 32
    :cond_1d
    new-instance v0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;

    invoke-direct {v0}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;-><init>()V

    return-object v0
.end method

.method private static blacklist isWM7Provider(Lcom/samsung/android/allshare/media/Provider;)Z
    .registers 3
    .param p0, "provider"    # Lcom/samsung/android/allshare/media/Provider;

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/allshare/media/Provider;->getModelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows Media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
