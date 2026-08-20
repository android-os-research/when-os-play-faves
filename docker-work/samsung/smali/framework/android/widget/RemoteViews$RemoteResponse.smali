.class public Landroid/widget/RemoteViews$RemoteResponse;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteResponse$InteractionType;
    }
.end annotation


# static fields
.field public static final blacklist INTERACTION_TYPE_CHECKED_CHANGE:I = 0x1

.field public static final blacklist INTERACTION_TYPE_CLICK:I


# instance fields
.field private blacklist mElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillIntent:Landroid/content/Intent;

.field private blacklist mInteractionType:I

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mViewIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 6817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6834
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    return-void
.end method

.method public static whitelist fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2
    .param p0, "fillIntent"    # Landroid/content/Intent;

    .line 6879
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 6880
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 6881
    return-object v0
.end method

.method public static whitelist fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 6849
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 6850
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 6851
    return-object v0
.end method

.method private static blacklist getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .line 6978
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 6980
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 6987
    .local v1, "parent":Landroid/view/View;
    :goto_a
    if-eqz v1, :cond_20

    instance-of v2, v1, Landroid/widget/AdapterView;

    if-nez v2, :cond_20

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_18

    instance-of v2, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v2, :cond_20

    .line 6990
    :cond_18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_a

    .line 6993
    :cond_20
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-eqz v2, :cond_27

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    :cond_27
    return-object v0
.end method

.method private blacklist handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6946
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 6947
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .local v0, "pi":Landroid/app/PendingIntent;
    goto :goto_2f

    .line 6948
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_7
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_33

    .line 6949
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteResponse;->getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;

    move-result-object v0

    .line 6950
    .local v0, "ancestor":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez v0, :cond_19

    .line 6951
    const-string v2, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6952
    return-void

    .line 6956
    :cond_19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/PendingIntent;

    if-nez v2, :cond_27

    .line 6957
    const-string v2, "Attempting setOnClickFillInIntent or setOnCheckedChangeFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6960
    return-void

    .line 6963
    :cond_27
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    .line 6964
    .local v0, "pi":Landroid/app/PendingIntent;
    nop

    .line 6969
    :goto_2f
    invoke-interface {p2, p1, v0, p0}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    .line 6970
    return-void

    .line 6965
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_33
    const-string v0, "Response has neither pendingIntent nor fillInIntent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6966
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6932
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 6933
    if-nez v0, :cond_12

    .line 6934
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 6936
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 6937
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 6938
    .local v0, "viewIds":[I
    if-nez v0, :cond_20

    const/4 v1, 0x0

    goto :goto_24

    :cond_20
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    :goto_24
    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 6939
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 6940
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6921
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 6922
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_e

    .line 6924
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6926
    :cond_e
    iget v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6927
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6928
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6929
    return-void
.end method


# virtual methods
.method public whitelist addSharedElement(ILjava/lang/String;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 6897
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_12

    .line 6898
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 6899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 6901
    :cond_12
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 6902
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6903
    return-object p0
.end method

.method public blacklist getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    .line 6998
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_11

    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6999
    .local v0, "intent":Landroid/content/Intent;
    :goto_11
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 7001
    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2d

    iget v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 7003
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "android.widget.extra.CHECKED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7006
    :cond_2d
    const/4 v1, 0x0

    .line 7008
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7009
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/high16 v4, 0x10000000

    if-eqz v3, :cond_6d

    .line 7011
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 7013
    .local v3, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 7015
    .local v5, "windowAnimations":I
    sget-object v7, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 7017
    .local v7, "windowAnimationStyle":Landroid/content/res/TypedArray;
    const/16 v8, 0x1a

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 7019
    .local v8, "enterAnimationId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 7020
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 7022
    if-eqz v8, :cond_6d

    .line 7023
    invoke-static {v2, v8, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 7025
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 7029
    .end local v3    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v5    # "windowAnimations":I
    .end local v7    # "windowAnimationStyle":Landroid/content/res/TypedArray;
    .end local v8    # "enterAnimationId":I
    :cond_6d
    if-nez v1, :cond_aa

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-eqz v3, :cond_aa

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_aa

    .line 7030
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7031
    .local v3, "parent":Landroid/view/View;
    :goto_7d
    if-eqz v3, :cond_8b

    instance-of v5, v3, Landroid/appwidget/AppWidgetHostView;

    if-nez v5, :cond_8b

    .line 7032
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/view/View;

    goto :goto_7d

    .line 7034
    :cond_8b
    instance-of v5, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_aa

    .line 7035
    move-object v5, v3

    check-cast v5, Landroid/appwidget/AppWidgetHostView;

    iget-object v6, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 7036
    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 7037
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 7035
    invoke-virtual {v5, v6, v7, v0}, Landroid/appwidget/AppWidgetHostView;->createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 7041
    .end local v3    # "parent":Landroid/view/View;
    :cond_aa
    if-nez v1, :cond_b3

    .line 7042
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 7043
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 7045
    :cond_b3
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 7046
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_d1

    .line 7049
    :cond_c5
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "RemoteViews"

    const-string v5, "getLaunchOptions: view.getDisplay() is null!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7052
    :goto_d1
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public blacklist setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2
    .param p1, "type"    # I

    .line 6916
    iput p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 6917
    return-object p0
.end method
