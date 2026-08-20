.class public Lcom/android/server/pm/CrossProfileIntentFilter;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "CrossProfileIntentFilter.java"


# static fields
.field public static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field public static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field public static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field public static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field public static final TAG:Ljava/lang/String; = "CrossProfileIntentFilter"


# instance fields
.field public final mFlags:I

.field public final mOwnerPackage:Ljava/lang/String;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargetUserId:I


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V
    .registers 5

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 69
    iput p3, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 70
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 71
    iput p4, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Landroid/util/TypedXmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const/4 v0, 0x0

    const-string/jumbo v1, "targetUserId"

    const/16 v2, -0x2710

    .line 102
    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const-string/jumbo v1, "ownerPackage"

    const-string v2, ""

    .line 103
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getStringFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    const-string v1, "flags"

    const/4 v2, 0x0

    .line 104
    invoke-interface {p1, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 107
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 108
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_31
    :goto_31
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "filter"

    if-eq v2, v3, :cond_7c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_44

    .line 111
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_7c

    .line 112
    :cond_44
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v2, v3, :cond_31

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4e

    goto :goto_31

    :cond_4e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_31

    .line 116
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_7c

    .line 119
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    .line 127
    :cond_7c
    :goto_7c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 128
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a3

    .line 130
    :cond_88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing element under CrossProfileIntentFilter: filter at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {v4, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 133
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_a3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/CrossProfileIntentFilter;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 83
    iget v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 84
    iget-object v0, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 85
    iget p1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    iput p1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 86
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileIntentFilter;Lcom/android/server/pm/CrossProfileIntentFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/CrossProfileIntentFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;II)V
    .registers 5

    .line 77
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 4

    .line 166
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iget v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    iget p1, p1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public getFlags()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    return p0
.end method

.method public getOwnerPackage()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getStringFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    .line 139
    invoke-interface {p1, p0, p2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_29

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing element under CrossProfileIntentFilter: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    .line 143
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object p3

    :cond_29
    return-object p0
.end method

.method public getTargetUserId()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 57
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/CrossProfileIntentFilter$1;-><init>(Lcom/android/server/pm/CrossProfileIntentFilter;Lcom/android/server/pm/CrossProfileIntentFilter;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object p0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossProfileIntentFilter{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "targetUserId"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    iget v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    const-string/jumbo v2, "ownerPackage"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "filter"

    .line 154
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 156
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
