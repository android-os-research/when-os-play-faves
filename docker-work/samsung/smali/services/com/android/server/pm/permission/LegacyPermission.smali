.class public final Lcom/android/server/pm/permission/LegacyPermission;
.super Ljava/lang/Object;
.source "LegacyPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/LegacyPermission$PermissionType;
    }
.end annotation


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field public static final TYPE_CONFIG:I = 0x1

.field public static final TYPE_DYNAMIC:I = 0x2

.field public static final TYPE_MANIFEST:I


# instance fields
.field public final mGids:[I

.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;II[I)V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 95
    iput p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    .line 96
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    .line 97
    iput-object p4, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 103
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 104
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 p1, 0x2

    .line 106
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 107
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    .line 109
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    return-void
.end method

.method public static read(Ljava/util/Map;Landroid/util/TypedXmlPullParser;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;",
            "Landroid/util/TypedXmlPullParser;",
            ")Z"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "item"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    .line 140
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    .line 141
    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    .line 142
    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_80

    if-nez v3, :cond_2a

    goto :goto_80

    :cond_2a
    const-string v5, "dynamic"

    .line 149
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 150
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermission;

    const/4 v6, 0x1

    if-eqz v5, :cond_3d

    .line 152
    iget v7, v5, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    if-eq v7, v6, :cond_4b

    .line 153
    :cond_3d
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_47

    const/4 v7, 0x2

    goto :goto_48

    :cond_47
    move v7, v1

    .line 154
    :goto_48
    invoke-direct {v5, v2, v3, v7}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    :cond_4b
    iget-object v2, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string/jumbo v3, "protection"

    invoke-static {p1, v0, v3, v1}, Lcom/android/server/pm/permission/LegacyPermission;->readInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 158
    iget-object v2, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eqz v4, :cond_78

    .line 161
    iget-object v2, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string/jumbo v3, "icon"

    invoke-static {p1, v0, v3, v1}, Lcom/android/server/pm/permission/LegacyPermission;->readInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Landroid/content/pm/PermissionInfo;->icon:I

    .line 162
    iget-object v1, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string/jumbo v2, "label"

    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 164
    :cond_78
    iget-object p1, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_80
    :goto_80
    const/4 p0, 0x5

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v1
.end method

.method public static readInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 170
    invoke-interface {p0, p1, p2, p3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/pm/DumpState;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 204
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    return v0

    :cond_e
    if-eqz p3, :cond_1b

    .line 207
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    return v0

    :cond_1b
    if-nez p5, :cond_2b

    .line 211
    invoke-virtual {p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 212
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_26
    const-string p2, "Permissions:"

    .line 214
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2b
    const-string p2, "  Permission ["

    .line 216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "] ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "):"

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    sourcePackage="

    .line 219
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    uid="

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " gids="

    .line 221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " type="

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " prot="

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {p2}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz p2, :cond_b5

    const-string p2, "    perm="

    .line 226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 227
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p2

    if-eqz p3, :cond_a5

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b5

    :cond_a5
    const-string p2, "    flags=0x"

    .line 229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    :cond_b5
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c9

    const-string p0, "    enforced="

    .line 234
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Z)V

    :cond_c9
    const/4 p0, 0x1

    return p0
.end method

.method public getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    return p0
.end method

.method public write(Landroid/util/TypedXmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    .line 180
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eqz v2, :cond_2e

    const-string/jumbo v3, "protection"

    .line 184
    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    :cond_2e
    iget v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_57

    const-string/jumbo v2, "type"

    const-string v3, "dynamic"

    .line 187
    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v2, :cond_47

    const-string/jumbo v3, "icon"

    .line 189
    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    :cond_47
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz p0, :cond_57

    .line 192
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "label"

    invoke-interface {p1, v0, v2, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    :cond_57
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
