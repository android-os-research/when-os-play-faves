.class public Lcom/android/server/pm/permission/LegacyPermissionSettings;
.super Ljava/lang/Object;
.source "LegacyPermissionSettings.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation
.end field

.field public final mPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 65
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/Map;ZLcom/android/server/pm/DumpState;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    .line 158
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    move v5, v9

    move v10, v5

    :goto_8
    if-ge v10, v8, :cond_1f

    move-object v11, p3

    .line 160
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermission;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p5

    move-object/from16 v6, p6

    .line 161
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/LegacyPermission;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z

    move-result v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_1f
    if-nez p1, :cond_7b

    if-nez p2, :cond_7b

    .line 166
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_49

    .line 169
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 170
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_43
    const-string v1, "AppOp Permissions:"

    .line 172
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v9

    :cond_49
    const-string v3, "  AppOp Permission "

    .line 174
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 176
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "    "

    .line 178
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66

    :cond_7b
    return-void
.end method

.method public static readPermissions(Landroid/util/ArrayMap;Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;",
            "Landroid/util/TypedXmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 122
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_49

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 123
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_49

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 128
    :cond_1a
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/LegacyPermission;->read(Ljava/util/Map;Landroid/util/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_45

    const/4 v1, 0x5

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element reading permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 133
    :cond_45
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_49
    return-void
.end method


# virtual methods
.method public getPermissionTrees()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 79
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public readPermissionTrees(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Landroid/util/ArrayMap;Landroid/util/TypedXmlPullParser;)V

    .line 115
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public readPermissions(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Landroid/util/ArrayMap;Landroid/util/TypedXmlPullParser;)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public replacePermissionTrees(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_23

    .line 98
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 99
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 101
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public replacePermissions(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_23

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 88
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 90
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public writePermissionTrees(Landroid/util/TypedXmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermission;

    .line 148
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/LegacyPermission;->write(Landroid/util/TypedXmlSerializer;)V

    goto :goto_d

    .line 150
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public writePermissions(Landroid/util/TypedXmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermission;

    .line 140
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/LegacyPermission;->write(Landroid/util/TypedXmlSerializer;)V

    goto :goto_d

    .line 142
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method
