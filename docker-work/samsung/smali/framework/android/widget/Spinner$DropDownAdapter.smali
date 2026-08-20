.class Landroid/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/SpinnerAdapter;

.field private greylist-max-o mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "dropDownTheme"    # Landroid/content/res/Resources$Theme;

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-object p1, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1087
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 1088
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1091
    :cond_e
    if-eqz p2, :cond_20

    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_20

    .line 1092
    move-object v0, p1

    check-cast v0, Landroid/widget/ThemedSpinnerAdapter;

    .line 1093
    .local v0, "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1094
    invoke-interface {v0, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 1097
    .end local v0    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    :cond_20
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 3

    .line 1140
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1141
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_9

    .line 1142
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    return v1

    .line 1144
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getCount()I
    .registers 2

    .line 1100
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_a
    return v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1116
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 1104
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 1108
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_7
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1112
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 1166
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 1120
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 1170
    invoke-virtual {p0}, Landroid/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 1153
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1154
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_9

    .line 1155
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 1157
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 1124
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 1125
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1127
    :cond_7
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 1130
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 1131
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1133
    :cond_7
    return-void
.end method
