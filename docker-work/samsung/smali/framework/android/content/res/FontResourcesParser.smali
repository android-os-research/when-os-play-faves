.class public Landroid/content/res/FontResourcesParser;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;,
        Landroid/content/res/FontResourcesParser$FontFileResourceEntry;,
        Landroid/content/res/FontResourcesParser$ProviderResourceEntry;,
        Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FontResourcesParser"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    goto :goto_0

    .line 148
    :cond_c
    if-ne v1, v2, :cond_13

    .line 151
    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 149
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "font-family"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 159
    .local v3, "result":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 160
    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v1

    return-object v1

    .line 162
    :cond_17
    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 163
    const-string v2, "FontResourcesParser"

    const-string v4, "Failed to find font-family tag"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v1
.end method

.method private static greylist-max-o readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 18
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 171
    .local v1, "attrs":Landroid/util/AttributeSet;
    sget-object v2, Lcom/android/internal/R$styleable;->FontFamily:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 172
    .local v2, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "authority":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, "providerPackage":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 175
    .local v12, "query":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 176
    .local v13, "certsId":I
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, "systemFontFamilyName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    if-eqz v10, :cond_8c

    if-eqz v11, :cond_8c

    if-eqz v12, :cond_8c

    .line 180
    :goto_2e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v6, :cond_38

    .line 181
    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2e

    .line 183
    :cond_38
    const/4 v4, 0x0

    .line 184
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v13, :cond_7f

    .line 185
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 186
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-lez v7, :cond_7a

    .line 187
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 188
    invoke-virtual {v6, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_53

    :cond_52
    move v5, v3

    .line 189
    .local v5, "isArrayOfArrays":Z
    :goto_53
    if-eqz v5, :cond_6f

    .line 190
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_56
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6e

    .line 191
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 192
    .local v8, "certId":I
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, "certsArray":[Ljava/lang/String;
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 194
    .local v15, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v8    # "certId":I
    .end local v9    # "certsArray":[Ljava/lang/String;
    .end local v15    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .end local v7    # "i":I
    :cond_6e
    goto :goto_7a

    .line 197
    :cond_6f
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "certsArray":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 199
    .local v7, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v3    # "certsArray":[Ljava/lang/String;
    .end local v5    # "isArrayOfArrays":Z
    .end local v7    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7a
    :goto_7a
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v3, v4

    goto :goto_80

    .line 184
    .end local v6    # "typedArray":Landroid/content/res/TypedArray;
    :cond_7f
    move-object v3, v4

    .line 204
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v3, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_80
    new-instance v15, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    move-object v4, v15

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v9}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v15

    .line 212
    .end local v3    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/FontResourcesParser$FontFileResourceEntry;>;"
    :goto_91
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v6, :cond_b8

    .line 214
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_9e

    goto :goto_91

    .line 215
    :cond_9e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "tag":Ljava/lang/String;
    const-string v7, "font"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 217
    invoke-static/range {p0 .. p1}, Landroid/content/res/FontResourcesParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v7

    .line 218
    .local v7, "entry":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    if-eqz v7, :cond_b3

    .line 219
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v7    # "entry":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    :cond_b3
    goto :goto_b7

    .line 222
    :cond_b4
    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 224
    .end local v5    # "tag":Ljava/lang/String;
    :goto_b7
    goto :goto_91

    .line 225
    :cond_b8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 226
    const/4 v4, 0x0

    return-object v4

    .line 228
    :cond_c0
    new-instance v4, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 229
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    .line 228
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    invoke-direct {v4, v5}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;-><init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V

    return-object v4
.end method

.method private static greylist-max-o readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .registers 16
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 235
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Lcom/android/internal/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 236
    .local v1, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 238
    .local v2, "weight":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 240
    .local v3, "italic":I
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "variationSettings":Ljava/lang/String;
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 243
    .local v11, "ttcIndex":I
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    :goto_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_31

    .line 246
    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_27

    .line 248
    :cond_31
    if-nez v12, :cond_35

    .line 249
    const/4 v4, 0x0

    return-object v4

    .line 251
    :cond_35
    new-instance v13, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-object v4, v13

    move-object v5, v12

    move v6, v2

    move v7, v3

    move-object v8, v10

    move v9, v11

    invoke-direct/range {v4 .. v9}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    return-object v13
.end method

.method private static greylist-max-o skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x1

    .line 256
    .local v0, "depth":I
    :goto_1
    if-lez v0, :cond_12

    .line 257
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_11

    .line 262
    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 259
    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 260
    nop

    .line 263
    :goto_11
    goto :goto_1

    .line 266
    :cond_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method
