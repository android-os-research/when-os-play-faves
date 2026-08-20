.class Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
.super Lcom/android/internal/accessibility/dialog/TargetAdapter;
.source "ShortcutTargetAdapter.java"


# instance fields
.field private blacklist mShortcutMenuMode:I

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/TargetAdapter;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 50
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 60
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method blacklist getShortcutMenuMode()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 70
    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez p2, :cond_40

    .line 74
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109001c

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 77
    .end local p2    # "convertView":Landroid/view/View;
    .local v3, "convertView":Landroid/view/View;
    new-instance v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;-><init>()V

    .line 86
    .local v4, "holder":Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    const v6, 0x10201a7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 87
    const v6, 0x10201a8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 89
    const v6, 0x10201a9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4b

    .line 93
    .end local v3    # "convertView":Landroid/view/View;
    .end local v4    # "holder":Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_40
    move-object/from16 v5, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;

    move-object/from16 v3, p2

    .line 96
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v3    # "convertView":Landroid/view/View;
    .restart local v4    # "holder":Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    :goto_4b
    iget-object v6, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    move/from16 v7, p1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 98
    .local v6, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    nop

    .line 99
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    .line 102
    .local v8, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    if-nez v8, :cond_61

    .line 103
    return-object v3

    .line 106
    :cond_61
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 107
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string v10, ""

    .line 108
    .local v10, "summary":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_68
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_93

    .line 109
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "shortcutName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "targetName":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_90

    .line 112
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v14, v9}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    .line 108
    .end local v12    # "shortcutName":Ljava/lang/String;
    .end local v13    # "targetName":Ljava/lang/String;
    :cond_90
    add-int/lit8 v11, v11, 0x1

    goto :goto_68

    .line 116
    .end local v11    # "i":I
    :cond_93
    if-eqz v10, :cond_125

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_125

    const-string v12, ";;;"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_125

    .line 117
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "summaryInfo":[Ljava/lang/String;
    aget-object v13, v12, v2

    .line 119
    .local v13, "key":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v15, v12, v14

    .line 121
    .local v15, "dbType":Ljava/lang/String;
    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_136

    :cond_b5
    goto :goto_d6

    :sswitch_b6
    const-string/jumbo v11, "system"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    move v11, v2

    goto :goto_d8

    :sswitch_c1
    const-string/jumbo v11, "secure"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    move v11, v14

    goto :goto_d8

    :sswitch_cc
    const-string v11, "global"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    const/4 v11, 0x2

    goto :goto_d8

    :goto_d6
    move/from16 v11, v16

    :goto_d8
    const/4 v14, -0x2

    packed-switch v11, :pswitch_data_144

    .line 132
    const/4 v2, 0x0

    .local v2, "turnedOn":Z
    goto :goto_105

    .line 129
    .end local v2    # "turnedOn":Z
    :pswitch_de
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v13, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_ea

    const/4 v2, 0x1

    .line 130
    .restart local v2    # "turnedOn":Z
    :cond_ea
    goto :goto_105

    .line 126
    .end local v2    # "turnedOn":Z
    :pswitch_eb
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v13, v2, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_f7

    const/4 v2, 0x1

    .line 127
    .restart local v2    # "turnedOn":Z
    :cond_f7
    goto :goto_105

    .line 123
    .end local v2    # "turnedOn":Z
    :pswitch_f8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v13, v2, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_104

    move v2, v14

    .line 124
    .restart local v2    # "turnedOn":Z
    :cond_104
    nop

    .line 135
    :goto_105
    if-eqz v2, :cond_10b

    .line 136
    const/4 v11, 0x3

    iput v11, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    goto :goto_10e

    .line 138
    :cond_10b
    const/4 v11, 0x4

    iput v11, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 140
    :goto_10e
    const-string/jumbo v11, "sip_speak_keyboard_input_aloud"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_124

    .line 141
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v11

    if-eqz v11, :cond_124

    .line 142
    const/4 v11, 0x5

    iput v11, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 144
    .end local v2    # "turnedOn":Z
    .end local v12    # "summaryInfo":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "dbType":Ljava/lang/String;
    :cond_124
    goto :goto_128

    .line 145
    :cond_125
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 147
    :goto_128
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 149
    .end local v8    # "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "summary":Ljava/lang/String;
    iget v2, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    invoke-virtual {v6, v4, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 151
    return-object v3

    nop

    :sswitch_data_136
    .sparse-switch
        -0x4a16fc5d -> :sswitch_cc
        -0x3604a489 -> :sswitch_c1
        -0x34e38dd1 -> :sswitch_b6
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_eb
        :pswitch_de
    .end packed-switch
.end method

.method blacklist setShortcutMenuMode(I)V
    .registers 2
    .param p1, "shortcutMenuMode"    # I

    .line 155
    iput p1, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 156
    return-void
.end method
