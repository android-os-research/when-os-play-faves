.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field public static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field public static final ATTR_MATCH:Ljava/lang/String; = "match"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_SET:Ljava/lang/String; = "set"

.field public static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field public final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field public mParseError:Ljava/lang/String;

.field public final mSetClasses:[Ljava/lang/String;

.field public final mSetComponents:[Ljava/lang/String;

.field public final mSetPackages:[Ljava/lang/String;

.field public final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 10

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    const/high16 p1, 0xfff0000

    and-int/2addr p1, p2

    .line 69
    iput p1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 70
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 71
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 72
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-eqz p3, :cond_52

    .line 75
    array-length p2, p3

    .line 76
    new-array p4, p2, [Ljava/lang/String;

    .line 77
    new-array p5, p2, [Ljava/lang/String;

    .line 78
    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_21
    if-ge v1, p2, :cond_4b

    .line 80
    aget-object v2, p3, v1

    if-nez v2, :cond_2e

    .line 82
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void

    .line 87
    :cond_2e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 88
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v1

    .line 89
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 91
    :cond_4b
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_58

    .line 95
    :cond_52
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    :goto_58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Landroid/util/TypedXmlPullParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    const/4 p1, 0x0

    const-string/jumbo v0, "name"

    .line 104
    invoke-interface {p2, p1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 105
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_2a

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad activity name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_2a
    const-string/jumbo v1, "match"

    const/4 v2, 0x0

    .line 109
    invoke-interface {p2, p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const-string/jumbo v1, "set"

    .line 110
    invoke-interface {p2, p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "always"

    const/4 v5, 0x1

    .line 111
    invoke-interface {p2, p1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-lez v3, :cond_49

    .line 113
    new-array v4, v3, [Ljava/lang/String;

    goto :goto_4a

    :cond_49
    move-object v4, p1

    :goto_4a
    if-lez v3, :cond_4f

    .line 114
    new-array v6, v3, [Ljava/lang/String;

    goto :goto_50

    :cond_4f
    move-object v6, p1

    :goto_50
    if-lez v3, :cond_55

    .line 115
    new-array v7, v3, [Ljava/lang/String;

    goto :goto_56

    :cond_55
    move-object v7, p1

    .line 119
    :goto_56
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    .line 121
    :cond_5a
    :goto_5a
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    if-eq v9, v5, :cond_119

    const/4 v10, 0x3

    if-ne v9, v10, :cond_69

    .line 123
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_119

    :cond_69
    if-eq v9, v10, :cond_5a

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6f

    goto :goto_5a

    .line 129
    :cond_6f
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 133
    invoke-interface {p2, p1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_99

    .line 135
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v9, :cond_ed

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No name in set tag in preferred activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_ed

    :cond_99
    if-lt v2, v3, :cond_b5

    .line 140
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v9, :cond_ed

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many set tags in preferred activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_ed

    .line 145
    :cond_b5
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_dd

    .line 147
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v10, :cond_ed

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad set name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in preferred activity "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_ed

    .line 152
    :cond_dd
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    .line 153
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    .line 154
    aput-object v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    .line 158
    :cond_ed
    :goto_ed
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5a

    .line 159
    :cond_f2
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    invoke-interface {v10, v9, p2}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PreferredComponent"

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5a

    :cond_119
    if-eq v2, v3, :cond_144

    .line 166
    iget-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez p1, :cond_144

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough set tags (expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 172
    :cond_144
    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 173
    iput-object v6, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 174
    iput-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    if-nez p1, :cond_8

    goto :goto_5e

    .line 336
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 337
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_15
    if-ge v4, v0, :cond_51

    .line 340
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 341
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move v6, v1

    :goto_20
    if-ge v6, v2, :cond_4e

    .line 343
    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 344
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v6, v8, v6

    invoke-direct {v5, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 349
    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/ComponentName;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ComponentName;

    return-object p0

    :cond_5e
    :goto_5e
    new-array p0, v1, [Landroid/content/ComponentName;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    .line 353
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p3, 0x20

    .line 355
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(C)V

    .line 356
    iget-object p3, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mMatch=0x"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget p3, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mAlways="

    .line 359
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 360
    iget-object p3, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz p3, :cond_57

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  Selected from:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 362
    :goto_40
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_57

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_40

    :cond_57
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object p0
.end method

.method public isSuperset(Ljava/util/List;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1

    :cond_a
    if-nez p1, :cond_d

    return v2

    .line 302
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    if-nez p2, :cond_19

    if-ge v3, v0, :cond_19

    return v1

    .line 307
    :cond_19
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 308
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_26
    if-ge v5, v0, :cond_62

    .line 310
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 311
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_3b

    .line 316
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_5f

    :cond_3b
    move v7, v1

    :goto_3c
    if-ge v7, v3, :cond_5b

    .line 321
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    move v6, v2

    goto :goto_5c

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_5b
    move v6, v1

    :goto_5c
    if-nez v6, :cond_5f

    return v1

    :cond_5f
    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_62
    return v2
.end method

.method public final sameComponent(Landroid/content/ComponentName;)Z
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    if-nez p1, :cond_8

    goto :goto_28

    .line 288
    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 289
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v1
.end method

.method public sameSet(Lcom/android/server/pm/PreferredComponent;)Z
    .registers 7

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    iget-object v0, p1, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PreferredComponent;->sameComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_43

    .line 269
    :cond_14
    iget-object v0, p1, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v0, v0

    .line 270
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_1d

    return v1

    :cond_1d
    move v0, v1

    :goto_1e
    if-ge v0, v2, :cond_41

    .line 275
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_40
    :goto_40
    return v1

    :cond_41
    const/4 p0, 0x1

    return p0

    :cond_43
    :goto_43
    return v1
.end method

.method public sameSet(Ljava/util/List;ZI)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)Z"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    :cond_b
    if-nez p1, :cond_e

    return v2

    .line 205
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 206
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 207
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 208
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v5

    move v6, v2

    move v7, v6

    :goto_23
    if-ge v6, v0, :cond_7b

    .line 211
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 212
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_38

    .line 217
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_78

    .line 223
    :cond_38
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageUserState;

    if-eqz v9, :cond_52

    .line 225
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_52

    goto :goto_78

    :cond_52
    move v9, v2

    :goto_53
    if-ge v9, v3, :cond_74

    .line 231
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 232
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    add-int/lit8 v7, v7, 0x1

    move v8, v1

    goto :goto_75

    :cond_71
    add-int/lit8 v9, v9, 0x1

    goto :goto_53

    :cond_74
    move v8, v2

    :goto_75
    if-nez v8, :cond_78

    return v2

    :cond_78
    :goto_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_7b
    if-ne v7, v3, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v2

    :goto_7f
    return v1
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .registers 12

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 245
    :cond_6
    array-length v2, p1

    .line 246
    array-length v0, v0

    move v3, v1

    move v4, v3

    :goto_a
    const/4 v5, 0x1

    if-ge v3, v2, :cond_3b

    .line 249
    aget-object v6, p1, v3

    move v7, v1

    :goto_10
    if-ge v7, v0, :cond_34

    .line 252
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 253
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_34
    move v5, v1

    :goto_35
    if-nez v5, :cond_38

    return v1

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3b
    if-ne v4, v0, :cond_3e

    move v1, v5

    :cond_3e
    return v1
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    goto :goto_8

    :cond_7
    move v0, v1

    .line 183
    :goto_8
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v3, v4, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_3c

    .line 185
    iget p2, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz p2, :cond_1d

    const-string/jumbo v2, "match"

    .line 186
    invoke-interface {p1, v3, v2, p2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    :cond_1d
    iget-boolean p2, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    const-string v2, "always"

    invoke-interface {p1, v3, v2, p2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p2, "set"

    .line 189
    invoke-interface {p1, v3, p2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :goto_2a
    if-ge v1, v0, :cond_3c

    .line 191
    invoke-interface {p1, v3, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v3, v4, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-interface {p1, v3, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3c
    return-void
.end method
