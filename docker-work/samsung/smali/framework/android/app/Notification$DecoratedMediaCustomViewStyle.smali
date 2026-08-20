.class public Landroid/app/Notification$DecoratedMediaCustomViewStyle;
.super Landroid/app/Notification$MediaStyle;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 10283
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 10284
    return-void
.end method


# virtual methods
.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 4
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 10328
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_f

    .line 10332
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 10329
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o displayCustomViewInline()Z
    .registers 2

    .line 10290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .registers 3

    .line 10306
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    .line 10307
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_1b

    .line 10308
    :cond_13
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_1b
    nop

    .line 10309
    .local v0, "customContent":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeMediaBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "increasedHeight"    # Z

    .line 10298
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "increasedHeight"    # Z

    .line 10317
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    .line 10318
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_1b

    .line 10319
    :cond_13
    iget-object v0, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_1b
    nop

    .line 10320
    .local v0, "customContent":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeMediaBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method
