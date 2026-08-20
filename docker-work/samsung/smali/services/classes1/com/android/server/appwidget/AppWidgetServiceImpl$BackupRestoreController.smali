.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackupRestoreController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "BackupRestoreController"

.field public static final WIDGET_STATE_VERSION:I = 0x2


# instance fields
.field public mHasSystemRestoreFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPrunedAppsPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUpdatesByHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUpdatesByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 5707
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5719
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    .line 5721
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 5723
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method


# virtual methods
.method public final alreadyStashed(Ljava/util/ArrayList;II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 6192
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_1b

    .line 6194
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 6195
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    if-ne v3, p2, :cond_18

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    if-ne v2, p3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    return v0
.end method

.method public final countPendingUpdates(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;)I"
        }
    .end annotation

    .line 6295
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v0, p0, :cond_17

    .line 6297
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 6298
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public final findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7

    .line 6112
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2d

    .line 6114
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 6115
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_2a

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 6116
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 11

    .line 6125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find restored widget: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p3, :cond_81

    if-nez p2, :cond_2c

    goto :goto_81

    .line 6133
    :cond_2c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_81

    .line 6135
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 6136
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    if-ne v5, p1, :cond_7e

    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v6, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 6137
    invoke-virtual {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 6138
    invoke-virtual {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 6140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "   Found at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_81
    :goto_81
    return-object v0
.end method

.method public final getPrunedAppsLocked(I)Ljava/util/Set;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6281
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6282
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 6284
    :cond_12
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BackupRestoreController"

    .line 5731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting widget participants for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5735
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5736
    :try_start_22
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_5d

    .line 5738
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 5741
    invoke-virtual {p0, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_5a

    .line 5745
    :cond_42
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5746
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v4, :cond_5a

    .line 5748
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 5751
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_22 .. :try_end_5e} :catchall_64

    .line 5752
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :catchall_64
    move-exception p0

    .line 5751
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 13

    const-string v0, "BackupRestoreController"

    .line 5757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting widget state for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5761
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5764
    :try_start_22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    .line 5765
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_117

    return-object v3

    .line 5769
    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 5770
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5771
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "ws"

    .line 5772
    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    .line 5773
    invoke-interface {v2, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "pkg"

    .line 5774
    invoke-interface {v2, v3, v4, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5780
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_5d
    if-ge v6, v4, :cond_87

    .line 5782
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 5784
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v9

    if-eqz v9, :cond_84

    .line 5785
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 5786
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 5787
    :cond_7d
    iput v7, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 5788
    invoke-static {v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$smserializeProvider(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    add-int/lit8 v7, v7, 0x1

    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 5793
    :cond_87
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmHosts(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    move v7, v6

    :goto_93
    if-ge v6, v4, :cond_bf

    .line 5796
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmHosts(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 5798
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_bc

    .line 5799
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_b5

    .line 5800
    invoke-static {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->-$$Nest$mhostsPackageForUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 5801
    :cond_b5
    iput v7, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 5802
    invoke-static {v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$smserializeHost(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    add-int/lit8 v7, v7, 0x1

    :cond_bc
    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    .line 5809
    :cond_bf
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_ca
    if-ge v6, v4, :cond_f0

    .line 5811
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 5813
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 5814
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_ea

    if-eqz v8, :cond_ed

    .line 5816
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_ed

    .line 5817
    :cond_ea
    invoke-static {v2, v7, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$smserializeAppWidget(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V

    :cond_ed
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    :cond_f0
    const-string/jumbo p0, "ws"

    .line 5821
    invoke-interface {v2, v3, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5822
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_f9} :catch_ff
    .catchall {:try_start_2b .. :try_end_f9} :catchall_117

    .line 5827
    :try_start_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_117

    .line 5829
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_ff
    :try_start_ff
    const-string p0, "BackupRestoreController"

    .line 5824
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to save widget state for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5825
    monitor-exit v1

    return-object v3

    :catchall_117
    move-exception p0

    .line 5827
    monitor-exit v1
    :try_end_119
    .catchall {:try_start_ff .. :try_end_119} :catchall_117

    throw p0
.end method

.method public final isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z
    .registers 3

    .line 6289
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result p0

    if-ne p0, p2, :cond_14

    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p0, :cond_12

    .line 6290
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result p0

    if-ne p0, p2, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final maybeSendWidgetRestoreBroadcastsLocked(I)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 6032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maybeSendWidgetRestoreBroadcasts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "BackupRestoreController"

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6035
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 6037
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 6038
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 6039
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2a
    :goto_2a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v11, " => "

    const-string v12, "   "

    const-string v13, " pending: "

    const/4 v15, 0x1

    if-eqz v0, :cond_bc

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6041
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 6042
    iget-boolean v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v1, :cond_49

    goto :goto_2a

    .line 6047
    :cond_49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6048
    invoke-virtual {v7, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v1

    .line 6050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_2a

    .line 6053
    new-array v4, v1, [I

    .line 6054
    new-array v5, v1, [I

    .line 6055
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_79
    if-ge v14, v1, :cond_b1

    .line 6058
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 6059
    iget-boolean v13, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v13, :cond_ad

    .line 6060
    iput-boolean v15, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 6061
    iget v13, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v13, v4, v3

    .line 6062
    iget v13, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v13, v5, v3

    add-int/lit8 v3, v3, 0x1

    .line 6065
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    goto :goto_79

    :cond_b1
    const/4 v3, 0x0

    const-string v1, "android.appwidget.action.APPWIDGET_RESTORED"

    move-object/from16 v0, p0

    move-object v6, v9

    .line 6069
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    goto/16 :goto_2a

    .line 6076
    :cond_bc
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    .line 6077
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 6078
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c6
    :goto_c6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6079
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 6080
    iget-object v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c6

    .line 6081
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6082
    invoke-virtual {v7, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v1

    .line 6084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Host "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_c6

    .line 6087
    new-array v4, v1, [I

    .line 6088
    new-array v5, v1, [I

    .line 6089
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_110
    if-ge v2, v1, :cond_14f

    .line 6092
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 6093
    iget-boolean v14, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v14, :cond_148

    const/4 v14, 0x1

    .line 6094
    iput-boolean v14, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 6095
    iget v14, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v14, v4, v6

    .line 6096
    iget v14, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v14, v5, v6

    add-int/lit8 v6, v6, 0x1

    .line 6099
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    iget v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14a

    :cond_148
    move-object/from16 v16, v0

    :goto_14a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    goto :goto_110

    :cond_14f
    const/4 v2, 0x0

    const-string v1, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    move-object/from16 v0, p0

    move-object v6, v9

    .line 6103
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    goto/16 :goto_c6

    :cond_15a
    return-void
.end method

.method public final packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    .registers 9

    .line 6149
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_39

    .line 6151
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 6154
    invoke-virtual {p0, v3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_36

    .line 6158
    :cond_21
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    return v5

    .line 6163
    :cond_2b
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_36

    .line 6164
    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_36

    return v5

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_39
    return v1
.end method

.method public final pruneWidgetStateLocked(Ljava/lang/String;I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 6242
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getPrunedAppsLocked(I)Ljava/util/Set;

    move-result-object v0

    .line 6243
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "BackupRestoreController"

    if-nez v1, :cond_6a

    .line 6245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pruning widget state for restoring package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6247
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_66

    .line 6248
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 6250
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 6251
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 6253
    invoke-static {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->-$$Nest$mhostsPackageForUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4d

    if-eqz v4, :cond_63

    .line 6254
    invoke-virtual {v4, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 6258
    :cond_4d
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v4, :cond_59

    .line 6261
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6266
    :cond_59
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mdecrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 6267
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    :cond_63
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 6270
    :cond_66
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 6273
    :cond_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "already pruned "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", continuing normally"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 15

    const-string v0, "BackupRestoreController"

    .line 5850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring widget state for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5857
    :try_start_23
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5862
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 5863
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5865
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_41} :catch_265
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_41} :catch_265
    .catchall {:try_start_23 .. :try_end_41} :catchall_263

    .line 5868
    :cond_41
    :try_start_41
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_25c

    .line 5870
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ws"

    .line 5871
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_93

    const-string/jumbo v6, "version"

    .line 5872
    invoke-interface {v2, v8, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-le v6, v5, :cond_7d

    const-string p2, "BackupRestoreController"

    .line 5874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to process state version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5875
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_41 .. :try_end_77} :catchall_260

    .line 5997
    :goto_77
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$msaveGroupStateAsync(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    return-void

    :cond_7d
    :try_start_7d
    const-string/jumbo v5, "pkg"

    .line 5879
    invoke-interface {v2, v8, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5880
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25c

    const-string p2, "BackupRestoreController"

    const-string v1, "Package mismatch in ws"

    .line 5881
    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5882
    monitor-exit v0

    goto :goto_77

    :cond_93
    const-string/jumbo v5, "p"

    .line 5884
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_11d

    const-string/jumbo v5, "pkg"

    .line 5885
    invoke-interface {v2, v8, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cl"

    .line 5886
    invoke-interface {v2, v8, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5894
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5896
    invoke-virtual {p0, v9, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    if-nez v5, :cond_100

    .line 5898
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 5899
    iput-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5901
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v6, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider-IA;)V

    .line 5902
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-direct {v10, v7, v9, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    iput-object v10, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 5903
    invoke-virtual {v6, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 5904
    iput-boolean v4, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 5905
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "BackupRestoreController"

    .line 5906
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreWidgetState Provider is added "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :cond_100
    const-string v6, "BackupRestoreController"

    .line 5909
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25c

    :cond_11d
    const-string/jumbo v5, "h"

    .line 5912
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_174

    const-string/jumbo v5, "pkg"

    .line 5916
    invoke-interface {v2, v8, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5918
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v6, v5, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mgetUidForPackage(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "id"

    .line 5919
    invoke-interface {v2, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 5921
    new-instance v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v8, v6, v7, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 5922
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v5, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mlookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v5

    .line 5923
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "BackupRestoreController"

    .line 5926
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   host["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25c

    :cond_174
    const-string v5, "g"

    .line 5929
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25c

    const-string/jumbo v5, "id"

    .line 5930
    invoke-interface {v2, v8, v5}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "h"

    .line 5931
    invoke-interface {v2, v8, v6}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5932
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const-string/jumbo v9, "p"

    .line 5934
    invoke-interface {v2, v8, v9, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v7, :cond_1a0

    .line 5938
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    goto :goto_1a1

    :cond_1a0
    move-object v7, v8

    .line 5944
    :goto_1a1
    iget-object v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V

    if-eqz v7, :cond_1b5

    .line 5946
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V

    .line 5951
    :cond_1b5
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v9

    if-nez v9, :cond_203

    .line 5953
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-direct {v9, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget-IA;)V

    .line 5954
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v8, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$mincrementAndGetAppWidgetIdLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I

    move-result v8

    iput v8, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 5955
    iput v5, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 5956
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$smparseWidgetIdOptions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 5957
    iput-object v6, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 5958
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5959
    iput-object v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v7, :cond_1e0

    .line 5961
    iget-object v6, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e0
    const-string v6, "BackupRestoreController"

    .line 5964
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New restored id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v6, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 5969
    :cond_203
    iget-object v6, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_215

    .line 5970
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getPartialInfoLocked()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_215

    .line 5971
    iget-object v6, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p0, v6, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    goto :goto_22b

    :cond_215
    const-string v6, "BackupRestoreController"

    .line 5974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing provider for restored widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    :goto_22b
    iget-object v6, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p0, v6, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    const-string v6, "BackupRestoreController"

    .line 5979
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   instance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " :: p="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25c
    :goto_25c
    if-ne v3, v4, :cond_41

    .line 5993
    monitor-exit v0

    goto :goto_27b

    :catchall_260
    move-exception p2

    monitor-exit v0
    :try_end_262
    .catchall {:try_start_7d .. :try_end_262} :catchall_260

    :try_start_262
    throw p2
    :try_end_263
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_262 .. :try_end_263} :catch_265
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_263} :catch_265
    .catchall {:try_start_262 .. :try_end_263} :catchall_263

    :catchall_263
    move-exception p1

    goto :goto_281

    :catch_265
    :try_start_265
    const-string p2, "BackupRestoreController"

    .line 5995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to restore widget state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27b
    .catchall {:try_start_265 .. :try_end_27b} :catchall_263

    .line 5997
    :goto_27b
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$msaveGroupStateAsync(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    return-void

    :goto_281
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$msaveGroupStateAsync(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 5998
    throw p1
.end method

.method public final sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    .registers 8

    .line 6221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "appWidgetOldIds"

    .line 6222
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "appWidgetIds"

    .line 6223
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    if-eqz p2, :cond_1d

    .line 6225
    iget-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6226
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$msendBroadcastAsUser(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1d
    if-eqz p3, :cond_39

    const/4 p1, 0x0

    .line 6229
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6230
    iget-object p1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6231
    iget-object p1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    const-string/jumbo p2, "hostId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6232
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p0, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$msendBroadcastAsUser(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_39
    return-void
.end method

.method public final stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V
    .registers 6

    .line 6203
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 6205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6206
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 6208
    :cond_15
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 6210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ID remap "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already stashed for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupRestoreController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6216
    :cond_42
    :goto_42
    new-instance p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V
    .registers 6

    .line 6173
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 6175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6176
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 6179
    :cond_15
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 6181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ID remap "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already stashed for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupRestoreController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6187
    :cond_42
    :goto_42
    new-instance p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public systemRestoreFinished(I)V
    .registers 5

    const-string v0, "BackupRestoreController"

    .line 6006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemRestoreFinished for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6008
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 6009
    :try_start_1f
    iput-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mHasSystemRestoreFinished:Z

    .line 6010
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->maybeSendWidgetRestoreBroadcastsLocked(I)V

    .line 6011
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p0
.end method

.method public systemRestoreStarting(I)V
    .registers 5

    const-string v0, "BackupRestoreController"

    .line 5834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System restore starting for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 5838
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mHasSystemRestoreFinished:Z

    .line 5842
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getPrunedAppsLocked(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 5843
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 5844
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 5845
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_33

    throw p0
.end method

.method public widgetComponentsChanged(I)V
    .registers 4

    .line 6019
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6020
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mHasSystemRestoreFinished:Z

    if-eqz v1, :cond_e

    .line 6021
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->maybeSendWidgetRestoreBroadcastsLocked(I)V

    .line 6023
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method
