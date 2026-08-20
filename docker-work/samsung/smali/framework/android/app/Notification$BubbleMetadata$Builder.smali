.class public final Landroid/app/Notification$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeleteIntent:Landroid/app/PendingIntent;

.field private blacklist mDesiredHeight:I

.field private blacklist mDesiredHeightResId:I

.field private blacklist mFlags:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10683
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 10738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10739
    if-eqz p1, :cond_29

    .line 10742
    if-eqz p2, :cond_21

    .line 10745
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    .line 10746
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    .line 10747
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10751
    :cond_1c
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10752
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10753
    return-void

    .line 10743
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10740
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 10711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 10715
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 10716
    return-void

    .line 10713
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires a non-null shortcut id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/Notification$BubbleMetadata;
    .registers 11

    .line 10970
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_9

    goto :goto_11

    .line 10971
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10974
    :cond_11
    :goto_11
    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_18

    goto :goto_20

    .line 10975
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10978
    :cond_20
    :goto_20
    new-instance v0, Landroid/app/Notification$BubbleMetadata;

    iget-object v3, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v6, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v7, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget-object v8, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification$BubbleMetadata-IA;)V

    .line 10980
    .local v0, "data":Landroid/app/Notification$BubbleMetadata;
    iget v1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 10981
    return-object v0
.end method

.method public greylist createIntentBubble(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10779
    if-eqz p1, :cond_29

    .line 10782
    if-eqz p2, :cond_21

    .line 10785
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    .line 10786
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    .line 10787
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10791
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 10792
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10793
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10794
    return-object p0

    .line 10783
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10780
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createShortcutBubble(Ljava/lang/String;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "shortcutId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 10764
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10765
    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10767
    :cond_b
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 10768
    return-object p0
.end method

.method public whitelist setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "shouldExpand"    # Z

    .line 10915
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 10916
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 2
    .param p1, "deleteIntent"    # Landroid/app/PendingIntent;

    .line 10959
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10960
    return-object p0
.end method

.method public whitelist setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4
    .param p1, "height"    # I

    .line 10873
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 10874
    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 10875
    return-object p0
.end method

.method public whitelist setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "heightResId"    # I

    .line 10895
    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 10896
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 10897
    return-object p0
.end method

.method public blacklist setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 10988
    if-eqz p2, :cond_8

    .line 10989
    iget v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    goto :goto_e

    .line 10991
    :cond_8
    iget v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    .line 10993
    :goto_e
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 10839
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 10844
    if-eqz p1, :cond_1e

    .line 10847
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    .line 10848
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    .line 10849
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10853
    :cond_1b
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10854
    return-object p0

    .line 10845
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10840
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 10810
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 10815
    if-eqz p1, :cond_9

    .line 10818
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10819
    return-object p0

    .line 10816
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10811
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "shouldSuppressNotif"    # Z

    .line 10931
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 10932
    return-object p0
.end method

.method public whitelist setSuppressableBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "suppressBubble"    # Z

    .line 10948
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 10949
    return-object p0
.end method
