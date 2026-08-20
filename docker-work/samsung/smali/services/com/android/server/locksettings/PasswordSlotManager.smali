.class public Lcom/android/server/locksettings/PasswordSlotManager;
.super Ljava/lang/Object;
.source "PasswordSlotManager.java"


# static fields
.field public static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field public static final SLOT_MAP_DIR:Ljava/lang/String; = "/metadata/password_slots"

.field public static final TAG:Ljava/lang/String; = "PasswordSlotManager"


# instance fields
.field public mActiveSlots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDebugString:Ljava/lang/String;

.field public mSlotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ensureSlotMapLoaded()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 200
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->loadSlotMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    .line 201
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mActiveSlots:Ljava/util/Set;

    if-eqz v0, :cond_14

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mActiveSlots:Ljava/util/Set;

    :cond_14
    return-void
.end method

.method public getDebugString()Ljava/lang/String;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mDebugString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mDebugString:Ljava/lang/String;

    return-object v0
.end method

.method public getGsiImageNumber()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo p0, "ro.gsid.image_running"

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getMode()Ljava/lang/String;
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getGsiImageNumber()I

    move-result p0

    if-lez p0, :cond_19

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string/jumbo p0, "host"

    return-object p0
.end method

.method public getSlotMapDir()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "/metadata/password_slots"

    return-object p0
.end method

.method public final getSlotMapFile()Ljava/io/File;
    .registers 2

    .line 161
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapDir()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "slot_map"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getUsedSlots()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 157
    iget-object p0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final loadSlotMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapFile()Ljava/io/File;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 189
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_21

    .line 190
    :try_start_f
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->loadSlotMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 191
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_21

    return-object p0

    :catchall_17
    move-exception p0

    .line 189
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    :try_start_1d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    const-string v0, "PasswordSlotManager"

    const-string v1, "Could not load slot map file"

    .line 192
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :cond_29
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public loadSlotMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 175
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 176
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 177
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_31
    return-object p0
.end method

.method public markSlotDeleted(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 143
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_43

    .line 144
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "password slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be deleted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    return-void
.end method

.method public markSlotInUse(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 129
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_43

    .line 130
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "password slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not available"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    return-void
.end method

.method public refreshActiveSlots(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshActiveSlots Called!\nmSlotMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    const-string v2, "    "

    .line 94
    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mDebugString:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_32

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mActiveSlots:Ljava/util/Set;

    return-void

    .line 103
    :cond_32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 110
    :cond_67
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 111
    iget-object v2, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 115
    :cond_7d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    iget-object v1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 119
    :cond_97
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    return-void
.end method

.method public final saveSlotMap()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_5

    return-void

    .line 224
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "PasswordSlotManager"

    if-nez v0, :cond_33

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not saving slot map, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_33
    :try_start_33
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getSlotMapFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_4d

    .line 230
    :try_start_3c
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap(Ljava/io/OutputStream;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_43

    .line 231
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4d

    goto :goto_53

    :catchall_43
    move-exception p0

    .line 229
    :try_start_44
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    const-string v0, "failed to save password slot map"

    .line 232
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    return-void
.end method

.method public saveSlotMap(Ljava/io/OutputStream;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    if-nez v0, :cond_5

    return-void

    .line 213
    :cond_5
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 214
    iget-object p0, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_14

    :cond_34
    const-string p0, ""

    .line 217
    invoke-virtual {v0, p1, p0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
