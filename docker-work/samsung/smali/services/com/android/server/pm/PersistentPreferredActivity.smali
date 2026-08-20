.class public Lcom/android/server/pm/PersistentPreferredActivity;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "PersistentPreferredActivity.java"


# static fields
.field public static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_SET_BY_DPM:Ljava/lang/String; = "set-by-dpm"

.field public static final DEBUG_FILTERS:Z = false

.field public static final TAG:Ljava/lang/String; = "PersistentPreferredActivity"


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mIsSetByDpm:Z

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PersistentPreferredActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;Z)V
    .registers 4

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 61
    iput-object p2, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 62
    iput-boolean p3, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredActivity;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Landroid/util/TypedXmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 81
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-string v3, " at "

    const/4 v4, 0x5

    if-nez v2, :cond_34

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: Bad activity name "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_34
    const/4 v1, 0x0

    const-string/jumbo v2, "set-by-dpm"

    .line 89
    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 91
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 92
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_46
    :goto_46
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    const-string v6, "filter"

    if-eq v2, v5, :cond_8e

    const/4 v5, 0x3

    if-ne v2, v5, :cond_58

    .line 95
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_8e

    .line 96
    :cond_58
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v2, v5, :cond_46

    const/4 v5, 0x4

    if-ne v2, v5, :cond_62

    goto :goto_46

    :cond_62
    const/4 v5, 0x2

    if-ne v2, v5, :cond_46

    .line 100
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_8e

    .line 103
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 106
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_46

    .line 110
    :cond_8e
    :goto_8e
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 111
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b5

    .line 113
    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing element filter at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 118
    :goto_b5
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredActivity;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersistentPreferredActivity;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 74
    iget-object v0, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 75
    iget-boolean p1, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    .line 76
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PersistentPreferredActivity;Lcom/android/server/pm/PersistentPreferredActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/server/pm/PersistentPreferredActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;Z)V
    .registers 4

    .line 68
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;Z)V

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 50
    new-instance v0, Lcom/android/server/pm/PersistentPreferredActivity$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PersistentPreferredActivity$1;-><init>(Lcom/android/server/pm/PersistentPreferredActivity;Lcom/android/server/pm/PersistentPreferredActivity;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public snapshot()Lcom/android/server/pm/PersistentPreferredActivity;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredActivity;

    return-object p0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredActivity;->snapshot()Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredActivity;->snapshot()Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistentPreferredActivity{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    .line 136
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSetByDpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 122
    iget-object v0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    iget-boolean v0, p0, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    const-string/jumbo v2, "set-by-dpm"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "filter"

    .line 124
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 126
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
