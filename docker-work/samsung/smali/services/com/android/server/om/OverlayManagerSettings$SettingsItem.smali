.class public final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsItem"
.end annotation


# instance fields
.field public mBaseCodePath:Ljava/lang/String;

.field public mCache:Landroid/content/om/OverlayInfo;

.field public mCategory:Ljava/lang/String;

.field public mIsEnabled:Z

.field public mIsFabricated:Z

.field public mIsMutable:Z

.field public mIsSamsungTheme:Z

.field public final mOverlay:Landroid/content/om/OverlayIdentifier;

.field public mPriority:I

.field public mState:I

.field public final mTargetOverlayableName:Ljava/lang/String;

.field public final mTargetPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFabricated(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSamsungTheme(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsSamsungTheme:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverlay(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayIdentifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetOverlayableName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getPriority()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTargetOverlayableName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetOverlayableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTargetPackageName(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserId(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMutable(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isMutable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetBaseCodePath(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetCategory(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetEnabled(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetPriority(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setPriority(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetState(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V
    .registers 12

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 681
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 682
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 683
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 684
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 685
    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 686
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 687
    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    const/4 p1, 0x0

    .line 688
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 689
    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 690
    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 691
    iput-boolean p11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    const/4 p1, 0x0

    .line 693
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsSamsungTheme:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;ZZ)V
    .registers 13

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 705
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 706
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 707
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 708
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 709
    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 710
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 711
    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 713
    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 714
    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 715
    iput-boolean p11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    .line 718
    iput-boolean p12, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsSamsungTheme:Z

    return-void
.end method


# virtual methods
.method public final getBaseCodePath()Ljava/lang/String;
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getOverlayInfo()Landroid/content/om/OverlayInfo;
    .registers 15

    .line 790
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_2c

    .line 793
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iget v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iget v10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iget-boolean v11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    iget-boolean v12, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    iget-boolean v13, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsSamsungTheme:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZ)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 802
    :cond_2c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object p0
.end method

.method public final getPriority()I
    .registers 1

    .line 819
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return p0
.end method

.method public final getState()I
    .registers 1

    .line 751
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return p0
.end method

.method public final getTargetOverlayableName()Ljava/lang/String;
    .registers 1

    .line 730
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetPackageName()Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()I
    .registers 1

    .line 734
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return p0
.end method

.method public final invalidateCache()V
    .registers 2

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-void
.end method

.method public final isEnabled()Z
    .registers 1

    .line 764
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return p0
.end method

.method public final isMutable()Z
    .registers 1

    .line 815
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    return p0
.end method

.method public final setBaseCodePath(Ljava/lang/String;)Z
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 743
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 744
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final setCategory(Ljava/lang/String;)Z
    .registers 3

    .line 781
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    .line 782
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 783
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final setEnabled(Z)Z
    .registers 4

    .line 768
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 772
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    if-eq v0, p1, :cond_11

    .line 773
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 774
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method public final setPriority(I)V
    .registers 2

    .line 806
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 807
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    return-void
.end method

.method public final setState(I)Z
    .registers 3

    .line 755
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    if-eq v0, p1, :cond_b

    .line 756
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 757
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
