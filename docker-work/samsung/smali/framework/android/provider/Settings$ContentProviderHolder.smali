.class final Landroid/provider/Settings$ContentProviderHolder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentProviderHolder"
.end annotation


# instance fields
.field private greylist mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    .line 3131
    iput-object p1, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    .line 3132
    return-void
.end method


# virtual methods
.method public greylist-max-o clearProviderForTest()V
    .registers 3

    .line 3145
    iget-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3146
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    .line 3147
    monitor-exit v0

    .line 3148
    return-void

    .line 3147
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-o getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 3135
    iget-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3136
    :try_start_3
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    if-nez v1, :cond_13

    .line 3137
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    .line 3138
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    .line 3140
    :cond_13
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    monitor-exit v0

    return-object v1

    .line 3141
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
