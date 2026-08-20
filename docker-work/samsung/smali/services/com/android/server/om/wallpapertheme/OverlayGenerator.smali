.class public Lcom/android/server/om/wallpapertheme/OverlayGenerator;
.super Ljava/lang/Object;
.source "OverlayGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMonetOverlay(Lcom/android/server/om/wallpapertheme/ThemePalette;)Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/om/wallpapertheme/ThemePalette;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/om/FabricatedOverlay;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 128
    new-instance v8, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v0, "android"

    const-string v1, "SemWT_MonetPalette"

    invoke-direct {v8, v0, v1, v0}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v9, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v1, "SemWT_G_MonetPalette"

    invoke-direct {v9, v0, v1, v0}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_15
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x5

    const/4 v14, 0x3

    if-ge v0, v13, :cond_91

    if-ge v0, v14, :cond_26

    add-int/lit8 v1, v0, 0x1

    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accent"

    goto :goto_2f

    :cond_26
    add-int/lit8 v1, v0, -0x2

    .line 139
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "neutral"

    :goto_2f
    const/4 v3, 0x0

    :goto_30
    const/16 v4, 0xd

    if-ge v3, v4, :cond_8e

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android:color/system_"

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_72

    if-eq v3, v12, :cond_6c

    if-eq v3, v11, :cond_66

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v3, -0x2

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "00"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_66
    const-string v5, "50"

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_6c
    const-string v5, "10"

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_72
    const-string v5, "0"

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c

    .line 164
    invoke-virtual {v7, v0, v3}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(II)I

    move-result v13

    invoke-virtual {v8, v4, v5, v13}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    .line 165
    invoke-virtual {v7, v0, v3}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(II)I

    move-result v13

    invoke-virtual {v9, v4, v5, v13}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 173
    :cond_91
    iget-boolean v15, v7, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    .line 175
    invoke-static {}, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->values()[Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    :goto_99
    if-ge v3, v4, :cond_755

    aget-object v0, v5, v3

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:color/sem_wt_"

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v2, v0, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_light"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_night"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 186
    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v12, 0x17

    const/16 v13, 0x9

    const/4 v11, 0x4

    const/16 v1, 0x8

    sparse-switch v2, :sswitch_data_79c

    :goto_e5
    const/16 v17, -0x1

    goto/16 :goto_32d

    :sswitch_e9
    const-string v2, "actionbar_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    goto :goto_e5

    :cond_f2
    const/16 v17, 0x28

    goto/16 :goto_32d

    :sswitch_f6
    const-string/jumbo v2, "received_bubble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto :goto_e5

    :cond_100
    const/16 v0, 0x27

    goto/16 :goto_291

    :sswitch_104
    const-string/jumbo v2, "mw_primary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    goto :goto_e5

    :cond_10e
    const/16 v0, 0x26

    goto/16 :goto_291

    :sswitch_112
    const-string v2, "appicon_fg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    goto :goto_e5

    :cond_11b
    const/16 v0, 0x25

    goto/16 :goto_291

    :sswitch_11f
    const-string v2, "appicon_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_128

    goto :goto_e5

    :cond_128
    const/16 v0, 0x24

    goto/16 :goto_291

    :sswitch_12c
    const-string/jumbo v2, "quickoptions_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_136

    goto :goto_e5

    :cond_136
    const/16 v0, 0x23

    goto/16 :goto_291

    :sswitch_13a
    const-string v2, "fold_bg_4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    goto :goto_e5

    :cond_143
    const/16 v17, 0x22

    goto/16 :goto_32d

    :sswitch_147
    const-string v2, "fold_bg_3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    goto :goto_e5

    :cond_150
    const/16 v0, 0x21

    goto/16 :goto_291

    :sswitch_154
    const-string v2, "fold_bg_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    goto :goto_e5

    :cond_15d
    const/16 v0, 0x20

    goto/16 :goto_291

    :sswitch_161
    const-string v2, "fold_bg_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16b

    goto/16 :goto_e5

    :cond_16b
    const/16 v17, 0x1f

    goto/16 :goto_32d

    :sswitch_16f
    const-string/jumbo v2, "lock_white_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    goto/16 :goto_e5

    :cond_17a
    const/16 v0, 0x1e

    goto/16 :goto_291

    :sswitch_17e
    const-string/jumbo v2, "lock_white_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    goto/16 :goto_e5

    :cond_189
    const/16 v0, 0x1d

    goto/16 :goto_291

    :sswitch_18d
    const-string/jumbo v2, "quickpanel_btn_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198

    goto/16 :goto_e5

    :cond_198
    const/16 v0, 0x1c

    goto/16 :goto_291

    :sswitch_19c
    const-string/jumbo v2, "keyboard_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a7

    goto/16 :goto_e5

    :cond_1a7
    const/16 v0, 0x1b

    goto/16 :goto_291

    :sswitch_1ab
    const-string/jumbo v2, "voice_rec_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto/16 :goto_e5

    :cond_1b6
    const/16 v0, 0x1a

    goto/16 :goto_291

    :sswitch_1ba
    const-string/jumbo v2, "keyboard_function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c5

    goto/16 :goto_e5

    :cond_1c5
    const/16 v0, 0x19

    goto/16 :goto_291

    :sswitch_1c9
    const-string v2, "focusblock_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d3

    goto/16 :goto_e5

    :cond_1d3
    const/16 v0, 0x18

    goto/16 :goto_291

    :sswitch_1d7
    const-string/jumbo v2, "input_field_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e2

    goto/16 :goto_e5

    :cond_1e2
    move/from16 v17, v12

    goto/16 :goto_32d

    :sswitch_1e6
    const-string/jumbo v2, "toolbar_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f1

    goto/16 :goto_e5

    :cond_1f1
    const/16 v17, 0x16

    goto/16 :goto_32d

    :sswitch_1f5
    const-string/jumbo v2, "quickpanel_btn_on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_200

    goto/16 :goto_e5

    :cond_200
    const/16 v0, 0x15

    goto/16 :goto_291

    :sswitch_204
    const-string/jumbo v2, "widget_bg_contents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20f

    goto/16 :goto_e5

    :cond_20f
    const/16 v17, 0x14

    goto/16 :goto_32d

    :sswitch_213
    const-string/jumbo v2, "messages_sentbubble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e

    goto/16 :goto_e5

    :cond_21e
    const/16 v0, 0x13

    goto/16 :goto_291

    :sswitch_222
    const-string/jumbo v2, "primary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    goto/16 :goto_e5

    :cond_22d
    const/16 v0, 0x12

    goto :goto_291

    :sswitch_230
    const-string v2, "expanded_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23a

    goto/16 :goto_e5

    :cond_23a
    const/16 v17, 0x11

    goto/16 :goto_32d

    :sswitch_23e
    const-string/jumbo v2, "highlight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_249

    goto/16 :goto_e5

    :cond_249
    const/16 v0, 0x10

    goto :goto_291

    :sswitch_24c
    const-string/jumbo v2, "toolbar_icon_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_257

    goto/16 :goto_e5

    :cond_257
    const/16 v0, 0xf

    goto :goto_291

    :sswitch_25a
    const-string/jumbo v2, "keyboard_press"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_265

    goto/16 :goto_e5

    :cond_265
    const/16 v0, 0xe

    goto :goto_291

    :sswitch_268
    const-string/jumbo v2, "secondary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_273

    goto/16 :goto_e5

    :cond_273
    const/16 v0, 0xd

    goto :goto_291

    :sswitch_276
    const-string/jumbo v2, "lock_black_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_281

    goto/16 :goto_e5

    :cond_281
    const/16 v0, 0xc

    goto :goto_291

    :sswitch_284
    const-string/jumbo v2, "lock_black_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28f

    goto/16 :goto_e5

    :cond_28f
    const/16 v0, 0xb

    :goto_291
    move/from16 v17, v0

    goto/16 :goto_32d

    :sswitch_295
    const-string/jumbo v2, "keyboard_general"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a0

    goto/16 :goto_e5

    :cond_2a0
    const/16 v17, 0xa

    goto/16 :goto_32d

    :sswitch_2a4
    const-string v2, "calculator_equal_btn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ae

    goto/16 :goto_e5

    :cond_2ae
    move/from16 v17, v13

    goto/16 :goto_32d

    :sswitch_2b2
    const-string/jumbo v2, "primary_dark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bd

    goto/16 :goto_e5

    :cond_2bd
    move/from16 v17, v1

    goto/16 :goto_32d

    :sswitch_2c1
    const-string v2, "fab_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    goto/16 :goto_e5

    :cond_2cb
    const/16 v17, 0x7

    goto :goto_32d

    :sswitch_2ce
    const-string v2, "background"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d8

    goto/16 :goto_e5

    :cond_2d8
    const/16 v17, 0x6

    goto :goto_32d

    :sswitch_2db
    const-string/jumbo v2, "single_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e6

    goto/16 :goto_e5

    :cond_2e6
    const/16 v17, 0x5

    goto :goto_32d

    :sswitch_2e9
    const-string v2, "bubble_view_bg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f3

    goto/16 :goto_e5

    :cond_2f3
    move/from16 v17, v11

    goto :goto_32d

    :sswitch_2f6
    const-string/jumbo v2, "subtext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_301

    goto/16 :goto_e5

    :cond_301
    move/from16 v17, v14

    goto :goto_32d

    :sswitch_304
    const-string/jumbo v2, "keyboard_bg_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30f

    goto/16 :goto_e5

    :cond_30f
    const/16 v17, 0x2

    goto :goto_32d

    :sswitch_312
    const-string/jumbo v2, "mw_primary_dark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31d

    goto/16 :goto_e5

    :cond_31d
    const/16 v17, 0x1

    goto :goto_32d

    :sswitch_320
    const-string/jumbo v2, "single_track"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32b

    goto/16 :goto_e5

    :cond_32b
    const/16 v17, 0x0

    :goto_32d
    const/16 v2, 0x32

    const/16 v0, 0x29

    packed-switch v17, :pswitch_data_842

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x5

    const/16 v17, 0x0

    :goto_339
    const/16 v18, 0x0

    goto/16 :goto_725

    :pswitch_33d
    if-eqz v15, :cond_354

    const-string v0, "#010101"

    .line 342
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#fafafa"

    .line 343
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_34b
    move v11, v0

    move/from16 v17, v11

    move v12, v1

    move/from16 v18, v12

    const/4 v13, 0x5

    goto/16 :goto_725

    .line 345
    :cond_354
    invoke-virtual {v7, v13}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 346
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 347
    invoke-virtual {v7, v13}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    .line 348
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_3c6

    .line 311
    :pswitch_365
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 312
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 313
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    .line 314
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_3c6

    :pswitch_376
    if-eqz v15, :cond_383

    const/4 v0, 0x7

    .line 446
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/4 v1, 0x6

    .line 447
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    goto :goto_34b

    :cond_383
    const/4 v0, 0x5

    .line 449
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    move v13, v0

    move v11, v1

    move/from16 v17, v11

    goto/16 :goto_658

    .line 425
    :pswitch_38e
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 426
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto/16 :goto_472

    :pswitch_398
    const/4 v1, 0x6

    .line 419
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v2, 0xa

    .line 420
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v11

    .line 421
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    .line 422
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    move/from16 v17, v1

    move/from16 v18, v2

    move v12, v11

    goto/16 :goto_462

    .line 301
    :pswitch_3b2
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x18

    .line 302
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 303
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    const/16 v11, 0x18

    .line 304
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    :goto_3c6
    move v12, v1

    move/from16 v17, v2

    :goto_3c9
    move/from16 v18, v11

    goto/16 :goto_462

    :pswitch_3cd
    const/16 v0, 0x1f

    .line 325
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 326
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    goto/16 :goto_483

    :pswitch_3d9
    const/16 v0, 0x11

    .line 321
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 322
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    goto/16 :goto_483

    :pswitch_3e5
    const/16 v0, 0x1e

    .line 297
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x1e

    .line 298
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_42e

    .line 293
    :pswitch_3f2
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 294
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_42e

    .line 281
    :pswitch_3fb
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 282
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_42e

    .line 277
    :pswitch_404
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 278
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_42e

    :pswitch_40d
    const/16 v0, 0xb

    .line 362
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 363
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0xb

    .line 364
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    .line 365
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_3c6

    :pswitch_422
    const/16 v0, 0x2a

    .line 241
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x2a

    .line 242
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    :goto_42e
    move v11, v0

    move/from16 v17, v1

    :goto_431
    const/4 v12, 0x0

    const/4 v13, 0x5

    goto/16 :goto_339

    .line 413
    :pswitch_435
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 414
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 415
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    .line 416
    invoke-virtual {v7, v14}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    move/from16 v17, v1

    move v12, v2

    goto :goto_3c9

    :pswitch_449
    const/16 v0, 0x2b

    .line 245
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 246
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v11, 0x2b

    .line 247
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    .line 248
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    move v12, v1

    move/from16 v18, v2

    move/from16 v17, v11

    :goto_462
    const/4 v13, 0x5

    :goto_463
    move v11, v0

    goto/16 :goto_725

    :pswitch_466
    const/16 v0, 0x3f

    .line 358
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x3f

    .line 359
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    :goto_472
    move v12, v0

    move/from16 v18, v1

    const/4 v11, 0x0

    const/4 v13, 0x5

    const/16 v17, 0x0

    goto/16 :goto_725

    .line 317
    :pswitch_47b
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 318
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    :goto_483
    move/from16 v17, v0

    move v11, v1

    goto :goto_431

    .line 257
    :pswitch_487
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 258
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v11

    .line 259
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    .line 260
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    move/from16 v17, v0

    move/from16 v18, v2

    move v12, v11

    const/4 v13, 0x5

    :goto_49d
    move v11, v1

    goto/16 :goto_725

    .line 329
    :pswitch_4a0
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/4 v12, 0x5

    .line 330
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 331
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    .line 332
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    :goto_4b1
    move/from16 v17, v1

    move/from16 v18, v11

    goto :goto_4d7

    :pswitch_4b6
    const/4 v0, 0x7

    const/4 v12, 0x5

    .line 335
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 336
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    goto/16 :goto_654

    :pswitch_4c2
    const/4 v12, 0x5

    .line 267
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 268
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 269
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    .line 270
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    :goto_4d3
    move/from16 v18, v1

    move/from16 v17, v11

    :goto_4d7
    move v13, v12

    move v11, v0

    :goto_4d9
    move v12, v2

    goto/16 :goto_725

    :pswitch_4dc
    const/4 v12, 0x5

    if-eqz v15, :cond_4f0

    .line 190
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 191
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 192
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    .line 193
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_4b1

    .line 195
    :cond_4f0
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 196
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto/16 :goto_571

    :pswitch_4fa
    const/4 v12, 0x5

    if-eqz v15, :cond_515

    const/16 v0, 0x16

    .line 375
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x19

    .line 376
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 377
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    const/16 v11, 0x19

    .line 378
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto/16 :goto_5f0

    :cond_515
    const/16 v0, 0x2d

    .line 380
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x2f

    .line 381
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 382
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    const/16 v11, 0x2f

    .line 383
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto/16 :goto_5f0

    :pswitch_52d
    const/4 v12, 0x5

    if-eqz v15, :cond_547

    const/16 v0, 0x25

    .line 229
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x1f

    .line 230
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    const/16 v11, 0x25

    .line 231
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    .line 232
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_4d3

    :cond_547
    const/16 v0, 0x22

    const/16 v1, 0x1f

    .line 234
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 235
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v11

    .line 236
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    .line 237
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    move/from16 v17, v0

    move/from16 v18, v1

    move v13, v12

    move v12, v11

    move v11, v2

    goto/16 :goto_725

    :pswitch_564
    const/4 v12, 0x5

    const/16 v0, 0x2e

    .line 263
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x2e

    .line 264
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    :goto_571
    move v11, v0

    move/from16 v17, v1

    goto/16 :goto_657

    :pswitch_576
    const/4 v12, 0x5

    const/16 v0, 0x2c

    .line 251
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x30

    .line 252
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x2c

    .line 253
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    const/16 v11, 0x30

    .line 254
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    move/from16 v17, v2

    move/from16 v18, v11

    move v13, v12

    move v11, v0

    move v12, v1

    goto/16 :goto_725

    :pswitch_598
    const/4 v12, 0x5

    if-eqz v15, :cond_5b7

    const/16 v0, 0x16

    .line 214
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x14

    .line 215
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v11

    .line 216
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    .line 217
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    move/from16 v17, v0

    move/from16 v18, v2

    move v13, v12

    move v12, v11

    goto/16 :goto_49d

    :cond_5b7
    const/16 v2, 0x14

    .line 219
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 220
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_571

    :pswitch_5c2
    const/4 v12, 0x5

    .line 289
    invoke-virtual {v7, v13}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 290
    invoke-virtual {v7, v13}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto :goto_571

    :pswitch_5cc
    const/16 v0, 0xa

    const/4 v12, 0x5

    .line 285
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 286
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    goto/16 :goto_654

    :pswitch_5d9
    const/16 v0, 0x28

    const/4 v12, 0x5

    .line 431
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x31

    .line 432
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 433
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    const/16 v11, 0x31

    .line 434
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    :goto_5f0
    move/from16 v17, v0

    move/from16 v18, v11

    move v13, v12

    move v11, v1

    goto/16 :goto_4d9

    :pswitch_5f8
    const/4 v12, 0x5

    const/16 v0, 0x20

    .line 368
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x22

    .line 369
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    const/16 v11, 0x20

    .line 370
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    .line 371
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    goto/16 :goto_4d3

    :pswitch_611
    const/4 v12, 0x5

    if-eqz v15, :cond_627

    const/16 v0, 0xa

    .line 201
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 202
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 203
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    .line 204
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_5f0

    .line 206
    :cond_627
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 207
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 208
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    .line 209
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto/16 :goto_4b1

    :pswitch_639
    const/4 v12, 0x5

    .line 273
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 274
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v1

    move/from16 v18, v1

    move v13, v12

    const/4 v11, 0x0

    const/16 v17, 0x0

    move v12, v0

    goto/16 :goto_725

    :pswitch_64b
    const/4 v12, 0x5

    .line 224
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 225
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    :goto_654
    move/from16 v17, v0

    move v11, v1

    :goto_657
    move v13, v12

    :goto_658
    const/4 v12, 0x0

    goto/16 :goto_339

    :pswitch_65b
    const/4 v13, 0x5

    if-eqz v15, :cond_671

    const/16 v0, 0x11

    .line 401
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 402
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 403
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    .line 404
    invoke-virtual {v7, v12}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_6ae

    :cond_671
    const/16 v0, 0x2d

    .line 406
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x2f

    .line 407
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 408
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    const/16 v11, 0x2f

    .line 409
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_6ae

    :pswitch_688
    const/16 v0, 0x28

    const/4 v13, 0x5

    .line 307
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 308
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    move/from16 v17, v0

    move v11, v1

    goto :goto_658

    :pswitch_697
    const/16 v0, 0x2d

    const/4 v13, 0x5

    .line 352
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x2c

    .line 353
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 354
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    const/16 v11, 0x2c

    .line 355
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    :goto_6ae
    move/from16 v17, v0

    move v12, v2

    move/from16 v18, v11

    goto/16 :goto_49d

    :pswitch_6b5
    const/4 v13, 0x5

    const/16 v0, 0x2b

    .line 437
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    const/16 v1, 0x31

    .line 438
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x2b

    .line 439
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v2

    const/16 v11, 0x31

    .line 440
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    move v12, v1

    move/from16 v17, v2

    move/from16 v18, v11

    goto/16 :goto_463

    :pswitch_6d5
    const/4 v13, 0x5

    if-eqz v15, :cond_6e3

    const/16 v0, 0xa

    .line 454
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 455
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    goto :goto_6eb

    .line 457
    :cond_6e3
    invoke-virtual {v7, v1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v0

    .line 458
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    :goto_6eb
    move v11, v0

    move/from16 v17, v11

    move v12, v1

    move/from16 v18, v12

    goto :goto_725

    :pswitch_6f2
    const/4 v13, 0x5

    if-eqz v15, :cond_70c

    const/16 v0, 0x16

    .line 388
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    const/16 v2, 0x13

    .line 389
    invoke-virtual {v7, v2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 390
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    const/16 v11, 0x13

    .line 391
    invoke-virtual {v7, v11}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    goto :goto_6ae

    :cond_70c
    const/16 v0, 0x14

    .line 393
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v1

    .line 394
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result v2

    .line 395
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v11

    .line 396
    invoke-virtual {v7, v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result v0

    move/from16 v18, v0

    move v12, v2

    move/from16 v17, v11

    goto/16 :goto_49d

    :goto_725
    if-eqz v11, :cond_739

    if-eqz v17, :cond_739

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v19, v3

    move-object v3, v10

    move v10, v4

    move v4, v11

    move-object v11, v5

    move/from16 v5, v17

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->setResValuesForOpacity(Landroid/content/om/FabricatedOverlay$Builder;Landroid/content/om/FabricatedOverlay$Builder;Ljava/lang/String;II)V

    goto :goto_73d

    :cond_739
    move/from16 v19, v3

    move v10, v4

    move-object v11, v5

    :goto_73d
    if-eqz v12, :cond_74d

    if-eqz v18, :cond_74d

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move v4, v12

    move/from16 v5, v18

    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->setResValuesForOpacity(Landroid/content/om/FabricatedOverlay$Builder;Landroid/content/om/FabricatedOverlay$Builder;Ljava/lang/String;II)V

    :cond_74d
    add-int/lit8 v3, v19, 0x1

    move v4, v10

    move-object v5, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_99

    .line 471
    :cond_755
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInstance()Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_761
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_787

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/Package;

    .line 473
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Multi window"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_785

    .line 474
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 475
    invoke-virtual {v6, v1, v8, v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeModular(Ljava/util/List;Landroid/content/om/FabricatedOverlay$Builder;Z)V

    .line 476
    invoke-virtual {v6, v1, v9, v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeModular(Ljava/util/List;Landroid/content/om/FabricatedOverlay$Builder;Z)V

    goto :goto_761

    :cond_785
    const/4 v2, 0x1

    goto :goto_761

    .line 480
    :cond_787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-virtual {v8}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v9}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :sswitch_data_79c
    .sparse-switch
        -0x7fc57d6c -> :sswitch_320
        -0x7f4c93f8 -> :sswitch_312
        -0x7d5e47f0 -> :sswitch_304
        -0x6f511c93 -> :sswitch_2f6
        -0x600af894 -> :sswitch_2e9
        -0x5914d864 -> :sswitch_2db
        -0x4f67aad2 -> :sswitch_2ce
        -0x4c6ccb83 -> :sswitch_2c1
        -0x4270f46d -> :sswitch_2b2
        -0x39999a2c -> :sswitch_2a4
        -0x3893b370 -> :sswitch_295
        -0x36605723 -> :sswitch_284
        -0x36605722 -> :sswitch_276
        -0x30bb8e8c -> :sswitch_268
        -0x2da04e15 -> :sswitch_25a
        -0x2b90c2f9 -> :sswitch_24c
        -0x289a734c -> :sswitch_23e
        -0x19c5a275 -> :sswitch_230
        -0x12c2f1fe -> :sswitch_222
        -0xf68c109 -> :sswitch_213
        -0xec80fa7 -> :sswitch_204
        -0x7a4e856 -> :sswitch_1f5
        0x37def89 -> :sswitch_1e6
        0x9cf727f -> :sswitch_1d7
        0xb5e420f -> :sswitch_1c9
        0xc84a530 -> :sswitch_1ba
        0x10cff6f5 -> :sswitch_1ab
        0x10eb1f9d -> :sswitch_19c
        0x1307dd04 -> :sswitch_18d
        0x1a278287 -> :sswitch_17e
        0x1a278288 -> :sswitch_16f
        0x1f152035 -> :sswitch_161
        0x1f152036 -> :sswitch_154
        0x1f152037 -> :sswitch_147
        0x1f152038 -> :sswitch_13a
        0x3f2b5f33 -> :sswitch_12c
        0x41f5c48a -> :sswitch_11f
        0x41f5c506 -> :sswitch_112
        0x68e1786d -> :sswitch_104
        0x73de18aa -> :sswitch_f6
        0x7c9785b6 -> :sswitch_e9
    .end sparse-switch

    :pswitch_data_842
    .packed-switch 0x0
        :pswitch_6f2
        :pswitch_6d5
        :pswitch_6b5
        :pswitch_697
        :pswitch_688
        :pswitch_65b
        :pswitch_64b
        :pswitch_639
        :pswitch_611
        :pswitch_5f8
        :pswitch_5d9
        :pswitch_5cc
        :pswitch_5c2
        :pswitch_598
        :pswitch_576
        :pswitch_564
        :pswitch_52d
        :pswitch_4fa
        :pswitch_4dc
        :pswitch_4c2
        :pswitch_4b6
        :pswitch_4a0
        :pswitch_487
        :pswitch_47b
        :pswitch_466
        :pswitch_449
        :pswitch_435
        :pswitch_422
        :pswitch_40d
        :pswitch_404
        :pswitch_3fb
        :pswitch_3f2
        :pswitch_3e5
        :pswitch_3d9
        :pswitch_3cd
        :pswitch_3b2
        :pswitch_398
        :pswitch_38e
        :pswitch_376
        :pswitch_365
        :pswitch_33d
    .end packed-switch
.end method

.method public createThemeOverlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;
    .registers 6

    .line 29
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInstance()Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/Package;

    .line 32
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/lang/String;Lcom/android/server/om/wallpapertheme/Package;)Landroid/content/om/FabricatedOverlay;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public createThemeOverlays(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/om/FabricatedOverlay;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInstance()Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/wallpapertheme/Package;

    .line 22
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SESL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Multi window"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_11

    .line 23
    :cond_36
    invoke-virtual {p0, p1, v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/lang/String;Lcom/android/server/om/wallpapertheme/Package;)Landroid/content/om/FabricatedOverlay;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3e
    return-object v1
.end method

.method public final setResValuesForOpacity(Landroid/content/om/FabricatedOverlay$Builder;Landroid/content/om/FabricatedOverlay$Builder;Ljava/lang/String;II)V
    .registers 12

    const/16 p0, 0x1c

    .line 487
    invoke-virtual {p1, p3, p0, p4}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    .line 488
    invoke-virtual {p2, p3, p0, p5}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    .line 490
    sget-object v0, Landroid/content/om/WallpaperThemeConstants;->OPACITY_RES_TABLE:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_41

    aget v3, v0, v2

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    .line 493
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    int-to-float v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    .line 496
    invoke-static {v3, p4}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, p0, v5}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    .line 497
    invoke-static {v3, p5}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v4, p0, v3}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_41
    return-void
.end method

.method public final writeModular(Ljava/util/List;Landroid/content/om/FabricatedOverlay$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/Uid;",
            ">;",
            "Landroid/content/om/FabricatedOverlay$Builder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeModular(Ljava/util/List;Landroid/content/om/FabricatedOverlay$Builder;Z)V

    return-void
.end method

.method public final writeModular(Ljava/util/List;Landroid/content/om/FabricatedOverlay$Builder;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/Uid;",
            ">;",
            "Landroid/content/om/FabricatedOverlay$Builder;",
            "Z)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInstance()Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_129

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/Uid;

    .line 55
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getDestAttribName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_8

    :cond_25
    const-string v3, ","

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    sget-object v3, Lcom/android/server/om/wallpapertheme/OverlayGenerator$1;->$SwitchMap$com$android$server$om$wallpapertheme$Uid$TYPE:[I

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getType()Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_9b

    const/4 v0, 0x2

    if-eq v3, v0, :cond_6f

    const/4 v0, 0x3

    if-eq v3, v0, :cond_42

    goto :goto_8

    .line 105
    :cond_42
    invoke-virtual {p0, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 107
    array-length v1, v2

    :goto_49
    if-ge v4, v1, :cond_8

    aget-object v3, v2, v4

    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "integer/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v3, v5, v6}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 95
    :cond_6f
    invoke-virtual {p0, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 97
    array-length v1, v2

    :goto_76
    if-ge v4, v1, :cond_8

    aget-object v3, v2, v4

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bool/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x12

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p2, v3, v5, v6}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 64
    :cond_9b
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getOpacity()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz v1, :cond_ac

    .line 65
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_ad

    :cond_ac
    move v1, v3

    :goto_ad
    if-eqz p3, :cond_b8

    .line 69
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColorResIdForMW(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_c0

    .line 71
    :cond_b8
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColorResId(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    :goto_c0
    const-string v7, "color/"

    if-eqz v6, :cond_ed

    .line 73
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_cb

    goto :goto_ed

    .line 87
    :cond_cb
    array-length v0, v2

    :goto_cc
    if-ge v4, v0, :cond_8

    aget-object v1, v2, v4

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v1, v5, v3}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_cc

    .line 74
    :cond_ed
    :goto_ed
    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/Uid;->getUidValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eq v1, v3, :cond_105

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    :cond_105
    array-length v1, v2

    :goto_106
    if-ge v4, v1, :cond_8

    aget-object v3, v2, v4

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1c

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v3, v5, v6}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_106

    :cond_129
    return-void
.end method

.method public final writeResources(Ljava/lang/String;Lcom/android/server/om/wallpapertheme/Package;)Landroid/content/om/FabricatedOverlay;
    .registers 6

    .line 41
    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v1, Landroid/content/om/FabricatedOverlay$Builder;

    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "android"

    invoke-direct {v1, v2, p1, p2}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeModular(Ljava/util/List;Landroid/content/om/FabricatedOverlay$Builder;)V

    .line 45
    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object p0

    return-object p0
.end method
