.class public final Landroid/app/Notification$BubbleMetadata;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$BubbleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field public static final blacklist FLAG_SUPPRESSABLE_BUBBLE:I = 0x4

.field public static final blacklist FLAG_SUPPRESS_BUBBLE:I = 0x8

.field public static final blacklist FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field private blacklist mDeleteIntent:Landroid/app/PendingIntent;

.field private blacklist mDesiredHeight:I

.field private blacklist mDesiredHeightResId:I

.field private blacklist mFlags:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShortcutId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10621
    new-instance v0, Landroid/app/Notification$BubbleMetadata$1;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$1;-><init>()V

    sput-object v0, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V
    .registers 7
    .param p1, "expandIntent"    # Landroid/app/PendingIntent;
    .param p2, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "height"    # I
    .param p5, "heightResId"    # I
    .param p6, "shortcutId"    # Ljava/lang/String;

    .line 10414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10415
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10416
    iput-object p3, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10417
    iput p4, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 10418
    iput p5, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 10419
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10420
    iput-object p6, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    .line 10421
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification$BubbleMetadata-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 10423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 10425
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10427
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 10428
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10430
    :cond_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 10431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 10433
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10435
    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 10436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    .line 10437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    .line 10439
    :cond_51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Notification$BubbleMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 10637
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoExpandBubble()Z
    .registers 3

    .line 10525
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist getBubbleIcon()Landroid/graphics/drawable/Icon;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10496
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public greylist getBubbleIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10468
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDeleteIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 10476
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDesiredHeight()I
    .registers 2

    .line 10506
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    return v0
.end method

.method public whitelist getDesiredHeightResId()I
    .registers 2

    .line 10516
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 10618
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 10486
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 10458
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .registers 2

    .line 10448
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isBubbleSuppressable()Z
    .registers 2

    .line 10565
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isBubbleSuppressed()Z
    .registers 2

    .line 10574
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isNotificationSuppressed()Z
    .registers 2

    .line 10548
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 10611
    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10612
    return-void
.end method

.method public blacklist setSuppressBubble(Z)V
    .registers 3
    .param p1, "suppressed"    # Z

    .line 10600
    if-eqz p1, :cond_9

    .line 10601
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_f

    .line 10603
    :cond_9
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10605
    :goto_f
    return-void
.end method

.method public blacklist setSuppressNotification(Z)V
    .registers 3
    .param p1, "suppressed"    # Z

    .line 10585
    if-eqz p1, :cond_9

    .line 10586
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_f

    .line 10588
    :cond_9
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10590
    :goto_f
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 10642
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10643
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_13

    .line 10644
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10646
    :cond_13
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10647
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_24

    .line 10648
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10650
    :cond_24
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10651
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10652
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_34

    move v0, v1

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10653
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3f

    .line 10654
    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10656
    :cond_3f
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10657
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10658
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 10659
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 10661
    :cond_5b
    return-void
.end method
