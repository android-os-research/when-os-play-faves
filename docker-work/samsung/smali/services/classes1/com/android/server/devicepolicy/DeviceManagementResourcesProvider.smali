.class public Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
.super Ljava/lang/Object;
.source "DeviceManagementResourcesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;,
        Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;
    }
.end annotation


# static fields
.field public static final ATTR_DRAWABLE_ID:Ljava/lang/String; = "drawable-id"

.field public static final ATTR_DRAWABLE_SOURCE:Ljava/lang/String; = "drawable-source"

.field public static final ATTR_DRAWABLE_STYLE:Ljava/lang/String; = "drawable-style"

.field public static final ATTR_SOURCE_ID:Ljava/lang/String; = "source-id"

.field public static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field public static final TAG_DRAWABLE_SOURCE_ENTRY:Ljava/lang/String; = "drawable-source-entry"

.field public static final TAG_DRAWABLE_STYLE_ENTRY:Ljava/lang/String; = "drawable-style-entry"

.field public static final TAG_ROOT:Ljava/lang/String; = "root"

.field public static final TAG_STRING_ENTRY:Ljava/lang/String; = "string-entry"

.field public static final UPDATED_RESOURCES_XML:Ljava/lang/String; = "updated_resources.xml"


# instance fields
.field public final mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mUpdatedDrawablesForSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/admin/ParcelableResource;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mUpdatedDrawablesForStyle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/admin/ParcelableResource;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUpdatedStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/admin/ParcelableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResourcesFile(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/io/File;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getResourcesFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 186
    monitor-exit v0

    return-object p3

    .line 188
    :cond_b
    iget-object p3, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_16

    const/4 p0, 0x0

    .line 189
    monitor-exit v0

    return-object p0

    .line 191
    :cond_16
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 6

    .line 198
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 201
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return-object v1

    .line 204
    :cond_19
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    return-object p0
.end method

.method public final getResourcesFile()Ljava/io/File;
    .registers 3

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "updated_resources.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public load()V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    new-instance v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter-IA;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->readFromFileLocked()V

    .line 274
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeDrawables(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 167
    :goto_6
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_29

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_25

    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 170
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    goto :goto_25

    :cond_24
    move v5, v1

    :cond_25
    :goto_25
    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_29
    if-nez v3, :cond_2d

    .line 173
    monitor-exit v0

    return v1

    .line 175
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 176
    monitor-exit v0

    return v5

    :catchall_32
    move-exception p0

    .line 177
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public removeStrings(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 247
    :goto_6
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_21

    .line 248
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 249
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v5, v1

    :goto_1d
    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    if-nez v3, :cond_25

    .line 252
    monitor-exit v0

    return v1

    .line 254
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 255
    monitor-exit v0

    return v5

    :catchall_2a
    move-exception p0

    .line 256
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final updateDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .registers 7

    .line 126
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 128
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    .line 132
    invoke-virtual {p3, v1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 p0, 0x0

    .line 133
    monitor-exit v0

    return p0

    .line 135
    :cond_2c
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 136
    monitor-exit v0

    return p0

    :catchall_3a
    move-exception p0

    .line 137
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final updateDrawableForSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .registers 8

    .line 143
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 145
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 148
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 149
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 150
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_33
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/ParcelableResource;

    .line 153
    invoke-virtual {p4, p0}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 p0, 0x0

    .line 154
    monitor-exit v0

    return p0

    .line 156
    :cond_48
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 157
    monitor-exit v0

    return p0

    :catchall_54
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public updateDrawables(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 97
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5a

    .line 98
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableId()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableStyle()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableSource()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyDrawableResource;->getResource()Landroid/app/admin/ParcelableResource;

    move-result-object v6

    const-string v7, "drawableId must be provided."

    .line 103
    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "drawableStyle must be provided."

    .line 104
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "drawableSource must be provided."

    .line 105
    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "ParcelableResource must be provided."

    .line 106
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "UNDEFINED"

    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 109
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v3

    goto :goto_56

    .line 111
    :cond_52
    invoke-virtual {p0, v3, v5, v4, v6}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateDrawableForSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v3

    :goto_56
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5a
    if-nez v2, :cond_5d

    return v0

    .line 118
    :cond_5d
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 119
    :try_start_60
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 120
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_66
    move-exception p0

    .line 121
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public final updateString(Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    .line 233
    invoke-virtual {p2, v1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p0, 0x0

    .line 234
    monitor-exit v0

    return p0

    .line 236
    :cond_14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 237
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 238
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public updateStrings(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 212
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyStringResource;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyStringResource;->getStringId()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyStringResource;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyStringResource;->getResource()Landroid/app/admin/ParcelableResource;

    move-result-object v4

    const-string/jumbo v5, "stringId must be provided."

    .line 216
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "ParcelableResource must be provided."

    .line 217
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateString(Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_30
    if-nez v2, :cond_33

    return v0

    .line 224
    :cond_33
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 225
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 226
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_3c
    move-exception p0

    .line 227
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final write()V
    .registers 3

    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Writing updated resources to file."

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter-IA;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeToFileLocked()V

    return-void
.end method
