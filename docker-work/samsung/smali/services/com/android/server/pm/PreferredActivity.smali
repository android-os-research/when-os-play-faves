.class public Lcom/android/server/pm/PreferredActivity;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "PreferredActivity.java"

# interfaces
.implements Lcom/android/server/pm/PreferredComponent$Callbacks;


# static fields
.field public static final DEBUG_FILTERS:Z = false

.field public static final TAG:Ljava/lang/String; = "PreferredActivity"


# instance fields
.field public final mPref:Lcom/android/server/pm/PreferredComponent;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PreferredActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 12

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 57
    new-instance p1, Lcom/android/server/pm/PreferredComponent;

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivity;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Landroid/util/TypedXmlPullParser;)V

    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivity;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredActivity;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 69
    iget-object p1, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 70
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PreferredActivity;Lcom/android/server/pm/PreferredActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/PreferredActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 12

    .line 63
    iget-object v1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    return-void
.end method


# virtual methods
.method public dumpPref(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V
    .registers 4

    .line 105
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredComponent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 45
    new-instance v0, Lcom/android/server/pm/PreferredActivity$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PreferredActivity$1;-><init>(Lcom/android/server/pm/PreferredActivity;Lcom/android/server/pm/PreferredActivity;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public onReadTag(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "filter"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 91
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2a

    :cond_e
    const/4 p0, 0x5

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown element under <preferred-activities>: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 99
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2a
    const/4 p0, 0x1

    return p0
.end method

.method public snapshot()Lcom/android/server/pm/PreferredActivity;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredActivity;

    return-object p0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivity;->snapshot()Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivity;->snapshot()Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredActivity{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredComponent;->writeToXml(Landroid/util/TypedXmlSerializer;Z)V

    const/4 p2, 0x0

    const-string v0, "filter"

    .line 80
    invoke-interface {p1, p2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 82
    invoke-interface {p1, p2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
