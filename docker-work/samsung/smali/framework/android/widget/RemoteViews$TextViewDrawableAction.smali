.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field greylist-max-o d1:I

.field greylist-max-o d2:I

.field greylist-max-o d3:I

.field greylist-max-o d4:I

.field greylist-max-o drawablesLoaded:Z

.field greylist-max-o i1:Landroid/graphics/drawable/Icon;

.field greylist-max-o i2:Landroid/graphics/drawable/Icon;

.field greylist-max-o i3:Landroid/graphics/drawable/Icon;

.field greylist-max-o i4:Landroid/graphics/drawable/Icon;

.field greylist-max-o id1:Landroid/graphics/drawable/Drawable;

.field greylist-max-o id2:Landroid/graphics/drawable/Drawable;

.field greylist-max-o id3:Landroid/graphics/drawable/Drawable;

.field greylist-max-o id4:Landroid/graphics/drawable/Drawable;

.field greylist-max-o isRelative:Z

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field greylist-max-o useIcons:Z


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IZIIII)V
    .registers 8
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "d1"    # I
    .param p5, "d2"    # I
    .param p6, "d3"    # I
    .param p7, "d4"    # I

    .line 3037
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3171
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 3172
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 3176
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 3038
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 3039
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 3040
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 3041
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 3042
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 3043
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 3044
    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 3045
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 8
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "i1"    # Landroid/graphics/drawable/Icon;
    .param p5, "i2"    # Landroid/graphics/drawable/Icon;
    .param p6, "i3"    # Landroid/graphics/drawable/Icon;
    .param p7, "i4"    # Landroid/graphics/drawable/Icon;

    .line 3048
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3171
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 3172
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 3176
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 3049
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 3050
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 3051
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 3052
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    .line 3053
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    .line 3054
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    .line 3055
    iput-object p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    .line 3056
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 5
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 3058
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3171
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 3172
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 3176
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 3059
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 3060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, p1

    :goto_1d
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 3061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    move p1, v1

    :cond_26
    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 3062
    if-eqz p1, :cond_53

    .line 3063
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    .line 3064
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    .line 3065
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    .line 3066
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    goto :goto_6b

    .line 3068
    :cond_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 3069
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 3070
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 3071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 3073
    :goto_6b
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 12
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3095
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3096
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    return-void

    .line 3097
    :cond_b
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    if-eqz v1, :cond_2c

    .line 3098
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v1, :cond_20

    .line 3099
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_83

    .line 3101
    :cond_20
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_83

    .line 3103
    :cond_2c
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v1, :cond_68

    .line 3104
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3105
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-nez v2, :cond_3b

    move-object v2, v3

    goto :goto_3f

    :cond_3b
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3106
    .local v2, "id1":Landroid/graphics/drawable/Drawable;
    :goto_3f
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v4, :cond_45

    move-object v4, v3

    goto :goto_49

    :cond_45
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3107
    .local v4, "id2":Landroid/graphics/drawable/Drawable;
    :goto_49
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_4f

    move-object v5, v3

    goto :goto_53

    :cond_4f
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3108
    .local v5, "id3":Landroid/graphics/drawable/Drawable;
    :goto_53
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_58

    goto :goto_5c

    :cond_58
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3109
    .local v3, "id4":Landroid/graphics/drawable/Drawable;
    :goto_5c
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_64

    .line 3110
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_67

    .line 3112
    :cond_64
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3114
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id4":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v5    # "id3":Landroid/graphics/drawable/Drawable;
    :goto_67
    goto :goto_83

    .line 3115
    :cond_68
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v1, :cond_78

    .line 3116
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_83

    .line 3118
    :cond_78
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3121
    :goto_83
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 3158
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 25
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3126
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3127
    .local v1, "target":Landroid/widget/TextView;
    if-nez v1, :cond_13

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v3

    return-object v3

    .line 3129
    :cond_13
    iget-boolean v3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v3, :cond_2c

    .line 3130
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    iget v6, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iget-boolean v7, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iget-object v8, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    iget-object v9, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    iget-object v10, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    iget-object v11, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_48

    .line 3131
    :cond_2c
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget-object v13, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    iget v14, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iget-boolean v15, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iget v4, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v6, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v7, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    move-object v12, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    :goto_48
    nop

    .line 3134
    .local v3, "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    .line 3135
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3137
    .local v4, "ctx":Landroid/content/Context;
    iget-boolean v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_85

    .line 3138
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5b

    move-object v5, v6

    goto :goto_5f

    :cond_5b
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_5f
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    .line 3139
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_67

    move-object v5, v6

    goto :goto_6b

    :cond_67
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_6b
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    .line 3140
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_73

    move-object v5, v6

    goto :goto_77

    :cond_73
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_77
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    .line 3141
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_7e

    goto :goto_82

    :cond_7e
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_82
    iput-object v6, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    goto :goto_b4

    .line 3143
    :cond_85
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    if-nez v5, :cond_8b

    move-object v5, v6

    goto :goto_8f

    :cond_8b
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_8f
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    .line 3144
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    if-nez v5, :cond_97

    move-object v5, v6

    goto :goto_9b

    :cond_97
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_9b
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    .line 3145
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    if-nez v5, :cond_a3

    move-object v5, v6

    goto :goto_a7

    :cond_a3
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_a7
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    .line 3146
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    if-nez v5, :cond_ae

    goto :goto_b2

    :cond_ae
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_b2
    iput-object v6, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    .line 3148
    :goto_b4
    return-object v3
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 2

    .line 3153
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    return v0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3163
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_18

    .line 3164
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3165
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3166
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3167
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 3169
    :cond_18
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3076
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3077
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3078
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3079
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_29

    .line 3080
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3081
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3082
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3083
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3d

    .line 3085
    :cond_29
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3086
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3087
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3088
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    :goto_3d
    return-void
.end method
