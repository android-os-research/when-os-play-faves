.class public Lcom/android/server/pm/ShareTargetInfo;
.super Ljava/lang/Object;
.source "ShareTargetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShareTargetInfo$TargetData;
    }
.end annotation


# static fields
.field public static final ATTR_HOST:Ljava/lang/String; = "host"

.field public static final ATTR_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PATH:Ljava/lang/String; = "path"

.field public static final ATTR_PATH_PATTERN:Ljava/lang/String; = "pathPattern"

.field public static final ATTR_PATH_PREFIX:Ljava/lang/String; = "pathPrefix"

.field public static final ATTR_PORT:Ljava/lang/String; = "port"

.field public static final ATTR_SCHEME:Ljava/lang/String; = "scheme"

.field public static final ATTR_TARGET_CLASS:Ljava/lang/String; = "targetClass"

.field public static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"


# instance fields
.field public final mCategories:[Ljava/lang/String;

.field public final mTargetClass:Ljava/lang/String;

.field public final mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;


# direct methods
.method public constructor <init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 107
    iput-object p2, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    return-void
.end method

.method public static loadFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "targetClass"

    .line 155
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_11
    :goto_11
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_56

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    .line 162
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_11

    :cond_33
    const-string/jumbo v3, "name"

    .line 167
    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 164
    :cond_3e
    invoke-static {p0}, Lcom/android/server/pm/ShareTargetInfo;->parseTargetData(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_46
    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    .line 170
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "share-target"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 174
    :cond_56
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_83

    if-eqz v0, :cond_83

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_83

    .line 177
    :cond_65
    new-instance p0, Lcom/android/server/pm/ShareTargetInfo;

    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 179
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :cond_83
    :goto_83
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseTargetData(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .registers 10

    const-string/jumbo v0, "scheme"

    .line 183
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "host"

    .line 184
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "port"

    .line 185
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "path"

    .line 186
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "pathPattern"

    .line 187
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "pathPrefix"

    .line 188
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "mimeType"

    .line 189
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    new-instance p0, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "share-target"

    .line 128
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    const-string/jumbo v3, "targetClass"

    invoke-static {p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move v3, v2

    .line 132
    :goto_11
    iget-object v4, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v4, v4

    if-ge v3, v4, :cond_75

    const-string v4, "data"

    .line 133
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mScheme:Ljava/lang/String;

    const-string/jumbo v6, "scheme"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 135
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mHost:Ljava/lang/String;

    const-string/jumbo v6, "host"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPort:Ljava/lang/String;

    const-string/jumbo v6, "port"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPath:Ljava/lang/String;

    const-string/jumbo v6, "path"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPattern:Ljava/lang/String;

    const-string/jumbo v6, "pathPattern"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 139
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mPathPrefix:Ljava/lang/String;

    const-string/jumbo v6, "pathPrefix"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    iget-object v5, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    const-string/jumbo v6, "mimeType"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 144
    :cond_75
    :goto_75
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_8f

    const-string v3, "category"

    .line 145
    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    iget-object v4, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 147
    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 150
    :cond_8f
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "targetClass="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 115
    :goto_12
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    const-string v3, " data={"

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v3, p0, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShareTargetInfo$TargetData;->toStringInner(Ljava/lang/StringBuilder;)V

    const-string/jumbo v3, "}"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 120
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_40

    const-string v2, " category="

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 124
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
