.class final Lcom/android/i18n/phonenumbers/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
    }
.end annotation


# static fields
.field private static final blacklist ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field static final blacklist DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field static final blacklist MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final blacklist SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto"

.field static final blacklist SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto"

.field private static final blacklist alternateFormatsCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;

.field private static final blacklist shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist shortNumberMetadataRegionCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetMetadataFromSingleFileName(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getMetadataFromSingleFileName(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/android/i18n/phonenumbers/MetadataManager$1;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/MetadataManager$1;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 58
    const-class v0, Lcom/android/i18n/phonenumbers/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->logger:Ljava/util/logging/Logger;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    invoke-static {}, Lcom/android/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->alternateFormatsCountryCodes:Ljava/util/Set;

    .line 76
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    .line 75
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getAlternateFormatsForCountry(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p0, "countryCallingCode"    # I

    .line 81
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->alternateFormatsCountryCodes:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/android/i18n/phonenumbers/MetadataManager;->DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

    const-string v3, "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-static {v0, v1, v3, v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 11
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/MetadataLoader;",
            ")",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    .line 111
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 112
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_9

    .line 113
    return-object v0

    .line 116
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/i18n/phonenumbers/MetadataManager;->getMetadataFromSingleFileName(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_45

    .line 119
    sget-object v3, Lcom/android/i18n/phonenumbers/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "more than one metadata in file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 121
    :cond_45
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 122
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 123
    .local v3, "oldValue":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v3, :cond_57

    move-object v4, v3

    goto :goto_58

    :cond_57
    move-object v4, v0

    :goto_58
    return-object v4
.end method

.method private static blacklist getMetadataFromSingleFileName(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Ljava/util/List;
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/MetadataLoader;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-interface {p1, p0}, Lcom/android/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 187
    .local v0, "source":Ljava/io/InputStream;
    if-eqz v0, :cond_2e

    .line 191
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/MetadataManager;->loadMetadataAndCloseInput(Ljava/io/InputStream;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    move-result-object v1

    .line 192
    .local v1, "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_15

    .line 197
    return-object v2

    .line 195
    :cond_15
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty metadata: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    .end local v1    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p0, "regionCode"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_a
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

    const-string v2, "/com/android/i18n/phonenumbers/data/ShortNumberMetadataProto"

    invoke-static {p0, v0, v2, v1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/MetadataLoader;",
            ")",
            "Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;"
        }
    .end annotation

    .line 175
    .local p0, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    .line 176
    .local v0, "maps":Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;
    if-eqz v0, :cond_9

    .line 177
    return-object v0

    .line 179
    :cond_9
    invoke-static {p1, p2}, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->load(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    return-object v1
.end method

.method static blacklist getSupportedShortNumberRegions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadMetadataAndCloseInput(Ljava/io/InputStream;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 7
    .param p0, "source"    # Ljava/io/InputStream;

    .line 207
    const-string v0, "error closing input stream (ignored)"

    const-string v1, "cannot load/parse metadata"

    const/4 v2, 0x0

    .line 210
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_5
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_2d
    .catchall {:try_start_5 .. :try_end_a} :catchall_2b

    move-object v2, v3

    .line 213
    nop

    .line 214
    :try_start_c
    new-instance v3, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2b

    .line 216
    .local v3, "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :try_start_11
    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_24
    .catchall {:try_start_11 .. :try_end_14} :catchall_2b

    .line 219
    nop

    .line 220
    nop

    .line 223
    nop

    .line 225
    :try_start_17
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 231
    goto :goto_23

    .line 229
    :catch_1b
    move-exception v1

    .line 230
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/i18n/phonenumbers/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :goto_23
    return-object v3

    .line 217
    :catch_24
    move-exception v4

    .line 218
    .local v4, "e":Ljava/io/IOException;
    :try_start_25
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "source":Ljava/io/InputStream;
    throw v5

    .line 222
    .end local v3    # "metadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "source":Ljava/io/InputStream;
    :catchall_2b
    move-exception v1

    goto :goto_34

    .line 211
    :catch_2d
    move-exception v3

    .line 212
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "source":Ljava/io/InputStream;
    throw v4
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_2b

    .line 223
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "source":Ljava/io/InputStream;
    :goto_34
    if-eqz v2, :cond_3a

    .line 225
    :try_start_36
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_3d

    .line 227
    :cond_3a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 231
    :goto_3d
    goto :goto_46

    .line 229
    :catch_3e
    move-exception v3

    .line 230
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/i18n/phonenumbers/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .end local v3    # "e":Ljava/io/IOException;
    :goto_46
    throw v1
.end method
