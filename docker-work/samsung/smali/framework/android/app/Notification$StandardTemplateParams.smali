.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# static fields
.field public static final blacklist DECORATION_MINIMAL:I = 0x1

.field public static final blacklist DECORATION_PARTIAL:I = 0x2

.field public static blacklist VIEW_TYPE_BIG:I

.field public static blacklist VIEW_TYPE_GROUP_HEADER:I

.field public static blacklist VIEW_TYPE_GROUP_HEADER_EXPANDED:I

.field public static blacklist VIEW_TYPE_HEADS_UP:I

.field public static blacklist VIEW_TYPE_MINIMIZED:I

.field public static blacklist VIEW_TYPE_NORMAL:I

.field public static blacklist VIEW_TYPE_PUBLIC:I

.field public static blacklist VIEW_TYPE_UNSPECIFIED:I


# instance fields
.field blacklist allowColorization:Z

.field greylist-max-o headerTextSecondary:Ljava/lang/CharSequence;

.field blacklist mAllowTextWithProgress:Z

.field blacklist mCallStyleActions:Z

.field blacklist mHeaderless:Z

.field blacklist mHideActions:Z

.field blacklist mHideAppName:Z

.field blacklist mHideLeftIcon:Z

.field blacklist mHideProgress:Z

.field blacklist mHideRightIcon:Z

.field blacklist mHideSnoozeButton:Z

.field blacklist mHideSubText:Z

.field blacklist mHideTime:Z

.field blacklist mHideTitle:Z

.field blacklist mHighlightExpander:Z

.field blacklist mPromotedPicture:Landroid/graphics/drawable/Icon;

.field blacklist mTextViewId:I

.field blacklist mTitleViewId:I

.field blacklist mViewType:I

.field greylist-max-o maxRemoteInputHistory:I

.field blacklist summaryText:Ljava/lang/CharSequence;

.field greylist-max-o text:Ljava/lang/CharSequence;

.field greylist-max-o title:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12647
    const/4 v0, 0x0

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    .line 12648
    const/4 v0, 0x1

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 12649
    const/4 v0, 0x2

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 12650
    const/4 v0, 0x3

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 12651
    const/4 v0, 0x4

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 12652
    const/4 v0, 0x5

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 12653
    const/4 v0, 0x6

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    .line 12655
    const/4 v0, 0x7

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 12630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12657
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12677
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12678
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12679
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$StandardTemplateParams-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "allowTextWithProgress"    # Z

    .line 12758
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 12759
    return-object p0
.end method

.method final blacklist callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "callStyleActions"    # Z

    .line 12753
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12754
    return-object p0
.end method

.method public blacklist decorationType(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 4
    .param p1, "decorationType"    # I

    .line 12842
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12845
    const/4 v1, 0x0

    if-gt p1, v0, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 12846
    .local v0, "hideOtherFields":Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12847
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12848
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12849
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideActions(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12850
    return-object p0
.end method

.method final blacklist disallowColorization()Landroid/app/Notification$StandardTemplateParams;
    .registers 2

    .line 12814
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12815
    return-object p0
.end method

.method final greylist-max-o fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .registers 4
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .line 12824
    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12825
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12826
    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12827
    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12828
    return-object p0
.end method

.method final blacklist hasTitle()Z
    .registers 2

    .line 12709
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final greylist-max-o headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12798
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 12799
    return-object p0
.end method

.method public blacklist headerless(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "headerless"    # Z

    .line 12718
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12719
    return-object p0
.end method

.method final blacklist hideActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideActions"    # Z

    .line 12738
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12739
    return-object p0
.end method

.method public blacklist hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideAppName"    # Z

    .line 12723
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12724
    return-object p0
.end method

.method final blacklist hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideLeftIcon"    # Z

    .line 12804
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12805
    return-object p0
.end method

.method final blacklist hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideProgress"    # Z

    .line 12743
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12744
    return-object p0
.end method

.method final blacklist hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideRightIcon"    # Z

    .line 12809
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 12810
    return-object p0
.end method

.method final blacklist hideSnoozeButton(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideSnoozeButton"    # Z

    .line 12763
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12764
    return-object p0
.end method

.method public blacklist hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideSubText"    # Z

    .line 12728
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12729
    return-object p0
.end method

.method public blacklist hideTime(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideTime"    # Z

    .line 12733
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12734
    return-object p0
.end method

.method final blacklist hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideTitle"    # Z

    .line 12748
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12749
    return-object p0
.end method

.method final blacklist highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "highlight"    # Z

    .line 12819
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 12820
    return-object p0
.end method

.method final blacklist promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "promotedPicture"    # Landroid/graphics/drawable/Icon;

    .line 12768
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12769
    return-object p0
.end method

.method final greylist-max-o reset()Landroid/app/Notification$StandardTemplateParams;
    .registers 4

    .line 12682
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12683
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12684
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12685
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12686
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12687
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12688
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12689
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12690
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12691
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12692
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 12693
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12694
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12695
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 12696
    const v2, 0x1020016

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 12697
    const v2, 0x1020617

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12698
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12699
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12700
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12701
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 12702
    const/4 v1, 0x3

    iput v1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12703
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12704
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 12705
    return-object p0
.end method

.method public greylist-max-o setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "maxRemoteInputHistory"    # I

    .line 12837
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12838
    return-object p0
.end method

.method final blacklist summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12793
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12794
    return-object p0
.end method

.method final greylist-max-o text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12788
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12789
    return-object p0
.end method

.method public blacklist textViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "textViewId"    # I

    .line 12778
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12779
    return-object p0
.end method

.method final greylist-max-o title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 12783
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12784
    return-object p0
.end method

.method public blacklist titleViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "titleViewId"    # I

    .line 12773
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 12774
    return-object p0
.end method

.method final blacklist viewType(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "viewType"    # I

    .line 12713
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12714
    return-object p0
.end method
