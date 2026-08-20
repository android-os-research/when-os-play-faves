.class Landroid/widget/RemoteViews$RemoteViewsContextWrapper;
.super Landroid/content/ContextWrapper;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsContextWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mContextForResources:Landroid/content/Context;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextForResources"    # Landroid/content/Context;

    .line 899
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 900
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    .line 901
    return-void
.end method


# virtual methods
.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 915
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 905
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 910
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 920
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 933
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    return v0
.end method
