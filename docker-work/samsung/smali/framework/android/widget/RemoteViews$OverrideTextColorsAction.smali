.class Landroid/widget/RemoteViews$OverrideTextColorsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverrideTextColorsAction"
.end annotation


# instance fields
.field private final greylist-max-o textColor:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;I)V
    .registers 3
    .param p2, "textColor"    # I

    .line 3495
    iput-object p1, p0, Landroid/widget/RemoteViews$OverrideTextColorsAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3496
    iput p2, p0, Landroid/widget/RemoteViews$OverrideTextColorsAction;->textColor:I

    .line 3497
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 3499
    iput-object p1, p0, Landroid/widget/RemoteViews$OverrideTextColorsAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$OverrideTextColorsAction;->textColor:I

    .line 3501
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3511
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 3512
    .local v0, "viewsToProcess":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 3513
    :goto_8
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 3514
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3515
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2b

    .line 3516
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 3517
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3518
    iget v3, p0, Landroid/widget/RemoteViews$OverrideTextColorsAction;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3520
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2b
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_43

    .line 3521
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 3522
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 3523
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3522
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3526
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_43
    goto :goto_8

    .line 3527
    :cond_44
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 3531
    const/16 v0, 0x14

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3504
    iget v0, p0, Landroid/widget/RemoteViews$OverrideTextColorsAction;->textColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    return-void
.end method
